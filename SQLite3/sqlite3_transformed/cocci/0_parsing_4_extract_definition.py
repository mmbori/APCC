#!/usr/bin/env python3
"""
filled_parsing.json에서 assigned_fn 함수 추출 및 처리
- 함수 선언부 검색 및 저장
- remove_static cocci 파일 생성
- 함수 정의부 검색 및 저장
"""

import argparse
import json
import os
import re
import glob
from typing import Dict, List, Set, Optional
from collections import defaultdict

VALID_IDENT = re.compile(r'^[A-Za-z_]\w*$')


def remove_comments(content: str) -> str:
    """C 주석 제거"""
    content = re.sub(r'//.*?(?=\n|$)', '', content)
    content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
    return content


def normalize_declaration(declaration: str) -> str:
    """선언부 정규화"""
    declaration = re.sub(r'\s+', ' ', declaration)
    declaration = re.sub(r'\s*\(\s*', '(', declaration)
    declaration = re.sub(r'\s*\)\s*', ')', declaration)
    declaration = re.sub(r'\s*,\s*', ', ', declaration)
    declaration = re.sub(r'\s*\*\s*', ' *', declaration)
    
    declaration = declaration.strip()
    
    if not declaration.endswith(';') and not declaration.endswith('{'):
        if '{' in declaration:
            idx = declaration.index('{')
            declaration = declaration[:idx].strip() + ';'
        else:
            declaration = declaration.rstrip(';').strip() + ';'
    elif declaration.endswith('{'):
        declaration = declaration.rstrip('{').strip() + ';'
    
    return declaration


def load_filled_parsing_json(json_path: str) -> Dict[str, List[str]]:
    """filled_parsing.json 파일 로드 및 assigned_fn 추출"""
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"[ERROR] JSON file not found: {json_path}")
        return {}
    except json.JSONDecodeError as e:
        print(f"[ERROR] Invalid JSON format: {e}")
        return {}
    except Exception as e:
        print(f"[ERROR] Failed to read JSON file: {e}")
        return {}
    
    # assigned_fn 추출
    assigned_fn_map = {}
    
    if isinstance(data, dict):
        for fp_name, func_list in data.items():
            if isinstance(func_list, list):
                valid_funcs = []
                for func in func_list:
                    if isinstance(func, str) and func and func != "0" and VALID_IDENT.match(func):
                        valid_funcs.append(func)
                
                if valid_funcs:
                    assigned_fn_map[fp_name] = valid_funcs
    
    return assigned_fn_map


def find_function_declaration(source_dir: str, func_name: str, verbose: bool = False) -> Optional[str]:
    """함수 선언부 찾기"""
    file_patterns = [
        os.path.join(source_dir, "src/*.c"),
        os.path.join(source_dir, "src/*.h"),
        os.path.join(source_dir, "src/*.in"),
        os.path.join(source_dir, "ext/**/*.c"),
        os.path.join(source_dir, "ext/**/*.h"),
        os.path.join(source_dir, "ext/**/*.in"),
    ]
    
    files_to_search = set()
    for pattern in file_patterns:
        files_to_search.update(glob.glob(pattern, recursive=True))
    
    func_pattern = re.compile(r'\b' + re.escape(func_name) + r'\s*\(', re.MULTILINE)
    
    for file_path in files_to_search:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            content_no_comments = remove_comments(content)
            
            for match in func_pattern.finditer(content_no_comments):
                func_pos = match.start()
                scan_start = max(0, func_pos - 2000)
                before_text = content_no_comments[scan_start:func_pos]
                
                last_semi = before_text.rfind(';')
                last_brace_close = before_text.rfind('}')
                last_brace_open = before_text.rfind('{')
                
                decl_start_offset = max(last_semi, last_brace_close, last_brace_open)
                
                if decl_start_offset != -1:
                    decl_start = scan_start + decl_start_offset + 1
                else:
                    decl_start = scan_start
                
                before_func = content_no_comments[decl_start:func_pos].strip()
                
                if not before_func:
                    continue
                
                before_func_no_ptr = re.sub(r'\*+', ' ', before_func).strip()
                tokens = before_func_no_ptr.split()
                
                if len(tokens) == 0:
                    continue
                
                first_token = tokens[0]
                if first_token in ['return', 'if', 'while', 'for', 'switch', 'sizeof', 'typeof']:
                    continue
                
                if re.search(r'[=+\-/&|<>!,]\s*$', before_func):
                    continue
                
                last_meaningful_token = tokens[-1]
                if not re.match(r'^[A-Za-z_]\w*$', last_meaningful_token):
                    continue
                
                paren_count = 1
                pos = match.end()
                
                while pos < len(content_no_comments) and paren_count > 0:
                    if content_no_comments[pos] == '(':
                        paren_count += 1
                    elif content_no_comments[pos] == ')':
                        paren_count -= 1
                    pos += 1
                
                if paren_count != 0:
                    continue
                
                while pos < len(content_no_comments) and content_no_comments[pos] not in ';{':
                    pos += 1
                
                if pos >= len(content_no_comments):
                    continue
                
                decl_end = pos + 1
                declaration = content_no_comments[decl_start:decl_end].strip()
                
                if declaration.startswith('#'):
                    continue
                
                declaration = normalize_declaration(declaration)
                
                if verbose:
                    print(f"[FOUND] {func_name} in {os.path.basename(file_path)}")
                
                return declaration
        
        except Exception as e:
            if verbose:
                print(f"[WARN] 파일 처리 실패 {file_path}: {e}")
    
    return None


