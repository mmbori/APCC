#!/usr/bin/env python3
"""
구조체 내 함수 포인터 할당 추출 (단순화 버전)

주석 제거 후:
1. 구조체 초기화: struct_name var = { ... } 패턴
2. named 할당: obj->fp_name = fn 또는 obj.fp_name = fn 패턴
"""

import argparse
import os
import re
import sys
import json
from typing import Dict, List, Set, Tuple, Optional
from collections import defaultdict
from pathlib import Path
import glob


def iter_target_files(source_dir: str):
    """타겟 파일 탐색"""
    file_patterns = [
        os.path.join(source_dir, "sqlite3.c"),
        os.path.join(source_dir, "sqlite3.h"),
        os.path.join(source_dir, "shell.c"),
        os.path.join(source_dir, "shell.h"),
    ]
    
    files_to_process = set()
    for pattern in file_patterns:
        files_to_process.update(glob.glob(pattern, recursive=True))
    
    return sorted(files_to_process)


def find_struct_boundaries_in_original(content: str) -> List[Tuple[int, int]]:
    """원본 파일에서 직접 구조체 경계 찾기"""
    boundaries = []
    pattern = re.compile(r'\b(?:struct|union)(?:\s+\w+)?\s*\{', re.MULTILINE)
    
    for match in pattern.finditer(content):
        start_pos = match.start()
        brace_pos = match.end() - 1
        
        brace_count = 1
        pos = brace_pos + 1
        
        while pos < len(content) and brace_count > 0:
            char = content[pos]
            if char == '{':
                brace_count += 1
            elif char == '}':
                brace_count -= 1
            pos += 1
        
        if brace_count == 0:
            boundaries.append((start_pos, pos))
    
    return boundaries


def extract_struct_name(struct_content: str) -> Optional[str]:
    """구조체 이름 추출"""
    struct_name_pattern = re.compile(r'\b(?:struct|union)\s+(\w+)\s*\{')
    match = struct_name_pattern.search(struct_content)
    
    if match:
        return match.group(1)
    
    typedef_pattern = re.compile(r'typedef\s+(?:struct|union)\s*\{.*?\}\s*(\w+)\s*;', re.DOTALL)
    match = typedef_pattern.search(struct_content)
    
    if match:
        return match.group(1)
    
    return None


def extract_function_pointer_pattern(decl: str) -> Optional[Tuple[str, str]]:
    """선언에서 함수 포인터 패턴 추출"""
    ptr_pattern = re.search(r'\(\s*\*\s*(\w+)\s*\)', decl)
    if not ptr_pattern:
        return None
    
    fp_name = ptr_pattern.group(1)
    start_pos = ptr_pattern.end()
    if start_pos >= len(decl) or decl[start_pos] != '(':
        return None
    
    depth = 1
    pos = start_pos + 1
    
    while pos < len(decl) and depth > 0:
        if decl[pos] == '(':
            depth += 1
        elif decl[pos] == ')':
            depth -= 1
        pos += 1
    
    if depth != 0:
        return None
    
    return_type = decl[:ptr_pattern.start()].strip()
    return (return_type, fp_name)


def find_function_pointers_with_index(struct_content: str) -> List[Tuple[str, str, int]]:
    """구조체 내용에서 함수 포인터와 인덱스 찾기"""
    function_pointers = []
    
    brace_start = struct_content.find('{')
    brace_end = struct_content.rfind('}')
    if brace_start == -1 or brace_end == -1:
        return function_pointers
    
    body = struct_content[brace_start+1:brace_end]
    
    # 주석 제거
    body = re.sub(r'//.*?(?=\n|$)', '', body)
    body = re.sub(r'/\*.*?\*/', '', body, flags=re.DOTALL)
    
    # 세미콜론으로 분리
    declarations = re.split(r';', body)
    
    typedef_pattern = re.compile(r'(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function)\s+(\w+)')
    
    member_index = 0
    
    for decl in declarations:
        decl = decl.strip()
        
        if not decl or decl.startswith('#'):
            continue
        
        if '{' in decl or '}' in decl:
            continue
        
        is_bitfield = bool(re.search(r':\s*\d+\s*$', decl))
        if is_bitfield:
            continue
        
        # typedef 함수 포인터 체크
        typedef_match = typedef_pattern.search(decl)
        if typedef_match:
            return_type = typedef_match.group(1)
            fp_name = typedef_match.group(2)
            if fp_name and fp_name.isidentifier():
                fp_info = (return_type, fp_name, member_index)
                if not any(existing[1] == fp_info[1] for existing in function_pointers):
                    function_pointers.append(fp_info)
        else:
            # 일반 함수 포인터 체크
            result = extract_function_pointer_pattern(decl)
            if result:
                return_type, fp_name = result
                if fp_name and len(fp_name) > 1 and fp_name.isidentifier():
                    fp_info = (return_type, fp_name, member_index)
                    if not any(existing[1] == fp_info[1] for existing in function_pointers):
                        function_pointers.append(fp_info)
        
        member_index += 1
    
    return function_pointers


