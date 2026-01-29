#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Function Pointer Signature Injector

JSON에 정의된 fn_name 함수만 정확히 찾아서:
1. 함수 선언/정의에 signature 파라미터 추가
2. 함수 본문에서 fp 할당시 signature 할당 추가
3. 함수 호출시 signature 인자 추가
"""

import json
import re
import glob
from pathlib import Path
from typing import List, Dict, Tuple, Optional


# ==========================================================
# 유틸리티: 괄호 매칭, 공백 스킵
# ==========================================================

def find_matching_paren(s: str, start: int) -> int:
    """start 위치의 '('에 대응하는 ')' 찾기"""
    if start >= len(s) or s[start] != '(':
        return -1
    
    depth = 0
    for i in range(start, len(s)):
        if s[i] == '(':
            depth += 1
        elif s[i] == ')':
            depth -= 1
            if depth == 0:
                return i
    return -1


def skip_whitespace_forward(s: str, i: int) -> int:
    """공백 건너뛰기 (앞으로)"""
    while i < len(s) and s[i].isspace():
        i += 1
    return i


def skip_whitespace_backward(s: str, i: int) -> int:
    """공백 건너뛰기 (뒤로)"""
    while i >= 0 and s[i].isspace():
        i -= 1
    return i


# ==========================================================
# 1단계: fn_name 함수의 선언/정의 찾기
# ==========================================================

def find_function_definition(code: str, fn_name: str) -> List[Tuple[int, int]]:
    """
    fn_name 함수의 선언/정의 위치 찾기
    
    Returns:
        [(start_pos, end_pos), ...] - 함수 선언/정의의 시작과 끝 위치
    """
    results = []
    
    # 함수명 뒤에 ( 가 오는 패턴
    pattern = re.compile(rf'\b{re.escape(fn_name)}\s*\(')
    
    for match in pattern.finditer(code):
        start = match.start()
        open_paren = match.end() - 1
        
        # 괄호 매칭으로 파라미터 끝 찾기
        close_paren = find_matching_paren(code, open_paren)
        if close_paren == -1:
            continue
        
        # ) 다음에 ; 또는 { 가 오면 선언/정의
        j = skip_whitespace_forward(code, close_paren + 1)
        if j < len(code) and code[j] in (';', '{'):
            # 함수 선언/정의 확인: 앞에 타입이 있어야 함
            # 줄 시작 위치 찾기
            line_start = code.rfind('\n', 0, start)
            line_start = 0 if line_start == -1 else line_start + 1
            
            # 함수명 앞의 내용 확인
            before = code[line_start:start].strip()
            
            # 비어있거나, 타입 키워드로 끝나면 함수 선언/정의
            if not before or before.split()[-1] in ['static', 'inline', 'extern', 'int', 'void', 'char', 'double', 'float', 'long', 'short', 'SQLITE_API']:
                results.append((start, close_paren + 1))
    
    return results


# ==========================================================
# 2단계: fn_name 함수의 호출부 찾기
# ==========================================================

def find_function_calls(code: str, fn_name: str, def_positions: List[Tuple[int, int]]) -> List[Tuple[int, int]]:
    """
    fn_name 함수의 호출 위치 찾기 (선언/정의 제외)
    
    Args:
        code: 소스 코드
        fn_name: 함수명
        def_positions: 선언/정의 위치 (제외용)
    
    Returns:
        [(start_pos, end_pos), ...] - 함수 호출의 시작과 끝 위치
    """
    results = []
    pattern = re.compile(rf'\b{re.escape(fn_name)}\s*\(')
    
    for match in pattern.finditer(code):
        start = match.start()
        open_paren = match.end() - 1
        
        # 선언/정의 위치는 제외
        is_definition = False
        for def_start, def_end in def_positions:
            if def_start <= start < def_end:
                is_definition = True
                break
        
        if is_definition:
            continue
        
        # 괄호 매칭
        close_paren = find_matching_paren(code, open_paren)
        if close_paren == -1:
            continue
        
        # 호출 문맥 확인
        # ) 다음에 { 나 ; 가 오면 선언/정의이므로 제외
        j = skip_whitespace_forward(code, close_paren + 1)
        if j < len(code) and code[j] in ('{', ';'):
            # 추가 확인: 앞에 타입 키워드가 있으면 선언
            line_start = code.rfind('\n', 0, start)
            line_start = 0 if line_start == -1 else line_start + 1
            before = code[line_start:start].strip()
            
            if before and any(kw in before.split() for kw in ['static', 'inline', 'extern', 'int', 'void', 'typedef']):
                continue
        
        results.append((start, close_paren + 1))
    
    return results


# ==========================================================
# 3단계: 선언/정의에 signature 파라미터 추가
# ==========================================================

def inject_signature_parameter(code: str, def_pos: Tuple[int, int], fp_name: str, fp_sequence: int) -> str:
    start, end = def_pos
    func_decl = code[start:end]
    
    fp_pattern = re.compile(rf'\(\s*\*\s*{re.escape(fp_name)}\s*\)\s*\([^)]*\)')
    match = fp_pattern.search(func_decl)
    
    if not match:
        return code
    
    fp_end_in_decl = match.end()
    abs_fp_end = start + fp_end_in_decl
    after_fp = func_decl[fp_end_in_decl:]
    
    # 주석 제거
    after_fp_no_comment = re.sub(r'/\*.*?\*/', '', after_fp, flags=re.DOTALL)
    after_fp_no_comment = re.sub(r'//[^\n]*', '', after_fp_no_comment)
    
    # 인덴트 계산
    lines_before = code[:abs_fp_end].split('\n')
    last_line = lines_before[-1]
    indent = len(last_line) - len(last_line.lstrip())
    
    after_fp_stripped = after_fp_no_comment.lstrip()
    has_comma = after_fp_stripped.startswith(',')
    
    # 쉼표 건너뛰기
    skip_length = 0
    if has_comma:
        temp = after_fp
        pos = 0
        
        while pos < len(temp):
            if temp[pos].isspace():
                pos += 1
                continue
            
            if pos + 1 < len(temp) and temp[pos:pos+2] == '/*':
                comment_end = temp.find('*/', pos + 2)
                if comment_end != -1:
                    pos = comment_end + 2
                    continue
                else:
                    break
            
            if pos + 1 < len(temp) and temp[pos:pos+2] == '//':
                newline = temp.find('\n', pos + 2)
                if newline != -1:
                    pos = newline + 1
                    continue
                else:
                    break
            
            if temp[pos] == ',':
                skip_length = pos + 1
                break
            
            break
    
    # 다른 파라미터 확인
    remaining = after_fp_stripped
    if has_comma:
        remaining = remaining[1:].lstrip()
    
    has_more_params = False
    if remaining and not remaining.startswith(')'):
        sig_pattern = re.match(r'int\s+\*?\s*\w+_signature\s*[,)]', remaining)
        if not sig_pattern:
            has_more_params = True
        else:
            after_sig = remaining[sig_pattern.end()-1:].lstrip()
            if after_sig.startswith(','):
                after_sig = after_sig[1:].lstrip()
            if after_sig and not after_sig.startswith(')'):
                has_more_params = not re.match(r'int\s+\*?\s*\w+_signature', after_sig)
    
    # signature 라인 생성
    sig_line = '\n' + ' ' * indent + f"int {fp_name}_signature"
    
    if has_more_params:
        sig_line += ','
    
    # ✅ 수정: 항상 쉼표 추가, skip_length로 기존 쉼표 건너뛰기
    new_code = code[:abs_fp_end] + ',' + sig_line + code[abs_fp_end + skip_length:]
    
    return new_code


# # ==========================================================
# # 5단계: 호출부에 signature 인자 추가
# # ==========================================================

# def split_arguments(args_str: str) -> List[str]:
#     """함수 호출 인자 분리 (괄호 고려)"""
#     args = []
#     current = []
#     depth = 0
    
#     for ch in args_str:
#         if ch == '(':
#             depth += 1
#         elif ch == ')':
#             depth -= 1
#         elif ch == ',' and depth == 0:
#             args.append(''.join(current).strip())
#             current = []
#             continue
#         current.append(ch)
    
#     if current:
#         args.append(''.join(current).strip())
    
#     return args


# def normalize_argument(arg: str) -> str:
#     """인자에서 식별자 추출"""
#     s = arg.strip()
    
#     # & 제거
#     if s.startswith('&'):
#         s = s[1:].strip()
    
#     # 캐스트 제거 (간단한 버전)
#     s = re.sub(r'\([^)]+\)\s*', '', s)
    
#     # 마지막 식별자 추출
#     match = re.search(r'[A-Za-z_]\w*$', s)
#     if match:
#         return match.group(0)
    
#     return s


# def inject_signature_argument(code: str, call_pos: Tuple[int, int], fp_name: str, fp_sequence: int, assigned_fn: List[str]) -> str:
#     """
#     함수 호출에 signature 인자 추가
    
