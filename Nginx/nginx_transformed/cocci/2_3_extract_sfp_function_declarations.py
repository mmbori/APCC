#!/usr/bin/env python3
"""
Extract function declarations from struct function pointers and remove 'static' keyword.
Pure Python implementation (no Coccinelle required).

Usage: python3 3_3_extract_sfp_function_declarations.py <source_dir> [options]
"""

import json
import sys
import os
import re
import argparse
from collections import defaultdict


IDENT = r"[A-Za-z_]\w*"
CTRL_KEYWORDS = {"if", "for", "while", "switch", "return", "sizeof", "catch"}


def iter_target_files(source_dir: str):
    """프로젝트 트리를 순회하여 .c, .h, .in, .cc 파일 선택"""
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in", ".cc")):
                yield os.path.join(dirpath, fn)


def load_target_functions(json_file):
    """Load target functions from struct function pointer JSON"""
    with open(json_file, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    target_functions = set()
    
    # Handle list format: [{fp_name, assigned_fn}, ...]
    if isinstance(data, list):
        for entry in data:
            if 'assigned_fn' in entry and entry['assigned_fn']:
                for func in entry['assigned_fn']:
                    if isinstance(func, str) and func and func not in ("0", "NULL", ""):
                        target_functions.add(func)
    elif isinstance(data, dict):
        # Dict format: {fp_name: [func1, func2, ...]}
        for fp_name, func_list in data.items():
            if isinstance(func_list, list):
                for func in func_list:
                    if isinstance(func, str) and func and func not in ("0", "NULL", ""):
                        target_functions.add(func)
    
    return sorted(target_functions)


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


def is_valid_function_declaration(decl: str, func_name: str) -> bool:
    """
    함수 선언/정의가 유효한지 검증
    
    거짓 양성 필터링:
    - 주석 제외
    - 함수 호출 제외
    - 변수 선언 제외
    - 반환 타입이 있는지 확인
    """
    stripped = decl.strip()
    if stripped.startswith('//') or stripped.startswith('/*') or stripped.startswith('*'):
        return False
    
    if 'typedef' in decl[:30]:
        return False
    
    func_pos = decl.find(func_name)
    if func_pos > 0:
        before_func = decl[:func_pos]
        if '=' in before_func:
            return False
    
    # 함수 이름 앞에 반환 타입 확인
    func_pattern = rf'(\w+)\s+{re.escape(func_name)}\s*\('
    if not re.search(func_pattern, decl):
        func_pattern_ptr = rf'(\w+)\s*\*+\s*{re.escape(func_name)}\s*\('
        if not re.search(func_pattern_ptr, decl):
            return False
    
    decl_stripped = decl.rstrip()
    if not (decl_stripped.endswith(';') or decl_stripped.endswith('{')):
        return False
    
    lines = decl.split('\n')
    if len(lines) == 1:
        semicolon_count = decl.count(';')
        if semicolon_count > 1:
            return False
        decl_lower = decl.lower()
        func_name_lower = func_name.lower()
        if func_name_lower in decl_lower:
            before_func_name = decl_lower.split(func_name_lower)[0]
            if any(keyword in before_func_name for keyword in ['if ', 'for ', 'while ', 'switch ', 'return ']):
                return False
    
    return True


def find_function_declaration(code: str, func_name: str) -> list[tuple[str, int, int]]:
    """
    원본 코드에서 특정 함수의 모든 정의/선언을 찾기
    
    Returns:
        [(함수 선언부, 시작 위치, 끝 위치), ...]
    """
    results = []
    pattern = rf'\b{re.escape(func_name)}\s*\('
    
    for match in re.finditer(pattern, code):
        start_pos = match.start()
        
        # 함수 시작 위치 찾기
        search_start = max(0, start_pos - 800)
        line_start = code.rfind('\n', search_start, start_pos)
        
        # 더 위로 올라가서 함수 시작 찾기
        temp_pos = line_start
        while temp_pos > search_start:
            prev_line_end = code.rfind('\n', search_start, temp_pos - 1)
            if prev_line_end == -1:
                break
            line_content = code[prev_line_end:temp_pos].strip()
            if not line_content or line_content.startswith('//') or line_content.startswith('/*'):
                break
            if line_content.startswith('#'):
                break
            if any(c in line_content for c in ['{', '}', ';']):
                break
            temp_pos = prev_line_end
            line_start = prev_line_end
        
        if line_start == -1:
            line_start = 0
        else:
            line_start += 1
        
        # 괄호 매칭으로 끝 위치 찾기
        paren_start = match.start() + len(func_name)
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
            decl = code[line_start:end_pos + 1].strip()
            
            if is_valid_function_declaration(decl, func_name):
                results.append((decl, line_start, end_pos + 1))
    
    return results


def find_all_function_occurrences(code: str, func_name: str) -> list[str]:
    """디버깅용: 함수 이름이 나타나는 모든 위치의 컨텍스트 추출"""
    occurrences = []
    pattern = rf'\b{re.escape(func_name)}\s*\('
    
    for match in re.finditer(pattern, code):
        start = max(0, match.start() - 100)
        end = min(len(code), match.end() + 100)
        context = code[start:end]
        context = ' '.join(context.split())
        occurrences.append(context)
    
    return occurrences


def remove_static_from_declaration(decl: str) -> tuple[str, bool]:
    """
    함수 선언에서 static 키워드 제거
    
    Returns:
        (수정된 선언부, static이 있었는지 여부)
    """
    pattern = r'\bstatic\s+'
    if re.search(pattern, decl):
        modified = re.sub(pattern, '', decl, count=1)
        return modified, True
    return decl, False


def extract_function_signature(decl: str) -> str:
    """
    함수 정의에서 시그니처만 추출 (선언 형태로 변환)
    
    예: void foo(int x) { ... } -> void foo(int x);
    """
    brace_pos = decl.find('{')
    if brace_pos != -1:
        signature = decl[:brace_pos].strip()
        if not signature.endswith(';'):
            signature += ';'
        return signature
    
    return decl


def normalize_signature(sig: str) -> str:
    """시그니처 정규화 (공백, 개행 정리)"""
    sig = ' '.join(sig.split())
    sig = re.sub(r'\s+', ' ', sig)
    sig = re.sub(r'\s*\*\s*', ' *', sig)
    return sig.strip()


def process_assigned_functions(
    source_dir: str,
    target_functions: set[str],
    modify_files: bool = False,
    debug_missing: bool = False
) -> dict[str, list[str]]:
    """
    assigned_fn에 있는 함수들의 선언/정의 처리
    
    Args:
        source_dir: 소스 디렉토리
        target_functions: 처리할 함수 이름 집합
        modify_files: True면 파일을 실제로 수정
        debug_missing: True면 누락된 함수 디버깅 정보 출력
    
    Returns:
        {함수명: [선언부 문자열들]} 딕셔너리
    """
    function_declarations = defaultdict(set)
    files_to_modify = {}
    found_functions = set()
    
    print(f"[INFO] Processing {len(target_functions)} target functions...")
    print(f"[INFO] Scanning source directory: {source_dir}")
    
    found_count = 0
    static_removed_count = 0
    
    debug_info = defaultdict(list)
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                original_code = f.read()
        except Exception as e:
            print(f"[WARN] Failed to read {file_path}: {e}", file=sys.stderr)
            continue
        
        modifications = []
        
        for func_name in target_functions:
            declarations = find_function_declaration(original_code, func_name)
            
            if declarations:
                found_functions.add(func_name)
            
            if debug_missing:
                occurrences = find_all_function_occurrences(original_code, func_name)
                if occurrences:
                    rel_path = os.path.relpath(file_path, source_dir)
                    for occ in occurrences:
                        debug_info[func_name].append((rel_path, occ))
            
            for decl, start_pos, end_pos in declarations:
                modified_decl, had_static = remove_static_from_declaration(decl)
                
                signature = extract_function_signature(modified_decl)
                signature = normalize_signature(signature)
                
                function_declarations[func_name].add(signature)
                
                rel_path = os.path.relpath(file_path, source_dir)
                if had_static:
                    print(f"[FOUND] {func_name} in {rel_path} (static removed)")
                    static_removed_count += 1
                else:
                    print(f"[FOUND] {func_name} in {rel_path}")
                found_count += 1
                
                if modify_files and had_static:
                    modifications.append((start_pos, end_pos, modified_decl))
        
        if modifications:
            files_to_modify[file_path] = modifications
    
    missing_functions = target_functions - found_functions
    
    print(f"\n[SUMMARY]")
    print(f"  Target functions: {len(target_functions)}")
    print(f"  Functions found: {len(found_functions)}")
    print(f"  Functions missing: {len(missing_functions)}")
    print(f"  Total declarations: {found_count}")
    print(f"  Static removed: {static_removed_count}")
    print(f"  Unique signatures: {sum(len(v) for v in function_declarations.values())}")
    
    if missing_functions:
        print(f"\n[MISSING FUNCTIONS]")
        for func in sorted(missing_functions):
            print(f"  - {func}")
        
        if debug_missing:
            print(f"\n[DEBUG INFO - Where these functions appear]")
            for func in sorted(missing_functions):
                if func in debug_info:
                    print(f"\n  {func}:")
                    for file_path, context in debug_info[func][:3]:
                        print(f"    {file_path}: ...{context}...")
                else:
                    print(f"\n  {func}: NOT FOUND in any file")
    
    if modify_files and files_to_modify:
        print(f"\n[INFO] Modifying {len(files_to_modify)} files...")
        
        for path, modifications in files_to_modify.items():
            try:
                with open(path, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                modifications.sort(key=lambda x: x[0], reverse=True)
                
                for start_pos, end_pos, new_text in modifications:
                    content = content[:start_pos] + new_text + content[end_pos:]
                
                with open(path, 'w', encoding='utf-8') as f:
                    f.write(content)
                
                rel_path = os.path.relpath(path, source_dir)
                print(f"  [MODIFIED] {rel_path}")
                
            except Exception as e:
                print(f"  [ERROR] Failed to modify {path}: {e}", file=sys.stderr)
    
    return {k: sorted(v) for k, v in function_declarations.items()}


def main():
    parser = argparse.ArgumentParser(
        description="Extract struct function pointer declarations and remove static (Python-based)"
    )
    parser.add_argument(
        "source_dir",
        help="Source directory to scan"
    )
    parser.add_argument(
        "--json-file",
        default="tmp_struct_fp.json",
        help="JSON file containing struct function pointer data (default: tmp_struct_fp.json)"
    )
    parser.add_argument(
        "--extract-declarations",
        action="store_true",
        help="Extract function declarations"
    )
    parser.add_argument(
        "--modify-files",
        action="store_true",
        help="Actually modify source files to remove static"
    )
    parser.add_argument(
        "--decl-output",
        default="sfp_declarations.txt",
        help="Output file for extracted declarations (default: sfp_declarations.txt)"
    )
    parser.add_argument(
        "--debug-missing",
        action="store_true",
        help="Show debug info for missing functions"
    )
    
    args = parser.parse_args()
    
    if not os.path.exists(args.json_file):
        print(f"[ERROR] JSON file not found: {args.json_file}", file=sys.stderr)
        print(f"[INFO] Please run 3_1_extract_fp_in_struct.py first to generate {args.json_file}", file=sys.stderr)
        sys.exit(1)
    
    if not os.path.isdir(args.source_dir):
        print(f"[ERROR] Source directory not found: {args.source_dir}", file=sys.stderr)
        sys.exit(1)
    
    print(f"[INFO] Loading target functions from {args.json_file}...")
    target_functions = load_target_functions(args.json_file)
    
    if not target_functions:
        print(f"[ERROR] No valid functions found in {args.json_file}", file=sys.stderr)
        sys.exit(1)
    
    print(f"[INFO] Found {len(target_functions)} unique target functions")
    
    if args.extract_declarations:
        function_declarations = process_assigned_functions(
            args.source_dir,
            set(target_functions),
            modify_files=args.modify_files,
            debug_missing=args.debug_missing
        )
        
        if function_declarations:
            with open(args.decl_output, 'w', encoding='utf-8') as f:
                for func_name in sorted(function_declarations.keys()):
                    for decl in function_declarations[func_name]:
                        f.write(f"{decl}\n")
            
            print(f"\n✓ Declarations saved to: {args.decl_output}")
            print(f"  Total functions: {len(function_declarations)}")
            print(f"  Total declarations: {sum(len(v) for v in function_declarations.values())}")
            
            if args.modify_files:
                print(f"  Source files modified: static keywords removed")
        else:
            print(f"\n[WARN] No declarations found!")
    else:
        print(f"\n[INFO] Use --extract-declarations to extract function declarations")
        print(f"[INFO] Use --modify-files with --extract-declarations to remove static from source files")
        print(f"[INFO] Use --debug-missing to see where missing functions appear")


if __name__ == '__main__':
    main()