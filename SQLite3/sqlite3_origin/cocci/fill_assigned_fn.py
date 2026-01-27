#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse, json, os, re, sys
from collections import defaultdict

ALLOWED_SUBDIRS = {"src", "ext"}
ALLOWED_EXTS = {".c", ".h", ".in"}

IDENT = r"[A-Za-z_]\w*"
CALL_NAME_RE = re.compile(r"\b(?P<name>" + IDENT + r")\s*\(")

# -------- 파일 탐색 --------
def iter_target_files(source_dir: str):
    for sub in ALLOWED_SUBDIRS:
        root = os.path.join(source_dir, sub)
        if not os.path.isdir(root):
            continue
        for dirpath, _, filenames in os.walk(root):
            for fn in filenames:
                _, ext = os.path.splitext(fn)
                if ext in ALLOWED_EXTS:
                    yield os.path.join(dirpath, fn)

# -------- 전처리: 주석/문자열 제거 --------
def strip_comments_and_strings(code: str) -> str:
    out, i, n = [], 0, len(code)
    while i < n:
        c = code[i]
        if c == '/' and i + 1 < n and code[i+1] == '/':  # //
            j = i + 2
            while j < n and code[j] != '\n': j += 1
            out.append(' '); i = j
        elif c == '/' and i + 1 < n and code[i+1] == '*':  # /* */
            j = i + 2
            while j + 1 < n and not (code[j] == '*' and code[j+1] == '/'): j += 1
            i = min(j + 2, n); out.append(' ')
        elif c == '"':  # string
            out.append(' '); i += 1
            esc = False
            while i < n:
                if not esc and code[i] == '"': i += 1; break
                esc = (not esc and code[i] == '\\') or (esc and code[i] != '\\')
                i += 1
        elif c == "'":  # char
            out.append(' '); i += 1
            esc = False
            while i < n:
                if not esc and code[i] == "'": i += 1; break
                esc = (not esc and code[i] == '\\') or (esc and code[i] != '\\')
                i += 1
        else:
            out.append(c); i += 1
    return ''.join(out)

# -------- 괄호 유틸 --------
def find_matching_paren(s: str, open_idx: int) -> int:
    depth = 0
    for i in range(open_idx, len(s)):
        if s[i] == '(': depth += 1
        elif s[i] == ')':
            depth -= 1
            if depth == 0: return i
    return -1

def split_top_level_args(arg_str: str) -> list[str]:
    parts, buf, depth = [], [], 0
    for ch in arg_str:
        if ch == '(':
            depth += 1; buf.append(ch)
        elif ch == ')':
            depth = max(0, depth - 1); buf.append(ch)
        elif ch == ',' and depth == 0:
            parts.append(''.join(buf).strip()); buf = []
        else:
            buf.append(ch)
    if buf: parts.append(''.join(buf).strip())
    return [p for p in parts if p]

# -------- 블록 깊이( { } ) 계산 --------
def compute_brace_depth(s: str):
    depth = 0
    depths = [0] * len(s)
    for i, ch in enumerate(s):
        if ch == '{':
            depth += 1
            depths[i] = depth
        elif ch == '}':
            depths[i] = depth
            depth = max(0, depth - 1)
        else:
            depths[i] = depth
    return depths

# -------- 인자 정규화 --------
CAST_PREFIX_RE = re.compile(r'^\s*\((?:[^)(]|\([^)(]*\))*\)\s*')
def normalize_arg_token(tok: str) -> str:
    s = tok.strip()
    # (type) cast 제거(최대 3회)
    for _ in range(3):
        m = CAST_PREFIX_RE.match(s)
        if not m: break
        s = s[m.end():].lstrip()
    # 전체 괄호 한 겹 벗기기
    if s.startswith('(') and s.endswith(')') and find_matching_paren(s, 0) == len(s) - 1:
        s = s[1:-1].strip()
    # & 제거
    if s.startswith('&'):
        s = s[1:].lstrip()
    # 0/NULL 정규화
    if re.fullmatch(r'0+[uUlL]*', s): return '0'
    if re.fullmatch(r'NULL|null|nullptr', s): return 'NULL'
    # 식별자면 그대로
    if re.fullmatch(IDENT, s): return s
    # 복잡식은 원문
    return s