def find_structs_in_content(content: str, filepath: str) -> Dict[str, List[Tuple[str, str, int]]]:
    """파일 내용에서 함수 포인터를 가진 구조체 찾기"""
    struct_fp_map = {}
    boundaries = find_struct_boundaries_in_original(content)
    
    for start_pos, end_pos in boundaries:
        struct_content = content[start_pos:end_pos]
        struct_name = extract_struct_name(struct_content)
        if not struct_name:
            continue
        
        function_pointers = find_function_pointers_with_index(struct_content)
        
        if function_pointers:
            if struct_name not in struct_fp_map:
                struct_fp_map[struct_name] = []
            
            existing_fp_names = {fp[1] for fp in struct_fp_map[struct_name]}
            new_fps = [fp for fp in function_pointers if fp[1] not in existing_fp_names]
            
            if new_fps:
                struct_fp_map[struct_name].extend(new_fps)
    
    return struct_fp_map


def find_struct_with_function_pointers(source_dir: str, verbose: bool = False) -> Dict[str, List[Tuple[str, str, int]]]:
    """모든 파일에서 함수 포인터를 가진 구조체 찾기"""
    all_struct_fp_map = {}
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            struct_fp_map = find_structs_in_content(content, file_path)
            
            if struct_fp_map:
                for struct_name, fps in struct_fp_map.items():
                    if struct_name not in all_struct_fp_map:
                        all_struct_fp_map[struct_name] = []
                    
                    existing_fp_names = {fp[1] for fp in all_struct_fp_map[struct_name]}
                    new_fps = [fp for fp in fps if fp[1] not in existing_fp_names]
                    
                    if new_fps:
                        all_struct_fp_map[struct_name].extend(new_fps)
        
        except Exception as e:
            if verbose:
                print(f"  ⚠️  {file_path}: {e}")
    
    return all_struct_fp_map


def extract_assigned_functions(value: str) -> List[str]:
    """
    할당 값에서 함수 이름 추출
    
    처리 패턴:
    1. 단일 식별자: funcName, &funcName, 0, NULL
    2. 삼항 연산자: condition ? func1 : func2
    """
    value = value.strip()
    if not value:
        return []
    
    # & 제거
    value = re.sub(r'^\s*&\s*', '', value)
    
    # 1. 단일 식별자 체크
    single_match = re.match(r'^(\w+)$', value)
    if single_match:
        return [single_match.group(1)]
    
    # 2. 삼항 연산자 체크: condition ? func1 : func2
    ternary_match = re.search(r'\?\s*&?(\w+)\s*:\s*&?(\w+)', value)
    if ternary_match:
        func1 = ternary_match.group(1)
        func2 = ternary_match.group(2)
        return [func1, func2]
    
    # 3. 그 외는 무시
    return []


def find_struct_initializations(source_dir: str, struct_fp_map: Dict, verbose: bool = False) -> List[Dict]:
    """구조체 초기화에서 함수 포인터 할당 찾기"""
    records = []
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 주석 제거
            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            for struct_name, fps in struct_fp_map.items():
                # 구조체 초기화 패턴
                pattern = re.compile(
                    rf'(?:const\s+|static\s+|extern\s+)*(?:struct\s+)?{re.escape(struct_name)}\s+(\w+)\s*=\s*\{{',
                    re.MULTILINE
                )
                
                for match in pattern.finditer(content_no_comments):
                    var_name = match.group(1)
                    init_start = match.end() - 1
                    
                    # 중괄호 매칭
                    brace_count = 1
                    pos = init_start + 1
                    
                    while pos < len(content_no_comments) and brace_count > 0:
                        if content_no_comments[pos] == '{':
                            brace_count += 1
                        elif content_no_comments[pos] == '}':
                            brace_count -= 1
                        pos += 1
                    
                    if brace_count != 0:
                        continue
                    
                    init_content = content_no_comments[init_start:pos]
                    
                    # 값 추출 (콤마로 분리, 중첩 괄호 고려)
                    values = []
                    temp = init_content[1:-1]
                    
                    depth = 0
                    current = []
                    
                    for char in temp:
                        if char in '({[':
                            depth += 1
                            current.append(char)
                        elif char in ')}]':
                            depth -= 1
                            current.append(char)
                        elif char == ',' and depth == 0:
                            values.append(''.join(current).strip())
                            current = []
                        else:
                            current.append(char)
                    
                    if current:
                        values.append(''.join(current).strip())
                    
                    # 함수 포인터 매칭
                    for return_type, fp_name, fp_index in fps:
                        if fp_index < len(values):
                            value = values[fp_index].strip()
                            
                            # 함수 이름 추출
                            assigned_funcs = extract_assigned_functions(value)
                            
                            if assigned_funcs:
                                if verbose:
                                    print(f"  [INIT] {struct_name}.{fp_name}[{fp_index}] = {assigned_funcs}")
                                
                                records.append({
                                    "struct_name": struct_name,
                                    "fp_name": fp_name,
                                    "fp_index": fp_index,
                                    "assigned_fn": assigned_funcs,
                                    "source": "initialization",
                                    "file": os.path.basename(file_path)
                                })
        
        except Exception as e:
            if verbose:
                print(f"  ⚠️  초기화 검색 실패 {file_path}: {e}")
    
    return records