#     Args:
#         code: 소스 코드
#         call_pos: 호출 위치 (start, end)
#         fp_name: 함수 포인터 이름
#         fp_sequence: 함수 포인터 위치 (1-based)
#         assigned_fn: 할당 가능한 함수 목록
    
#     Returns:
#         수정된 코드
#     """
#     start, end = call_pos
#     call_str = code[start:end]
    
#     # 괄호 찾기
#     open_paren = call_str.find('(')
#     if open_paren == -1:
#         return code
    
#     close_paren = find_matching_paren(call_str, open_paren)
#     if close_paren == -1:
#         return code
    
#     # 인자 추출
#     args_str = call_str[open_paren + 1:close_paren]
#     args = split_arguments(args_str)
    
#     if fp_sequence <= 0 or fp_sequence > len(args):
#         return code
    
#     # fp_sequence번째 인자
#     fp_arg = normalize_argument(args[fp_sequence - 1])
    
#     # signature 인자 결정
#     if fp_arg == fp_name:
#         sig_arg = f"{fp_name}_signature"
#     elif fp_arg in assigned_fn:
#         sig_arg = f"{fp_name}_signatures[{fp_name}_{fp_arg}]"
#     elif fp_arg in ['0']:
#         sig_arg = f"{fp_name}_signatures[{fp_name}_0]"
#     elif fp_arg in ['NULL']:
#         sig_arg = f"{fp_name}_signatures[{fp_name}_NULL]"
#     else:
#         sig_arg = f"{fp_arg}_signature"
    