# -------- 호출 판정: 블록 깊이 기반 --------
def is_call_by_context(s: str, name_start: int, open_paren_idx: int, close_paren_idx: int, depths) -> bool:
    # 정의부: ) 뒤 첫 non-space가 '{' 면 정의
    j = close_paren_idx + 1
    while j < len(s) and s[j].isspace(): j += 1
    if j < len(s) and s[j] == '{':
        return False  # 함수 정의

    # 전역(깊이 0)에서의 name(...) ; 는 선언/프로토타입일 확률 높음 → 호출 아님
    depth_here = depths[name_start] if 0 <= name_start < len(depths) else 0
    if depth_here == 0:
        # ) 다음이 ';' 또는 nothing → 선언/프로토타입으로 본다
        if j >= len(s) or s[j] == ';':
            return False

    # 그 외는 호출로 간주
    return True

# -------- 파일 하나에서 (fn, fp) -> set(assigned) 수집 --------
def collect_assigned_in_file(clean_code: str, fn_to_positions: dict[str, list[tuple[str, int]]], debug_fns: set[str]):
    out = defaultdict(set)
    depths = compute_brace_depth(clean_code)
    i, n = 0, len(clean_code)

    while i < n:
        m = CALL_NAME_RE.search(clean_code, i)
        if not m: break
        fname = m.group("name")

        p = clean_code.find('(', m.end() - 1)
        if p == -1: i = m.end(); continue
        q = find_matching_paren(clean_code, p)
        if q == -1: i = p + 1; continue

        is_call = is_call_by_context(clean_code, m.start('name'), p, q, depths)
        if not is_call:
            i = q + 1
            continue

        if fname in fn_to_positions:
            args = split_top_level_args(clean_code[p+1:q])
            for (fp_name, seq) in fn_to_positions[fname]:
                if 1 <= seq <= len(args):
                    norm = normalize_arg_token(args[seq - 1])
                    out[(fname, fp_name)].add(norm)

        i = q + 1

    # 디버그
    if debug_fns:
        for fn in debug_fns:
            pass  # 필요하면 로그 추가 가능
    return out

# -------- 메인 --------
def main():
    ap = argparse.ArgumentParser(description="Fill assigned_fn using brace-depth based call detection.")
    ap.add_argument("source_dir", help="Project root containing 'src' and/or 'ext'.")
    ap.add_argument("-i", "--in", dest="infile", required=True, help="Input JSON (deduped by (fn_name, fp_name)).")
    ap.add_argument("-o", "--out", dest="outfile", required=True, help="Output JSON path (overwrite).")
    ap.add_argument("--debug-fn", action="append", default=[], help="Function name(s) to debug (repeatable).")
    args = ap.parse_args()

    # 입력 JSON 로드
    try:
        with open(args.infile, "r", encoding="utf-8") as f:
            records = json.load(f)
    except Exception as e:
        print(f"[ERR] read input JSON: {e}", file=sys.stderr); sys.exit(1)

    fn_to_positions = defaultdict(list)
    order, pos_of = [], {}
    for idx, r in enumerate(records):
        fn, fp, seq = r["fn_name"], r["fp_name"], int(r["fp_sequence"])
        fn_to_positions[fn].append((fp, seq))
        order.append((fn, fp))
        pos_of[(fn, fp)] = idx
        r["assigned_fn"] = []  # 초기화

    debug_fns = set(args.debug_fn or [])

    aggregate = defaultdict(set)
    for path in iter_target_files(args.source_dir):
        try:
            with open(path, "r", encoding="utf-8", errors="ignore") as f:
                code = f.read()
        except Exception:
            continue
        clean = strip_comments_and_strings(code)
        part = collect_assigned_in_file(clean, fn_to_positions, debug_fns)
        for k, v in part.items():
            aggregate[k].update(v)

    for key in order:
        idx = pos_of[key]
        records[idx]["assigned_fn"] = sorted(aggregate.get(key, set()))

    with open(args.outfile, "w", encoding="utf-8") as f:
        json.dump(records, f, indent=2, ensure_ascii=False); f.write("\n")

if __name__ == "__main__":
    main()
