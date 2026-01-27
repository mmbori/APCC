#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import json
import os
import re
import sys
from collections import defaultdict, OrderedDict


CTRL_KEYWORDS = {"if", "for", "while", "switch", "return", "sizeof", "catch"}
IDENT = r"[A-Za-z_]\w*"

# 함수 포인터 패턴: (*name)(...)
# 개선: **ptr, ***ptr와 구분하기 위해 정확히 (*name) 형태만 매칭
# 단, (**name)은 더블 포인터이므로 제외
RE_FUNC_PTR_NAME = re.compile(
    r"\(\s*\*\s*(?P<n>" + IDENT + r")\s*\)\s*\("
)

CALL_NAME_RE = re.compile(r"\b(?P<n>" + IDENT + r")\s*\(")


def iter_target_files(source_dir: str):
    """
    프로젝트 트리를 순회하여 .c, .h, .in 파일 선택
    """
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in")):
                yield os.path.join(dirpath, fn)


def strip_comments_strings_and_directives(code: str) -> str:
    """
    주석, 문자열, 전처리 지시자 제거
    
    개선사항:
    - #define, #include 등 전처리 지시자 제거
    - IOTRACE(A) 같은 매크로가 함수로 인식되는 것 방지
    """
    res, i, n = [], 0, len(code)
    
    while i < n:
        c = code[i]
        
        # 전처리 지시자 제거 (#define, #include, #ifdef 등)
        if c == '#':
            j = i + 1
            # 백슬래시 연속 처리 (멀티라인 매크로)
            while j < n:
                if code[j] == '\\' and j + 1 < n and code[j + 1] == '\n':
                    j += 2  # 다음 줄로 연속
                    continue
                if code[j] == '\n':
                    j += 1
                    break
                j += 1
            res.append(' ')  # 공백으로 치환
            i = j
            continue
        
        # 한 줄 주석 //
        if c == '/' and i + 1 < n and code[i + 1] == '/':
            j = i + 2
            while j < n and code[j] != '\n':
                j += 1
            res.append(' ')
            i = j
            
        # 블록 주석 /* */
        elif c == '/' and i + 1 < n and code[i + 1] == '*':
            j = i + 2
            while j + 1 < n and not (code[j] == '*' and code[j + 1] == '/'):
                j += 1
            i = min(j + 2, n)
            res.append(' ')
            
        # 문자열 "..."
        elif c == '"':
            res.append(' ')
            i += 1
            esc = False
            while i < n:
                if not esc and code[i] == '"':
                    i += 1
                    break
                esc = (not esc and code[i] == '\\')
                i += 1
                
        # 문자 리터럴 '...'
        elif c == "'":
            res.append(' ')
            i += 1
            esc = False
            while i < n:
                if not esc and code[i] == "'":
                    i += 1
                    break
                esc = (not esc and code[i] == '\\')
                i += 1
        else:
            res.append(c)
            i += 1
            
    return ''.join(res)


def last_identifier_before(s: str, pos: int) -> str | None:
    """괄호 앞의 식별자 추출"""
    j = pos - 1
    while j >= 0 and s[j].isspace():
        j -= 1
    end = j + 1
    while j >= 0 and (s[j].isalnum() or s[j] == '_'):
        j -= 1
    start = j + 1
    if start < end:
        name = s[start:end]
        if name and name not in CTRL_KEYWORDS:
            return name
    return None


def find_matching_paren(s: str, open_idx: int) -> int:
    """매칭되는 닫는 괄호 찾기"""
    depth = 0
    for i in range(open_idx, len(s)):
        if s[i] == '(':
            depth += 1
        elif s[i] == ')':
            depth -= 1
            if depth == 0:
                return i
    return -1


def split_params(params: str) -> list[str]:
    """파라미터 문자열을 개별 파라미터로 분리 (중첩 괄호 고려)"""
    parts, buf, depth = [], [], 0
    for ch in params:
        if ch == '(':
            depth += 1
            buf.append(ch)
        elif ch == ')':
            depth = max(depth - 1, 0)
            buf.append(ch)
        elif ch == ',' and depth == 0:
            parts.append(''.join(buf).strip())
            buf = []
        else:
            buf.append(ch)
    if buf:
        parts.append(''.join(buf).strip())
    return [p for p in parts if p]