#     # 닫는 괄호 전에 signature 추가
#     abs_close = start + close_paren
    
#     # 콤마와 공백 추가
#     new_code = code[:abs_close] + ', ' + sig_arg + code[abs_close:]
    
#     return new_code


# ==========================================================
# 메인 처리
# ==========================================================

def process_single_entry(code: str, entry: Dict) -> str:
    """하나의 JSON 엔트리 처리"""
    fn_name = entry['fn_name']
    fp_name = entry['fp_name']
    fp_sequence = entry['fp_sequence']
    assigned_fn = entry.get('assigned_fn', [])
    
    # 1단계: 함수 선언/정의 찾기
    def_positions = find_function_definition(code, fn_name)
    
    if not def_positions:
        return code
    
    # # 2단계: 함수 호출 찾기
    # call_positions = find_function_calls(code, fn_name, def_positions)
    
    # 3단계: 선언/정의에 signature 추가 (역순)
    for def_pos in reversed(def_positions):
        code = inject_signature_parameter(code, def_pos, fp_name, fp_sequence)
    
    # # 4단계: 함수 본문에 signature 할당 추가 (역순)
    # for def_pos in reversed(def_positions):
    #     code = inject_signature_assignment(code, def_pos, fn_name, fp_name)
    
    # # 5단계: 호출부에 signature 인자 추가 (역순)
    # for call_pos in reversed(call_positions):
    #     code = inject_signature_argument(code, call_pos, fp_name, fp_sequence, assigned_fn)
    
    return code