def find_function_definition(source_dir: str, func_name: str, verbose: bool = False) -> Optional[tuple]:
    """함수 정의부 찾기 - 전체 함수 본문 포함"""
    file_patterns = [
        os.path.join(source_dir, "src/*.c"),
        os.path.join(source_dir, "ext/**/*.c"),
    ]
    
    files_to_search = set()
    for pattern in file_patterns:
        files_to_search.update(glob.glob(pattern, recursive=True))
    
    func_pattern = re.compile(
        r'\b' + re.escape(func_name) + r'\s*\([^)]*\)\s*\{',
        re.MULTILINE | re.DOTALL
    )
    
    for file_path in files_to_search:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            content_no_comments = remove_comments(content)
            
            for match in func_pattern.finditer(content_no_comments):
                func_pos = match.start()
                
                # 함수 시작 찾기
                scan_start = max(0, func_pos - 2000)
                before_text = content_no_comments[scan_start:func_pos]
                
                last_semi = before_text.rfind(';')
                last_brace_close = before_text.rfind('}')
                last_brace_open = before_text.rfind('{')
                
                decl_start_offset = max(last_semi, last_brace_close, last_brace_open)
                
                if decl_start_offset != -1:
                    def_start = scan_start + decl_start_offset + 1
                else:
                    def_start = scan_start
                
                # static 키워드 확인
                before_func = content_no_comments[def_start:func_pos].strip()
                has_static = re.search(r'\bstatic\b', before_func)
                
                # 함수 본문 끝 찾기 (중괄호 매칭)
                brace_count = 1
                pos = match.end()
                
                while pos < len(content_no_comments) and brace_count > 0:
                    if content_no_comments[pos] == '{':
                        brace_count += 1
                    elif content_no_comments[pos] == '}':
                        brace_count -= 1
                    pos += 1
                
                if brace_count != 0:
                    continue
                
                def_end = pos
                definition = content_no_comments[def_start:def_end].strip()
                
                if verbose:
                    static_str = " (static)" if has_static else ""
                    print(f"[FOUND] {func_name} definition in {os.path.basename(file_path)}{static_str}")
                
                return (definition, has_static, os.path.basename(file_path))
        
        except Exception as e:
            if verbose:
                print(f"[WARN] 파일 처리 실패 {file_path}: {e}")
    
    return None


