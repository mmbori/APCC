#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import json
import os
import re
import sys
from collections import defaultdict, OrderedDict

ALLOWED_SUBDIRS = {"src", "ext"}
ALLOWED_EXTS = {".c", ".h", ".in"}

CTRL_KEYWORDS = {"if", "for", "while", "switch", "return", "sizeof", "catch"}
IDENT = r"[A-Za-z_]\w*"

# (*name)(...) 꼴에서 name 추출
RE_FUNC_PTR_NAME = re.compile(r"\(\s*\*+\s*(?P<name>" + IDENT + r")\s*\)\s*\(")
CALL_NAME_RE = re.compile(r"\b(?P<name>" + IDENT + r")\s*\(")

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

def strip_comments_and_strings(code: str) -> str:
    res, i, n = [], 0, len(code)
    while i < n:
        c = code[i]
        if c == '/' and i + 1 < n and code[i+1] == '/':
            j = i + 2
            while j < n and code[j] != '\n':
                j += 1
            res.append(' '); i = j
        elif c == '/' and i + 1 < n and code[i+1] == '*':
            j = i + 2
            while j + 1 < n and not (code[j] == '*' and code[j+1] == '/'):
                j += 1
            i = min(j + 2, n)
            res.append(' ')
        elif c == '"':
            res.append(' '); i += 1
            esc = False
            while i < n:
                if not esc and code[i] == '"':
                    i += 1; break
                esc = (not esc and code[i] == '\\') or (esc and code[i] != '\\')
                i += 1
        elif c == "'":
            res.append(' '); i += 1
            esc = False
            while i < n:
                if not esc and code[i] == "'":
                    i += 1; break
                esc = (not esc and code[i] == '\\') or (esc and code[i] != '\\')
                i += 1
        else:
            res.append(c); i += 1
    return ''.join(res)

def last_identifier_before(s: str, pos: int) -> str | None:
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
    parts, buf, depth = [], [], 0
    for ch in params:
        if ch == '(':
            depth += 1; buf.append(ch)
        elif ch == ')':
            depth = max(depth - 1, 0); buf.append(ch)
        elif ch == ',' and depth == 0:
            parts.append(''.join(buf).strip()); buf = []
        else:
            buf.append(ch)
    if buf:
        parts.append(''.join(buf).strip())
    return [p for p in parts if p]

def looks_like_function_decl_or_def(header: str) -> bool:
    p = header.find('(')
    if p == -1: return False
    q = find_matching_paren(header, p)
    if q == -1: return False
    fname = last_identifier_before(header, p)
    if not fname: return False
    tail = header[q+1:].strip()
    return tail.startswith(';') or tail.startswith('{')

def iter_function_headers(clean_code: str):
    i, n = 0, len(clean_code)
    while i < n:
        p = clean_code.find('(', i)
        if p == -1: break
        start = clean_code.rfind('\n', 0, p)
        start = 0 if start < 0 else start + 1
        q = find_matching_paren(clean_code, p)
        if q == -1:
            i = p + 1; continue
        j = q + 1
        while j < n and clean_code[j].isspace():
            j += 1
        if j < n and clean_code[j] in [';', '{']:
            header = clean_code[start:j+1]
            if looks_like_function_decl_or_def(header):
                yield header
            i = j + 1
        else:
            i = q + 1

def extract_fn_name_and_params(header: str) -> tuple[str | None, str | None]:
    p = header.find('(')
    if p == -1: return None, None
    q = find_matching_paren(header, p)
    if q == -1: return None, None
    fname = last_identifier_before(header, p)
    params = header[p+1:q]
    return fname, params

def split_call_args(arg_str: str) -> list[str]:
    return split_params(arg_str)

def try_collect_assigned_functions_from_calls(clean_code: str, fp_map: dict[str, list[tuple[str, int]]]) -> dict[tuple[str, int, str], set[str]]:
    assigned = defaultdict(set)
    i, n = 0, len(clean_code)
    while i < n:
        m = CALL_NAME_RE.search(clean_code, i)
        if not m: break
        fname = m.group("name")
        if fname in CTRL_KEYWORDS:
            i = m.end(); continue
        p = clean_code.find('(', m.end() - 1)
        if p == -1:
            i = m.end(); continue
        q = find_matching_paren(clean_code, p)
        if q == -1:
            i = p + 1; continue

        if fname in fp_map:
            args = split_call_args(clean_code[p+1:q])
            for (fp_name, seq) in fp_map[fname]:
                if 1 <= seq <= len(args):
                    a = args[seq - 1].strip()
                    m2 = re.match(r"^\&?\s*(?P<sym>" + IDENT + r")\s*$", a)
                    if m2:
                        assigned[(fname, seq, fp_name)].add(m2.group("sym"))
        i = q + 1
    return assigned

# -------- 핵심: 최초 수집부터 (fn_name, fp_name) dedup --------
def scan_with_immediate_dedup(source_dir: str) -> OrderedDict:
    acc: OrderedDict[tuple[str, str], dict] = OrderedDict()
    for path in iter_target_files(source_dir):
        try:
            with open(path, 'r', encoding='utf-8', errors='ignore') as f:
                code = f.read()
        except Exception:
            continue
        clean = strip_comments_and_strings(code)
        for header in iter_function_headers(clean):
            fn_name, params = extract_fn_name_and_params(header)
            if not fn_name or not params:
                continue
            for idx, param in enumerate(split_params(params), start=1):
                m = RE_FUNC_PTR_NAME.search(param)
                if not m: 
                    continue
                fp_name = m.group("name")
                key = (fn_name, fp_name)
                if key not in acc:
                    acc[key] = {
                        "fp_sequence": idx,
                        "assigned_fn": set(),
                    }
                else:
                    if idx < acc[key]["fp_sequence"]:
                        acc[key]["fp_sequence"] = idx
    return acc

def main():
    ap = argparse.ArgumentParser(description="Find function-pointer parameters with first-pass dedup (fn_name, fp_name).")
    ap.add_argument("source_dir", help="Project root containing 'src' and/or 'ext'.")
    ap.add_argument("-o", "--out", help="Output JSON file path (overwrite). If omitted, prints to stdout.")
    ap.add_argument("--resolve-assigned", action="store_true",
                    help="Scan call sites and collect candidate function symbols assigned to the fp position (best-effort).")
    args = ap.parse_args()

    acc = scan_with_immediate_dedup(args.source_dir)

    if args.resolve_assigned and acc:
        # fn -> [(fp_name, seq)]
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
            clean = strip_comments_and_strings(code)
            part = try_collect_assigned_functions_from_calls(clean, fn_to_fpseqs)
            for k, v in part.items():
                aggregate[k].update(v)

        for (fn_name, fp_name), v in acc.items():
            key3 = (fn_name, v["fp_sequence"], fp_name)
            if key3 in aggregate:
                v["assigned_fn"].update(aggregate[key3])

    out = []
    for (fn_name, fp_name), v in acc.items():
        out.append({
            "fp_name": fp_name,
            "fp_sequence": v["fp_sequence"],
            "fn_name": fn_name,
            "assigned_fn": sorted(v["assigned_fn"])
        })
    out.sort(key=lambda r: (r["fn_name"], r["fp_sequence"], r["fp_name"]))

    text = json.dumps(out, indent=2, ensure_ascii=False)

    if args.out:
        # 항상 덮어쓰기 모드로 저장해서 이어붙여지는 문제 방지
        with open(args.out, "w", encoding="utf-8") as f:
            f.write(text)
            f.write("\n")
    else:
        sys.stdout.write(text + "\n")

if __name__ == "__main__":
    main()