def find_named_assignments(source_dir: str, struct_fp_map: Dict, verbose: bool = False) -> List[Dict]:
    """named 할당 패턴 찾기 (예: obj->fp_name = func;)"""
    records = []
    
    # fp_name -> struct_name 매핑 생성
    fp_to_struct = {}
    for struct_name, fps in struct_fp_map.items():
        for _, fp_name, fp_index in fps:
            if fp_name not in fp_to_struct:
                fp_to_struct[fp_name] = (struct_name, fp_index)
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 주석 제거
            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            for fp_name, (struct_name, fp_index) in fp_to_struct.items():
                # 패턴: ->fp_name = 또는 .fp_name = 을 찾고, 이후 값을 수동으로 추출
                pattern = re.compile(rf'(?:->|\.){re.escape(fp_name)}\s*=\s*')
                
                for match in pattern.finditer(content_no_comments):
                    start_pos = match.end()
                    pos = start_pos
                    
                    # 할당 값의 끝 찾기: ; , { 중 가장 먼저 나오는 것
                    paren_depth = 0
                    
                    while pos < len(content_no_comments):
                        char = content_no_comments[pos]
                        
                        if char == '(':
                            paren_depth += 1
                        elif char == ')':
                            paren_depth -= 1
                        elif paren_depth == 0:
                            # 괄호 밖에서 종료 문자 발견
                            if char in ';,{':
                                break
                        
                        pos += 1
                    
                    if pos >= len(content_no_comments):
                        continue
                    
                    # 할당 값 추출
                    rhs = content_no_comments[start_pos:pos].strip()
                    
                    # 함수 이름 추출
                    assigned_funcs = extract_assigned_functions(rhs)
                    
                    if assigned_funcs:
                        if verbose:
                            print(f"  [NAMED] {struct_name}.{fp_name} = {assigned_funcs}")
                        
                        records.append({
                            "struct_name": struct_name,
                            "fp_name": fp_name,
                            "fp_index": fp_index,
                            "assigned_fn": assigned_funcs,
                            "source": "named_assignment",
                            "file": os.path.basename(file_path)
                        })
        
        except Exception as e:
            if verbose:
                print(f"  ⚠️  Named 할당 검색 실패 {file_path}: {e}")
    
    return records


def aggregate_results(records: List[Dict]) -> List[Dict]:
    """같은 fp_name의 레코드들을 병합"""
    fp_map = defaultdict(lambda: {
        "struct_name": None,
        "fp_index": None,
        "assigned_fn": set(),
        "sources": set(),
        "files": set()
    })
    
    for rec in records:
        fp_name = rec["fp_name"]
        
        # struct_name과 fp_index는 첫 번째 값 사용
        if fp_map[fp_name]["struct_name"] is None:
            fp_map[fp_name]["struct_name"] = rec["struct_name"]
            fp_map[fp_name]["fp_index"] = rec["fp_index"]
        
        for fn in rec["assigned_fn"]:
            fp_map[fp_name]["assigned_fn"].add(fn)
        
        fp_map[fp_name]["sources"].add(rec["source"])
        fp_map[fp_name]["files"].add(rec["file"])
    
    # 최종 결과
    result = []
    for fp_name, data in sorted(fp_map.items()):
        result.append({
            "fp_name": fp_name,
            "struct_name": data["struct_name"],
            "fp_index": data["fp_index"],
            "assigned_fn": sorted(data["assigned_fn"]),
            "sources": sorted(data["sources"]),
            "files": sorted(data["files"])
        })
    
    return result