def save_declarations(all_functions: Set[str], source_dir: str, output_file: str, verbose: bool = False):
    """모든 함수의 선언부를 파일로 저장"""
    print(f"\n[INFO] 함수 선언부 검색 중... (총 {len(all_functions)}개)")
    
    declarations = {}
    found_count = 0
    not_found = []
    
    for i, func_name in enumerate(sorted(all_functions), 1):
        if verbose or i % 10 == 0:
            print(f"[PROGRESS] {i}/{len(all_functions)}: {func_name}")
        
        decl = find_function_declaration(source_dir, func_name, verbose)
        
        if decl:
            declarations[func_name] = decl
            found_count += 1
        else:
            not_found.append(func_name)
            if verbose:
                print(f"  ✗ 선언을 찾을 수 없음")
    
    # 결과 저장
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("/*\n")
        f.write(" * 함수 포인터 할당 함수 선언부 모음\n")
        f.write(f" * 총 {found_count}개 함수 선언\n")
        f.write(" */\n\n")
        
        for func_name in sorted(declarations.keys()):
            f.write(f"{declarations[func_name]}\n")
        
        if not_found:
            f.write(f"\n/*\n * 선언을 찾지 못한 함수들 ({len(not_found)}개):\n")
            for func_name in sorted(not_found):
                f.write(f" * - {func_name}\n")
            f.write(" */\n")
    
    print(f"[완료] 선언부 저장: {output_file}")
    print(f"  찾은 선언: {found_count}개")
    print(f"  못 찾음: {len(not_found)}개")
    
    return found_count, not_found


def save_definitions(all_functions: Set[str], source_dir: str, output_dir: str, verbose: bool = False):
    """모든 함수의 정의부를 개별 파일로 저장"""
    os.makedirs(output_dir, exist_ok=True)
    
    print(f"\n[INFO] 함수 정의부 검색 중... (총 {len(all_functions)}개)")
    
    found_count = 0
    static_count = 0
    not_found = []
    
    for i, func_name in enumerate(sorted(all_functions), 1):
        if verbose or i % 10 == 0:
            print(f"[PROGRESS] {i}/{len(all_functions)}: {func_name}")
        
        result = find_function_definition(source_dir, func_name, verbose)
        
        if result:
            definition, has_static, filename = result
            found_count += 1
            
            if has_static:
                static_count += 1
            
            # 정의 저장
            def_file = os.path.join(output_dir, f"{func_name}.c")
            with open(def_file, 'w', encoding='utf-8') as f:
                f.write(f"/* Function: {func_name} */\n")
                f.write(f"/* Source: {filename} */\n")
                f.write(f"/* Static: {'Yes' if has_static else 'No'} */\n\n")
                f.write(definition)
                f.write("\n")
        else:
            not_found.append(func_name)
            if verbose:
                print(f"  ✗ 정의를 찾을 수 없음")
    
    print(f"[완료] 정의부 저장: {output_dir}/")
    print(f"  찾은 정의: {found_count}개")
    print(f"  static 함수: {static_count}개")
    print(f"  못 찾음: {len(not_found)}개")
    
    return found_count, static_count, not_found


def generate_cocci_header() -> str:
    """Coccinelle 파일 헤더 생성"""
    return """//
// Auto-generated Coccinelle script to remove 'static' keyword
// from function definitions extracted from filled_parsing.json
//
// This script removes the static keyword from functions that are
// assigned to function pointers in various structures.
//
// Usage: spatch --sp-file remove_static.cocci --dir <source_directory> --in-place
//

"""


def generate_cocci_rules(func: str) -> str:
    """개별 함수에 대한 Coccinelle 규칙 생성 (1_remove_static.py 기반)"""
    return f"""
// Rules for function: {func}
@remove_static_def_brace_same_line_{func}@
identifier F = {{ {func} }};
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) {{ BODY }}

@remove_static_def_brace_next_line_{func}@
identifier F = {{ {func} }};
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{{ BODY }}

@remove_static_def_no_type_{func}@
identifier F = {{ {func} }};
parameter list P;
statement list BODY;
@@
- static
F(P) {{ BODY }}

@remove_static_decl_with_type_{func}@
identifier F = {{ {func} }};
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_{func}@
identifier F = {{ {func} }};
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) {{ BODY }}

"""


def generate_cocci_footer(func_count: int) -> str:
    """Coccinelle 파일 푸터 생성"""
    return f"""
@finalize:python@
@@
print(">>> Completed processing {func_count} functions")
print(">>> Static keywords removed from function definitions")
"""