def process_file(filepath: str, json_data: List[Dict]) -> Tuple[str, bool]:
    """파일 처리"""
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        code = f.read()
    
    original = code
    
    for entry in json_data:
        code = process_single_entry(code, entry)
    
    changed = (code != original)
    return code, changed


# ==========================================================
# 파일 검색 및 메인
# ==========================================================

def find_source_files(source_dir: str) -> List[Path]:
    """소스 파일 검색"""
    patterns = [
        f"{source_dir}/*.c",
        f"{source_dir}/*.h",
        f"{source_dir}/*.in",
        f"{source_dir}/**/*.c",
        f"{source_dir}/**/*.h",
        f"{source_dir}/**/*.in"
    ]
    
    files = []
    for pattern in patterns:
        files.extend(glob.glob(pattern, recursive=True))
    
    return [Path(f) for f in files]


def show_diff_preview(original: str, modified: str, filepath: str, max_lines: int = 30):
    """변경사항 미리보기"""
    import difflib
    
    orig_lines = original.splitlines(keepends=True)
    mod_lines = modified.splitlines(keepends=True)
    
    diff = list(difflib.unified_diff(
        orig_lines, mod_lines,
        fromfile=f"a/{filepath}",
        tofile=f"b/{filepath}",
        lineterm=''
    ))
    
    if not diff:
        return
    
    print(f"\n  Preview (first {max_lines} lines):")
    for i, line in enumerate(diff[:max_lines]):
        if line.startswith('+++') or line.startswith('---'):
            print(f"  \033[1m{line}\033[0m")
        elif line.startswith('+'):
            print(f"  \033[32m{line}\033[0m")
        elif line.startswith('-'):
            print(f"  \033[31m{line}\033[0m")
        elif line.startswith('@@'):
            print(f"  \033[36m{line}\033[0m")
        else:
            print(f"  {line}")
    
    if len(diff) > max_lines:
        print(f"  ... ({len(diff) - max_lines} more lines)")


def main():
    import argparse
    
    parser = argparse.ArgumentParser(description="Inject function pointer signatures")
    parser.add_argument("--json", default="filled_parsing_resolved.json", help="Input JSON file")
    parser.add_argument("--source-dir", default="../", help="Source directory")
    parser.add_argument("--dry-run", action="store_true", help="Preview changes only")
    
    args = parser.parse_args()
    
    # JSON 로드
    with open(args.json, 'r', encoding='utf-8') as f:
        json_data = json.load(f)
    
    print(f"📖 Loaded {len(json_data)} entries")
    
    # 소스 파일 검색
    files = find_source_files(args.source_dir)
    print(f"🔍 Found {len(files)} source files")
    
    if args.dry_run:
        print("\n🔍 DRY RUN MODE")
    
    modified_count = 0
    
    for filepath in files:
        print(f"\n{'='*60}")
        print(f"📄 {filepath.relative_to(args.source_dir) if str(filepath).startswith(args.source_dir) else filepath.name}")
        print(f"{'='*60}")
        
        try:
            original = open(filepath, 'r', encoding='utf-8', errors='ignore').read()
            modified, changed = process_file(str(filepath), json_data)
            
            if not changed:
                print("  ℹ️  No changes")
                continue
            
            if args.dry_run:
                show_diff_preview(original, modified, str(filepath))
            else:
                with open(filepath, 'w', encoding='utf-8') as f:
                    f.write(modified)
                print("  ✅ Modified")
                modified_count += 1
        
        except Exception as e:
            print(f"  ❌ Error: {e}")
    
    print(f"\n{'='*60}")
    print(f"📊 Summary: {modified_count} files modified")
    print(f"{'='*60}")


if __name__ == "__main__":
    main()