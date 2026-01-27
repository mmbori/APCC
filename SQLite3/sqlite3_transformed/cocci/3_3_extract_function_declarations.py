#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
함수 선언/정의부 추출 스크립트 (개선 버전)

개선 사항:
1. 함수 호출과 정의/선언 정확히 구분
2. 복잡한 함수 선언 형태 지원 (함수 포인터 반환, 매크로 등)
3. 전처리기 지시자 처리
4. 더 정확한 컨텍스트 분석
5. 중복 결과 필터링

입력:
- JSON 파일: {"fp_name": ["func1", "func2", ...]} 형식

출력:
- 선언부 파일: 각 함수의 선언 (헤더에 추가 가능한 형식)
- 정의부 파일: 각 함수의 전체 정의
- 통계 보고서
"""

import argparse
import json
import os
import re
import glob
from typing import Dict, List, Set, Optional, Tuple
from collections import defaultdict
from pathlib import Path

# 유효한 C 식별자 패턴
VALID_IDENT = re.compile(r'^[A-Za-z_]\w*$')

# C 제어 키워드 (함수가 아닌 것들)
CONTROL_KEYWORDS = {
    'if', 'else', 'while', 'for', 'do', 'switch', 'case', 'default',
    'return', 'break', 'continue', 'goto',
    'sizeof', 'typeof', '__typeof__', '__alignof__',
    'defined', '__has_include'
}

# 타입 키워드 (함수 선언 앞에 올 수 있는 것들)
TYPE_KEYWORDS = {
    'void', 'char', 'short', 'int', 'long', 'float', 'double',
    'signed', 'unsigned', 'const', 'volatile', 'restrict',
    'static', 'extern', 'inline', '__inline', '__inline__',
    'register', 'auto', 'typedef',
    '__attribute__', '__declspec', '__cdecl', '__stdcall',
    'struct', 'union', 'enum',
    'SQLITE_API', 'SQLITE_PRIVATE', 'SQLITE_EXTERN'  # SQLite specific
}


# ==========================================================
# 유틸리티 함수
# ==========================================================

def remove_comments(content: str) -> str:
    """
    C 주석 제거 (개선 버전)
    - 문자열 리터럴 내부의 // 와 /* */ 는 보존
    """
    result = []
    i = 0
    n = len(content)
    
    while i < n:
        # 문자열 리터럴 처리
        if content[i] == '"':
            result.append('"')
            i += 1
            escaped = False
            while i < n:
                if escaped:
                    result.append(content[i])
                    escaped = False
                elif content[i] == '\\':
                    result.append(content[i])
                    escaped = True
                elif content[i] == '"':
                    result.append('"')
                    i += 1
                    break
                else:
                    result.append(content[i])
                i += 1
            continue
        
        # 문자 리터럴 처리
        if content[i] == "'":
            result.append("'")
            i += 1
            escaped = False
            while i < n:
                if escaped:
                    result.append(content[i])
                    escaped = False
                elif content[i] == '\\':
                    result.append(content[i])
                    escaped = True
                elif content[i] == "'":
                    result.append("'")
                    i += 1
                    break
                else:
                    result.append(content[i])
                i += 1
            continue
        
        # 한줄 주석
        if i + 1 < n and content[i:i+2] == '//':
            while i < n and content[i] != '\n':
                i += 1
            if i < n:
                result.append('\n')
                i += 1
            continue
        
        # 블록 주석
        if i + 1 < n and content[i:i+2] == '/*':
            i += 2
            while i + 1 < n:
                if content[i:i+2] == '*/':
                    i += 2
                    result.append(' ')
                    break
                if content[i] == '\n':
                    result.append('\n')
                i += 1
            continue
        
        result.append(content[i])
        i += 1
    
    return ''.join(result)


def is_valid_function_name(name: str) -> bool:
    """유효한 함수 이름인지 확인"""
    if not name or not VALID_IDENT.match(name):
        return False
    if name in CONTROL_KEYWORDS:
        return False
    return True


def normalize_whitespace(text: str) -> str:
    """공백 정규화 (개행 유지)"""
    lines = text.split('\n')
    normalized_lines = []
    for line in lines:
        # 여러 공백을 하나로
        line = re.sub(r'[ \t]+', ' ', line)
        normalized_lines.append(line.strip())
    return '\n'.join(line for line in normalized_lines if line)


def normalize_declaration(decl: str) -> str:
    """
    선언부 정규화 (헤더 파일에 추가할 수 있는 형식)
    """
    # 여러 공백을 하나로
    decl = re.sub(r'\s+', ' ', decl)
    
    # 괄호와 쉼표 주변 공백 정리
    decl = re.sub(r'\s*\(\s*', '(', decl)
    decl = re.sub(r'\s*\)\s*', ')', decl)
    decl = re.sub(r'\s*,\s*', ', ', decl)
    
    # 포인터 정리
    decl = re.sub(r'\s*\*\s*', ' *', decl)
    decl = re.sub(r'\*\s+\*', '**', decl)
    
    # 양쪽 공백 제거
    decl = decl.strip()
    
    # static 제거 (헤더에는 필요 없음)
    decl = re.sub(r'\bstatic\s+', '', decl)
    
    # 함수 본문 제거 (정의를 선언으로 변환)
    if '{' in decl:
        # { 이전까지만 취함
        idx = decl.index('{')
        decl = decl[:idx].strip()
    
    # 세미콜론으로 끝나도록
    if not decl.endswith(';'):
        decl = decl.rstrip(';') + ';'
    
    return decl


# ==========================================================
# JSON 로드
# ==========================================================

def load_json_file(json_path: str) -> Dict[str, List[str]]:
    """
    JSON 파일 로드 및 assigned_fn 추출
    
    지원 형식:
    1. {"fp_name": ["func1", "func2"]}
    2. [{"fp_name": "name", "assigned_fn": ["func1", "func2"]}]
    """
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"❌ Error: JSON file not found: {json_path}")
        return {}
    except json.JSONDecodeError as e:
        print(f"❌ Error: Invalid JSON format: {e}")
        return {}
    
    func_map = {}
    
    # 형식 1: dict
    if isinstance(data, dict):
        for fp_name, func_list in data.items():
            if isinstance(func_list, list):
                valid_funcs = [
                    func for func in func_list
                    if isinstance(func, str) and func and func not in ('0', 'NULL') 
                    and is_valid_function_name(func)
                ]
                if valid_funcs:
                    func_map[fp_name] = valid_funcs
    
    # 형식 2: list of dicts
    elif isinstance(data, list):
        for item in data:
            if isinstance(item, dict):
                fp_name = item.get('fp_name', '')
                assigned_fn = item.get('assigned_fn', [])
                
                if fp_name and isinstance(assigned_fn, list):
                    valid_funcs = [
                        func for func in assigned_fn
                        if isinstance(func, str) and func and func not in ('0', 'NULL')
                        and is_valid_function_name(func)
                    ]
                    
                    if valid_funcs:
                        if fp_name not in func_map:
                            func_map[fp_name] = []
                        func_map[fp_name].extend(valid_funcs)
    
    return func_map


# ==========================================================
# 소스 파일 수집
# ==========================================================

def collect_source_files(source_dir: str, include_headers: bool = True) -> List[str]:
    """소스 파일 수집"""
    patterns = [
        os.path.join(source_dir, "src/*.c"),
        os.path.join(source_dir, "ext/**/*.c"),
    ]
    
    if include_headers:
        patterns.extend([
            os.path.join(source_dir, "src/*.h"),
            os.path.join(source_dir, "src/*.in"),
            os.path.join(source_dir, "ext/**/*.h"),
            os.path.join(source_dir, "ext/**/*.in"),
        ])
    
    files = set()
    for pattern in patterns:
        files.update(glob.glob(pattern, recursive=True))
    
    return sorted(files)


# ==========================================================
# 함수 선언 파싱 (개선 버전)
# ==========================================================

def is_function_declaration_context(before_text: str, func_name: str) -> bool:
    """
    함수 선언/정의인지 판단
    
    확인 사항:
    1. 함수 이름 앞에 타입이나 키워드가 있는지
    2. 할당문이나 호출문이 아닌지
    3. 전처리기 지시자가 아닌지
    """
    before_text = before_text.strip()
    
    if not before_text:
        return False
    
    # 전처리기 지시자 제외
    if before_text.startswith('#'):
        return False
    
    # 연산자로 끝나면 호출문 (예: return func(, x = func()
    if re.search(r'[=+\-*/&|<>!,]\s*$', before_text):
        return False
    
    # 제어문 제외
    last_tokens = before_text.split()[-3:]  # 마지막 3개 토큰
    for token in last_tokens:
        if token in CONTROL_KEYWORDS:
            return False
    
    # 포인터 제거 후 토큰 추출
    before_no_ptr = re.sub(r'\*+', ' ', before_text)
    tokens = before_no_ptr.split()
    
    if not tokens:
        return False
    
    # 마지막 토큰이 함수 이름이어야 함
    last_token = tokens[-1]
    if last_token != func_name:
        # 함수 포인터 반환 타입인 경우: int (*func)(int)
        # 이 경우 괄호 내부에 함수 이름이 있을 수 있음
        if '(' in before_text and ')' in before_text:
            # (*func_name) 패턴 확인
            ptr_pattern = r'\(\s*\*\s*' + re.escape(func_name) + r'\s*\)'
            if re.search(ptr_pattern, before_text):
                return True
        return False
    
    # 첫 번째 토큰이 타입 키워드여야 함 (또는 타입 이름)
    first_token = tokens[0]
    
    # 타입 키워드이거나
    if first_token in TYPE_KEYWORDS:
        return True
    
    # 유효한 식별자 (사용자 정의 타입)
    if VALID_IDENT.match(first_token) and first_token not in CONTROL_KEYWORDS:
        return True
    
    return False


def extract_parameter_list(content: str, start_pos: int) -> Tuple[Optional[str], int]:
    """
    괄호 쌍 추출 (중첩 괄호 처리)
    
    Returns:
        (parameter_string, end_position) or (None, start_pos)
    """
    if start_pos >= len(content) or content[start_pos] != '(':
        return None, start_pos
    
    depth = 0
    i = start_pos
    
    while i < len(content):
        if content[i] == '(':
            depth += 1
        elif content[i] == ')':
            depth -= 1
            if depth == 0:
                return content[start_pos:i+1], i + 1
        i += 1
    
    return None, start_pos


def find_function_declarations(source_dir: str, func_name: str, verbose: bool = False) -> List[Tuple[str, str]]:
    """
    함수 선언 찾기 (개선 버전)
    
    Returns:
        List of (declaration, filepath)
    """
    if not is_valid_function_name(func_name):
        return []
    
    files = collect_source_files(source_dir, include_headers=True)
    
    # 함수 이름 뒤에 괄호가 오는 패턴
    func_pattern = re.compile(
        r'\b' + re.escape(func_name) + r'\s*\(',
        re.MULTILINE
    )
    
    declarations = []
    seen_decls = set()  # 중복 제거용
    
    for file_path in files:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            content_no_comments = remove_comments(content)
            
            for match in func_pattern.finditer(content_no_comments):
                func_pos = match.start()
                
                # 선언 시작 위치 찾기
                scan_start = max(0, func_pos - 3000)
                before_text = content_no_comments[scan_start:func_pos]
                
                # 이전 선언/정의 끝 찾기
                last_semi = before_text.rfind(';')
                last_brace_close = before_text.rfind('}')
                last_brace_open = before_text.rfind('{')
                last_prep = before_text.rfind('\n#')  # 전처리기
                
                decl_start_offset = max(last_semi, last_brace_close, last_brace_open, last_prep)
                
                if decl_start_offset != -1:
                    decl_start = scan_start + decl_start_offset + 1
                else:
                    decl_start = scan_start
                
                # 함수 이름 앞 텍스트
                before_func = content_no_comments[decl_start:func_pos].strip()
                
                # 함수 선언/정의 컨텍스트 확인
                if not is_function_declaration_context(before_func, func_name):
                    continue
                
                # 파라미터 리스트 추출
                params, param_end = extract_parameter_list(content_no_comments, match.end() - 1)
                if params is None:
                    continue
                
                # 선언 끝 찾기 (; 또는 { 까지)
                pos = param_end
                
                # 뒤에 오는 것들 (const, throw 등) 포함
                while pos < len(content_no_comments) and content_no_comments[pos] in ' \t\n':
                    pos += 1
                
                # const, volatile, noexcept 등 처리
                remainder_start = pos
                while pos < len(content_no_comments):
                    char = content_no_comments[pos]
                    if char in ';{':
                        break
                    pos += 1
                
                remainder = content_no_comments[remainder_start:pos].strip()
                
                # 전체 선언 구성
                declaration = before_func + ' ' + func_name + params
                if remainder and remainder not in (';', '{'):
                    declaration += ' ' + remainder
                
                # 정규화
                declaration = normalize_declaration(declaration)
                
                # 전처리기 제외
                if declaration.startswith('#'):
                    continue
                
                # 너무 짧은 선언 제외
                if len(declaration) < len(func_name) + 5:
                    continue
                
                # 중복 제거
                decl_key = re.sub(r'\s+', ' ', declaration).strip()
                if decl_key in seen_decls:
                    continue
                
                seen_decls.add(decl_key)
                declarations.append((declaration, file_path))
                
                if verbose:
                    print(f"  [FOUND] {func_name} in {os.path.basename(file_path)}")
        
        except Exception as e:
            if verbose:
                print(f"  [WARN] Error processing {file_path}: {e}")
    
    return declarations


# ==========================================================
# 함수 정의 파싱 (개선 버전)
# ==========================================================

def find_function_definitions(source_dir: str, func_name: str, verbose: bool = False) -> List[Tuple[str, str, bool]]:
    """
    함수 정의 찾기 (개선 버전)
    
    Returns:
        List of (definition, filepath, has_static)
    """
    if not is_valid_function_name(func_name):
        return []
    
    files = collect_source_files(source_dir, include_headers=False)
    
    # 함수 이름 뒤에 (...) { 패턴
    func_pattern = re.compile(
        r'\b' + re.escape(func_name) + r'\s*\([^)]*\)\s*\{',
        re.MULTILINE | re.DOTALL
    )
    
    definitions = []
    seen_defs = set()
    
    for file_path in files:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            content_no_comments = remove_comments(content)
            
            for match in func_pattern.finditer(content_no_comments):
                func_pos = match.start()
                
                # 정의 시작 찾기
                scan_start = max(0, func_pos - 3000)
                before_text = content_no_comments[scan_start:func_pos]
                
                last_semi = before_text.rfind(';')
                last_brace_close = before_text.rfind('}')
                last_brace_open = before_text.rfind('{')
                last_prep = before_text.rfind('\n#')
                
                def_start_offset = max(last_semi, last_brace_close, last_brace_open, last_prep)
                
                if def_start_offset != -1:
                    def_start = scan_start + def_start_offset + 1
                else:
                    def_start = scan_start
                
                # 함수 이름 앞 텍스트
                before_func = content_no_comments[def_start:func_pos].strip()
                
                # 함수 정의 컨텍스트 확인
                if not is_function_declaration_context(before_func, func_name):
                    continue
                
                # static 확인
                has_static = re.search(r'\bstatic\b', before_func) is not None
                
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
                
                # 전체 정의 추출
                definition = content_no_comments[def_start:pos].strip()
                
                # 전처리기 제외
                if definition.startswith('#'):
                    continue
                
                # 중복 제거 (간단한 해시)
                def_key = (len(definition), definition[:100] if len(definition) > 100 else definition)
                if def_key in seen_defs:
                    continue
                
                seen_defs.add(def_key)
                definitions.append((definition, file_path, has_static))
                
                if verbose:
                    static_marker = " (static)" if has_static else ""
                    print(f"  [FOUND] {func_name}{static_marker} in {os.path.basename(file_path)}")
        
        except Exception as e:
            if verbose:
                print(f"  [WARN] Error processing {file_path}: {e}")
    
    return definitions


# ==========================================================
# 결과 저장
# ==========================================================

def save_declarations(
    all_functions: Set[str],
    source_dir: str,
    output_file: str,
    verbose: bool = False
) -> Tuple[int, List[str]]:
    """모든 함수의 선언부를 하나의 파일로 저장"""
    print(f"\n📖 Extracting function declarations...")
    print(f"   Total functions: {len(all_functions)}")
    
    found_count = 0
    not_found = []
    all_declarations = []
    
    for i, func_name in enumerate(sorted(all_functions), 1):
        if verbose or i % 10 == 0:
            print(f"   [{i}/{len(all_functions)}] {func_name}")
        
        declarations = find_function_declarations(source_dir, func_name, verbose)
        
        if declarations:
            found_count += 1
            # 첫 번째 선언 사용 (보통 가장 정확함)
            decl, filepath = declarations[0]
            all_declarations.append({
                'function': func_name,
                'declaration': decl,
                'source': os.path.basename(filepath),
                'alternatives': len(declarations) - 1
            })
        else:
            not_found.append(func_name)
            if verbose:
                print(f"     ✗ Declaration not found")
    
    # 저장
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("/*\n")
        f.write(" * Function Declarations Extracted from Source Code\n")
        f.write(f" * Total functions: {len(all_functions)}\n")
        f.write(f" * Found: {found_count}\n")
        f.write(f" * Not found: {len(not_found)}\n")
        f.write(" *\n")
        f.write(" * This file contains function declarations that can be added to a header file.\n")
        f.write(" */\n\n")
        
        for item in all_declarations:
            f.write(f"/* Function: {item['function']} */\n")
            f.write(f"/* Source: {item['source']} */\n")
            if item['alternatives'] > 0:
                f.write(f"/* Alternative declarations found: {item['alternatives']} */\n")
            f.write(f"{item['declaration']}\n\n")
        
        if not_found:
            f.write("\n/*\n")
            f.write(" * Functions without declarations found:\n")
            for func in not_found:
                f.write(f" * - {func}\n")
            f.write(" */\n")
    
    print(f"   ✓ Saved to: {output_file}")
    print(f"   ✓ Found: {found_count}/{len(all_functions)}")
    
    return found_count, not_found


def save_definitions(
    all_functions: Set[str],
    source_dir: str,
    output_dir: str,
    verbose: bool = False
) -> Tuple[int, int, List[str]]:
    """모든 함수의 정의부를 개별 파일로 저장"""
    os.makedirs(output_dir, exist_ok=True)
    
    print(f"\n📖 Extracting function definitions...")
    print(f"   Total functions: {len(all_functions)}")
    
    found_count = 0
    static_count = 0
    not_found = []
    
    for i, func_name in enumerate(sorted(all_functions), 1):
        if verbose or i % 10 == 0:
            print(f"   [{i}/{len(all_functions)}] {func_name}")
        
        definitions = find_function_definitions(source_dir, func_name, verbose)
        
        if definitions:
            found_count += 1
            # 첫 번째 정의 사용
            definition, filepath, has_static = definitions[0]
            
            if has_static:
                static_count += 1
            
            # 정의 저장
            def_file = os.path.join(output_dir, f"{func_name}.c")
            with open(def_file, 'w', encoding='utf-8') as f:
                f.write(f"/* Function: {func_name} */\n")
                f.write(f"/* Source: {os.path.basename(filepath)} */\n")
                f.write(f"/* Static: {'Yes' if has_static else 'No'} */\n")
                if len(definitions) > 1:
                    f.write(f"/* Alternative definitions found: {len(definitions) - 1} */\n")
                f.write(f"\n{definition}\n")
        else:
            not_found.append(func_name)
            if verbose:
                print(f"     ✗ Definition not found")
    
    print(f"   ✓ Saved to: {output_dir}/")
    print(f"   ✓ Found: {found_count}/{len(all_functions)}")
    print(f"   ✓ Static functions: {static_count}")
    
    return found_count, static_count, not_found


# ==========================================================
# 통계 및 분석
# ==========================================================

def generate_statistics_report(
    all_functions: Set[str],
    decl_found: int,
    decl_not_found: List[str],
    def_found: int,
    def_static: int,
    def_not_found: List[str],
    output_file: str
):
    """통계 보고서 생성"""
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("# Function Extraction Statistics Report\n\n")
        
        f.write("## Summary\n\n")
        f.write(f"- Total functions: {len(all_functions)}\n")
        f.write(f"- Declarations found: {decl_found} ({decl_found/len(all_functions)*100:.1f}%)\n")
        f.write(f"- Definitions found: {def_found} ({def_found/len(all_functions)*100:.1f}%)\n")
        f.write(f"- Static functions: {def_static} ({def_static/max(def_found,1)*100:.1f}% of definitions)\n\n")
        
        f.write("## Missing Declarations\n\n")
        if decl_not_found:
            for func in sorted(decl_not_found):
                f.write(f"- {func}\n")
        else:
            f.write("None\n")
        f.write("\n")
        
        f.write("## Missing Definitions\n\n")
        if def_not_found:
            for func in sorted(def_not_found):
                f.write(f"- {func}\n")
        else:
            f.write("None\n")
        f.write("\n")
        
        # 교집합 분석
        both_missing = set(decl_not_found) & set(def_not_found)
        if both_missing:
            f.write("## Functions Missing Both Declaration and Definition\n\n")
            for func in sorted(both_missing):
                f.write(f"- {func}\n")
            f.write("\n")
    
    print(f"\n📊 Statistics report saved to: {output_file}")


# ==========================================================
# 메인
# ==========================================================

def main():
    parser = argparse.ArgumentParser(
        description="Extract function declarations and definitions from source code",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Extract both declarations and definitions
  python3 extract_declarations.py --source-dir ./sqlite --json input.json
  
  # Extract only declarations
  python3 extract_declarations.py --source-dir ./sqlite --json input.json --skip-definitions
  
  # Verbose mode
  python3 extract_declarations.py --source-dir ./sqlite --json input.json --verbose

Input JSON format:
  {"fp_name": ["func1", "func2", ...]}
  or
  [{"fp_name": "name", "assigned_fn": ["func1", "func2"]}]

Output:
  - declarations.txt: All function declarations (header-ready format)
  - definitions/: Individual function definitions (.c files)
  - statistics.md: Analysis report
        """
    )
    
    parser.add_argument("--source-dir", required=True, help="Source code directory")
    parser.add_argument("--json", dest="json_path", required=True, help="Input JSON file")
    parser.add_argument("--output-declarations", default="struct_fp_all_declarations.txt",
                        help="Output file for declarations (default: all_declarations.txt)")
    parser.add_argument("--output-definitions-dir", default=".",
                        help="Output directory for definitions (default: definitions)")
    parser.add_argument("--output-statistics", default="statistics.md",
                        help="Output file for statistics (default: statistics.md)")
    parser.add_argument("--skip-declarations", action="store_true",
                        help="Skip declaration extraction")
    parser.add_argument("--skip-definitions", action="store_true",
                        help="Skip definition extraction")
    parser.add_argument("--verbose", "-v", action="store_true", help="Verbose output")
    
    args = parser.parse_args()
    
    # 입력 검증
    if not os.path.exists(args.source_dir):
        print(f"❌ Error: Source directory not found: {args.source_dir}")
        return 1
    
    if not os.path.exists(args.json_path):
        print(f"❌ Error: JSON file not found: {args.json_path}")
        return 1
    
    print(f"🚀 Function Declaration/Definition Extractor")
    print(f"   Source directory: {args.source_dir}")
    print(f"   JSON file: {args.json_path}")
    
    # JSON 로드
    func_map = load_json_file(args.json_path)
    
    if not func_map:
        print("❌ Error: No functions found in JSON file")
        return 1
    
    print(f"   ✓ Loaded {len(func_map)} function pointer(s)")
    
    # 모든 고유 함수 수집
    all_functions = set()
    for fp_name, func_list in func_map.items():
        all_functions.update(func_list)
    
    print(f"   ✓ Total unique functions: {len(all_functions)}")
    
    # 선언부 추출
    decl_found = 0
    decl_not_found = []
    if not args.skip_declarations:
        decl_found, decl_not_found = save_declarations(
            all_functions, args.source_dir, args.output_declarations, args.verbose
        )
    
    # 정의부 추출
    def_found = 0
    def_static = 0
    def_not_found = []
    if not args.skip_definitions:
        def_found, def_static, def_not_found = save_definitions(
            all_functions, args.source_dir, args.output_definitions_dir, args.verbose
        )
    
    # 통계 보고서
    if not (args.skip_declarations and args.skip_definitions):
        generate_statistics_report(
            all_functions, decl_found, decl_not_found,
            def_found, def_static, def_not_found, args.output_statistics
        )
    
    # 최종 요약
    print(f"\n✅ Extraction complete!")
    print(f"\n📁 Output files:")
    if not args.skip_declarations:
        print(f"   - Declarations: {args.output_declarations}")
    if not args.skip_definitions:
        print(f"   - Definitions: {args.output_definitions_dir}/")
    if not (args.skip_declarations and args.skip_definitions):
        print(f"   - Statistics: {args.output_statistics}")
    
    return 0


if __name__ == "__main__":
    exit(main())