def normalize_declaration(decl: str) -> str:
    """함수 선언을 정규화"""
    decl = re.sub(r'/\*.*?\*/', '', decl, flags=re.DOTALL)
    decl = re.sub(r'//.*?(?=\n|$)', '', decl)
    decl = re.sub(r'\s+', ' ', decl)
    decl = decl.strip()
    
    if not decl.endswith(';'):
        decl += ';'
    
    return decl


def find_function_declaration(source_dir: str, func_name: str, verbose: bool = False) -> Optional[str]:
    """함수 선언부 찾기"""
    func_pattern = re.compile(rf'\b{re.escape(func_name)}\s*\(')
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()

            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            for match in func_pattern.finditer(content_no_comments):
                func_pos = match.start()
                
                scan_start = max(0, func_pos - 500)
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
                
                return declaration
        
        except Exception as e:
            if verbose:
                print(f"[WARN] 함수 선언 검색 실패 {file_path}: {e}")
    
    return None


def collect_all_function_declarations(source_dir: str, records: List[Dict], verbose: bool = False) -> str:
    """모든 할당된 함수의 선언부 수집"""
    all_functions = set()
    
    for rec in records:
        for fn in rec.get("assigned_fn", []):
            if fn not in ('0', 'NULL'):
                all_functions.add(fn)
    
    if verbose:
        print(f"\n🔍 Searching declarations for {len(all_functions)} functions...")
    
    declarations = []
    found_count = 0
    
    for func_name in sorted(all_functions):
        decl = find_function_declaration(source_dir, func_name, verbose)
        if decl:
            declarations.append(decl)
            found_count += 1
            if verbose and found_count % 10 == 0:
                print(f"   Found {found_count}/{len(all_functions)} declarations...")
        elif verbose:
            print(f"   [WARN] {func_name}: 선언부를 찾을 수 없음")
    
    if verbose:
        print(f"   ✓ Found {found_count}/{len(all_functions)} declarations")
    
    return '\n'.join(declarations)


def main():
    parser = argparse.ArgumentParser(description="구조체 내 함수 포인터 할당 추출 (단순화)")
    
    parser.add_argument("--source-dir", required=True, help="소스 코드 디렉토리")
    parser.add_argument("--out", default="struct_fp_parsing.json", help="출력 JSON 파일")
    parser.add_argument("--decl-out", default="struct_fp_declarations.txt", help="함수 선언 출력 파일")
    parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    
    args = parser.parse_args()
    
    if not os.path.exists(args.source_dir):
        print(f"❌ Error: 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
        sys.exit(1)
    
    print(f"🚀 구조체 함수 포인터 분석 시작")
    print(f"   소스 디렉토리: {args.source_dir}")
    
    # Stage 1: 구조체 검색
    print(f"\n=== Stage 1: 구조체 함수 포인터 검색 ===")
    struct_fp_map = find_struct_with_function_pointers(args.source_dir, args.verbose)
    
    if not struct_fp_map:
        print("❌ 함수 포인터를 가진 구조체를 찾을 수 없음")
        sys.exit(0)
    
    total_fps = sum(len(fps) for fps in struct_fp_map.values())
    print(f"   ✓ {len(struct_fp_map)}개 구조체, {total_fps}개 함수 포인터")
    
    # Stage 2: 할당 찾기
    print(f"\n=== Stage 2: 할당 패턴 분석 ===")
    
    # 2-1: 초기화
    init_records = find_struct_initializations(args.source_dir, struct_fp_map, args.verbose)
    print(f"   ✓ 초기화: {len(init_records)}개 할당")
    
    # 2-2: named 할당
    named_records = find_named_assignments(args.source_dir, struct_fp_map, args.verbose)
    print(f"   ✓ Named 할당: {len(named_records)}개 할당")
    
    # 병합
    all_records = init_records + named_records
    aggregated_records = aggregate_results(all_records)
    
    # 저장
    with open(args.out, 'w', encoding='utf-8') as f:
        json.dump(aggregated_records, f, indent=2, ensure_ascii=False)
    print(f"\n💾 Saved: {args.out}")
    
    # # 함수 선언 수집
    # print(f"\n=== 함수 선언부 수집 ===")
    # declarations = collect_all_function_declarations(args.source_dir, aggregated_records, args.verbose)
    
    # with open(args.decl_out, 'w', encoding='utf-8') as f:
    #     f.write(declarations)
    # print(f"💾 Saved: {args.decl_out}")
    
    # 통계
    print(f"\n=== 분석 완료 ===")
    total_assigned = sum(len(rec.get("assigned_fn", [])) for rec in aggregated_records)
    print(f"   구조체: {len(struct_fp_map)}개")
    print(f"   함수 포인터: {len(aggregated_records)}개")
    print(f"   총 함수 할당: {total_assigned}개")
    
    print(f"\n✅ Complete!")


if __name__ == "__main__":
    main()