def is_valid_function_pointer_param(param: str) -> bool:
    """
    파라미터가 진짜 함수 포인터인지 검증
    
    거짓 양성 제거:
    - char **ppStmt (더블 포인터) ✗
    - sqlite3_stmt **ptr (더블 포인터) ✗
    - void (*callback)(...) (함수 포인터) ✓
    """
    # (*name)(...) 패턴 확인
    m = RE_FUNC_PTR_NAME.search(param)
    if not m:
        return False
    
    # (*name) 앞에 추가 *가 있는지 확인 (**name은 더블 포인터)
    ptr_start = param.find('(*')
    if ptr_start > 0:
        # (*name) 바로 앞 문자 확인
        before = param[:ptr_start].rstrip()
        if before.endswith('*'):
            # **name 형태는 더블 포인터이므로 제외
            return False
    
    return True


def looks_like_function_decl_or_def(header: str) -> bool:
    """함수 선언/정의인지 확인"""
    p = header.find('(')
    if p == -1:
        return False
    q = find_matching_paren(header, p)
    if q == -1:
        return False
    fname = last_identifier_before(header, p)
    if not fname:
        return False
    tail = header[q + 1:].strip()
    return tail.startswith(';') or tail.startswith('{')


def iter_function_headers(clean_code: str):
    """함수 선언/정의 헤더 추출"""
    i, n = 0, len(clean_code)
    while i < n:
        p = clean_code.find('(', i)
        if p == -1:
            break
        start = clean_code.rfind('\n', 0, p)
        start = 0 if start < 0 else start + 1
        q = find_matching_paren(clean_code, p)
        if q == -1:
            i = p + 1
            continue
        j = q + 1
        while j < n and clean_code[j].isspace():
            j += 1
        if j < n and clean_code[j] in [';', '{']:
            header = clean_code[start:j + 1]
            if looks_like_function_decl_or_def(header):
                yield header
            i = j + 1
        else:
            i = q + 1


def extract_fn_name_and_params(header: str) -> tuple[str | None, str | None]:
    """함수 이름과 파라미터 추출"""
    p = header.find('(')
    if p == -1:
        return None, None
    q = find_matching_paren(header, p)
    if q == -1:
        return None, None
    fname = last_identifier_before(header, p)
    params = header[p + 1:q]
    return fname, params


def get_original_function_declaration(
    code: str,
    fn_name: str,
    fp_name: str
) -> str | None:
    """
    원본 코드에서 함수 선언/정의 찾기
    
    Returns:
        함수의 원본 선언부 (여러 줄일 수 있음)
    """
    # 함수 이름으로 대략적인 위치 찾기
    pattern = rf'\b{re.escape(fn_name)}\s*\('
    
    for match in re.finditer(pattern, code):
        start_pos = match.start()
        
        # 함수 시작 위치 찾기 (여러 줄 위로 올라가기)
        line_start = code.rfind('\n', max(0, start_pos - 500), start_pos)
        if line_start == -1:
            line_start = 0
        else:
            line_start += 1
        
        # 괄호 매칭으로 끝 위치 찾기
        paren_start = match.start() + len(fn_name)
        while paren_start < len(code) and code[paren_start] != '(':
            paren_start += 1
        
        if paren_start >= len(code):
            continue
            
        paren_end = find_matching_paren(code, paren_start)
        if paren_end == -1:
            continue
        
        # ; 또는 { 찾기
        end_pos = paren_end + 1
        while end_pos < len(code) and code[end_pos].isspace():
            end_pos += 1
        
        if end_pos < len(code) and code[end_pos] in [';', '{']:
            # 함수 포인터 파라미터가 포함되어 있는지 확인
            decl = code[line_start:end_pos + 1]
            if fp_name in decl and '(*' in decl:
                return decl.strip()
    
    return None


def split_call_args(arg_str: str) -> list[str]:
    """함수 호출 인자 분리"""
    return split_params(arg_str)


def try_collect_assigned_functions_from_calls(
    clean_code: str,
    fp_map: dict[str, list[tuple[str, int]]]
) -> dict[tuple[str, int, str], set[str]]:
    """함수 호출 사이트에서 전달된 함수 심볼 수집"""
    assigned = defaultdict(set)
    i, n = 0, len(clean_code)
    
    while i < n:
        m = CALL_NAME_RE.search(clean_code, i)
        if not m:
            break
        fname = m.group("n")
        if fname in CTRL_KEYWORDS:
            i = m.end()
            continue
            
        p = clean_code.find('(', m.end() - 1)
        if p == -1:
            i = m.end()
            continue
            
        q = find_matching_paren(clean_code, p)
        if q == -1:
            i = p + 1
            continue

        if fname in fp_map:
            args = split_call_args(clean_code[p + 1:q])
            for (fp_name, seq) in fp_map[fname]:
                if 1 <= seq <= len(args):
                    a = args[seq - 1].strip()
                    m2 = re.match(r"^\&?\s*(?P<sym>" + IDENT + r")\s*$", a)
                    if m2:
                        assigned[(fname, seq, fp_name)].add(m2.group("sym"))
        i = q + 1
        
    return assigned