def generate_cocci_file(all_functions: Set[str], output_file: str, verbose: bool = False):
    """Coccinelle 파일 생성"""
    print(f"\n[INFO] Coccinelle 스크립트 생성 중...")
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(generate_cocci_header())
        
        for i, func_name in enumerate(sorted(all_functions), 1):
            if verbose and i % 10 == 0:
                print(f"[PROGRESS] {i}/{len(all_functions)}: {func_name}")
            
            f.write(generate_cocci_rules(func_name))
        
        f.write(generate_cocci_footer(len(all_functions)))
    
    print(f"[완료] Coccinelle 스크립트 생성: {output_file}")
    print(f"  처리된 함수: {len(all_functions)}개")


def main():
    parser = argparse.ArgumentParser(
        description="filled_parsing.json에서 함수 추출 및 처리"
    )
    parser.add_argument("--source-dir", required=True, help="소스 코드 디렉토리")
    parser.add_argument("--json-path", required=True, help="filled_parsing.json 파일 경로")
    parser.add_argument("--output-declarations", default="parameter_fp_all_declarations.txt",
                        help="선언부 출력 파일 (기본값: parameter_fp_all_declarations.txt)")
    parser.add_argument("--output-definitions-dir", default="definitions",
                        help="정의부 출력 디렉토리 (기본값: definitions)")
    parser.add_argument("--output-cocci", default="remove_static.cocci",
                        help="Coccinelle 출력 파일 (기본값: remove_static.cocci)")
    parser.add_argument("--skip-declarations", action="store_true",
                        help="선언부 추출 건너뛰기")
    parser.add_argument("--skip-definitions", action="store_true",
                        help="정의부 추출 건너뛰기")
    parser.add_argument("--skip-cocci", action="store_true",
                        help="Coccinelle 파일 생성 건너뛰기")
    parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    
    args = parser.parse_args()
    
    # 경로 검증
    if not os.path.exists(args.source_dir):
        print(f"[ERROR] 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
        return
    
    if not os.path.exists(args.json_path):
        print(f"[ERROR] JSON 파일을 찾을 수 없음: {args.json_path}")
        return
    
    print(f"[INFO] 작업 시작")
    print(f"[INFO] 소스 디렉토리: {args.source_dir}")
    print(f"[INFO] JSON 파일: {args.json_path}")
    
    # JSON 로드
    assigned_fn_map = load_filled_parsing_json(args.json_path)
    
    if not assigned_fn_map:
        print("[ERROR] JSON 파일이 비어있거나 로드할 수 없습니다.")
        return
    
    print(f"[INFO] JSON 파일 로드 완료: {len(assigned_fn_map)}개 함수 포인터")
    
    # 모든 고유 함수 수집
    all_functions = set()
    for fp_name, func_list in assigned_fn_map.items():
        all_functions.update(func_list)
    
    print(f"[INFO] 총 {len(all_functions)}개 고유 함수 발견")
    
    # 1. 선언부 추출
    if not args.skip_declarations:
        decl_found, decl_not_found = save_declarations(
            all_functions, args.source_dir, args.output_declarations, args.verbose
        )
    
    # 2. 정의부 추출
    if not args.skip_definitions:
        def_found, static_count, def_not_found = save_definitions(
            all_functions, args.source_dir, args.output_definitions_dir, args.verbose
        )
    
    # 3. Coccinelle 파일 생성
    if not args.skip_cocci:
        generate_cocci_file(all_functions, args.output_cocci, args.verbose)
    
    # 최종 요약
    print(f"\n=== 작업 완료 ===")
    print(f"총 함수: {len(all_functions)}개")
    
    if not args.skip_declarations:
        print(f"\n[선언부]")
        print(f"  파일: {args.output_declarations}")
        print(f"  찾음: {decl_found}개")
        print(f"  못 찾음: {len(decl_not_found)}개")
    
    if not args.skip_definitions:
        print(f"\n[정의부]")
        print(f"  디렉토리: {args.output_definitions_dir}/")
        print(f"  찾음: {def_found}개")
        print(f"  static 함수: {static_count}개")
        print(f"  못 찾음: {len(def_not_found)}개")
    
    if not args.skip_cocci:
        print(f"\n[Coccinelle]")
        print(f"  파일: {args.output_cocci}")
        print(f"  대상 함수: {len(all_functions)}개")
        print(f"  사용법: spatch --sp-file {args.output_cocci} --dir {args.source_dir} --in-place")


if __name__ == "__main__":
    main()