def scan_with_immediate_dedup(source_dir: str) -> OrderedDict:
    """
    함수 포인터 파라미터 스캔 (개선 버전)
    
    개선사항:
    - 전처리 지시자 제거 (#define IOTRACE(A) 같은 매크로 제거)
    - 더블 포인터 (**ptr) 필터링
    - 원본 선언부 저장
    """
    acc: OrderedDict[tuple[str, str], dict] = OrderedDict()
    
    for path in iter_target_files(source_dir):
        try:
            with open(path, 'r', encoding='utf-8', errors='ignore') as f:
                original_code = f.read()
        except Exception:
            continue
            
        clean = strip_comments_strings_and_directives(original_code)
        
        for header in iter_function_headers(clean):
            fn_name, params = extract_fn_name_and_params(header)
            if not fn_name or not params:
                continue
                
            for idx, param in enumerate(split_params(params), start=1):
                # 함수 포인터 패턴 확인
                if not is_valid_function_pointer_param(param):
                    continue
                    
                m = RE_FUNC_PTR_NAME.search(param)
                if not m:
                    continue
                    
                fp_name = m.group("n")
                key = (fn_name, fp_name)
                
                if key not in acc:
                    # 원본 선언부 찾기
                    original_decl = get_original_function_declaration(
                        original_code, fn_name, fp_name
                    )
                    
                    acc[key] = {
                        "fp_sequence": idx,
                        "assigned_fn": set(),
                        "declaration": original_decl,
                        "file_path": os.path.basename(path),
                    }
                else:
                    # 중복 발견 시 더 작은 sequence 사용
                    if idx < acc[key]["fp_sequence"]:
                        acc[key]["fp_sequence"] = idx
                        
    return acc


def main():
    ap = argparse.ArgumentParser(
        description="Find function-pointer parameters in SQLite source files."
    )
    ap.add_argument(
        "source_dir",
        default="../",
        help="Project root directory"
    )
    ap.add_argument(
        "-o", "--out",
        default="tmp_parsing.json",
        help="Output JSON file path (default: tmp_parsing.json)"
    )
    ap.add_argument(
        "--resolve-assigned",
        action="store_true",
        help="Collect candidate functions assigned to fp parameters"
    )
    args = ap.parse_args()

    # 함수 포인터 파라미터 스캔
    acc = scan_with_immediate_dedup(args.source_dir)

    # 할당된 함수 수집 (옵션)
    if args.resolve_assigned and acc:
        fn_to_fpseqs: dict[str, list[tuple[str, int]]] = defaultdict(list)
        for (fn_name, fp_name), v in acc.items():
            fn_to_fpseqs[fn_name].append((fp_name, v["fp_sequence"]))

        aggregate = defaultdict(set)
        for path in iter_target_files(args.source_dir):
            try:
                with open(path, 'r', encoding='utf-8', errors='ignore') as f:
                    code = f.read()
            except Exception:
                continue
            clean = strip_comments_strings_and_directives(code)
            part = try_collect_assigned_functions_from_calls(clean, fn_to_fpseqs)
            for k, v in part.items():
                aggregate[k].update(v)

        for (fn_name, fp_name), v in acc.items():
            key3 = (fn_name, v["fp_sequence"], fp_name)
            if key3 in aggregate:
                v["assigned_fn"].update(aggregate[key3])

    # JSON 출력 준비
    out = []
    for (fn_name, fp_name), v in acc.items():
        entry = {
            "fp_name": fp_name,
            "fp_sequence": v["fp_sequence"],
            "fn_name": fn_name,
            "assigned_fn": sorted(v["assigned_fn"])
        }
        
        # 원본 선언부 추가
        if v.get("declaration"):
            # 여러 줄을 하나의 문자열로 (읽기 쉽게)
            decl_lines = v["declaration"].split('\n')
            entry["line"] = [line.strip() for line in decl_lines if line.strip()]
        
        # 파일 경로 추가
        if v.get("file_path"):
            entry["file"] = v["file_path"]
            
        out.append(entry)
        
    out.sort(key=lambda r: (r["fn_name"], r["fp_sequence"], r["fp_name"]))

    # JSON 저장
    text = json.dumps(out, indent=2, ensure_ascii=False)

    if args.out:
        with open(args.out, "w", encoding="utf-8") as f:
            f.write(text)
            f.write("\n")
        print(f"✓ Saved to: {args.out}")
        print(f"  Total entries: {len(out)}")
    else:
        sys.stdout.write(text + "\n")


if __name__ == "__main__":
    main()