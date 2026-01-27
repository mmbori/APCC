#!/usr/bin/env python3
"""
구조체 초기화에 signature 필드 추가 (JSON 기반)
- struct_fp_resolved.json에서 함수 포인터와 할당 가능한 함수 로드
- 구조체 초기화 부분 검색
- 각 함수 포인터에 대응되는 함수를 찾아 signature 필드 추가
- 0 또는 NULL도 [fp_0_enum] 형태로 추가
- 콤마 중복 방지
"""

import argparse
import os
import re
import sys
import json
from typing import Dict, List, Set, Tuple, Optional
import shutil
from collections import defaultdict

def iter_target_files(source_dir: str):
    """프로젝트 트리를 순회하여 .c, .h, .in, .cc 파일 선택"""
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in", ".cc")):
                yield os.path.join(dirpath, fn)

def load_fp_data(json_path: str) -> Tuple[Set[str], Dict[str, Set[str]]]:
    """JSON 파일에서 함수 포인터 이름과 할당 가능한 함수들 로드
    
    Returns:
        (fp_names, fp_to_functions): 함수 포인터 이름 집합과 fp -> 함수 이름 집합 매핑
    """
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        fp_names = set()
        fp_to_functions = defaultdict(set)
        
        for item in data:
            if 'fp_name' not in item:
                continue
            
            fp_name = item['fp_name']
            fp_names.add(fp_name)
            
            if 'assigned_fn' in item and item['assigned_fn']:
                for func_name in item['assigned_fn']:
                    # **수정: "0"과 NULL도 포함**
                    if func_name:
                        fp_to_functions[fp_name].add(func_name)
        
        return fp_names, dict(fp_to_functions)
    
    except Exception as e:
        print(f"[ERROR] JSON 파일 로드 실패: {e}")
        sys.exit(1)

def find_struct_boundaries_in_original(content: str) -> List[Tuple[int, int]]:
    """원본 파일에서 직접 구조체 경계 찾기"""
    boundaries = []
    # typedef도 포함!
    pattern = re.compile(r'\b(?:typedef\s+)?(?:struct|union)(?:\s+\w+)?\s*\{', re.MULTILINE)
    
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
            # 세미콜론까지 포함
            while pos < len(content) and content[pos] not in ';\n':
                pos += 1
            if pos < len(content) and content[pos] == ';':
                pos += 1
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
    
    # (*name) 이후 공백 건너뛰기
    start_pos = ptr_pattern.end()
    while start_pos < len(decl) and decl[start_pos].isspace():
        start_pos += 1
    
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
    
    return (fp_name, True)

def find_function_pointers_with_index(struct_content: str, known_fp_names: Set[str]) -> List[Tuple[str, int]]:
    """구조체 내용에서 함수 포인터와 인덱스 찾기 (수정됨)"""
    function_pointers = []
    
    brace_start = struct_content.find('{')
    brace_end = struct_content.rfind('}')
    if brace_start == -1 or brace_end == -1:
        return function_pointers
    
    body = struct_content[brace_start+1:brace_end]
    
    # 주석 제거
    body = re.sub(r'/\*.*?\*/', '', body, flags=re.DOTALL)
    body = re.sub(r'//.*?(?=\n|$)', '', body)
    
    # **수정: 여러 줄 선언을 한 줄로 합치기**
    body = re.sub(r'\s+', ' ', body)
    
    # 세미콜론으로 멤버 선언 분리
    declarations = [d.strip() for d in body.split(';') if d.strip()]
    
    # typedef 함수 포인터 패턴
    typedef_pattern = re.compile(r'(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function)\s+(\w+)')
    
    member_index = 0
    
    for decl in declarations:
        # 전처리기 제외
        if decl.startswith('#'):
            member_index += 1
            continue
        
        # 중괄호 포함 제외 (중첩 구조체)
        if '{' in decl or '}' in decl:
            member_index += 1
            continue
        
        # **수정: 비트필드도 인덱스 증가**
        if re.search(r':\s*\d+\s*$', decl):
            member_index += 1
            continue
        
        # **수정: 여러 변수 선언 처리 (int a, b, c;)**
        # 괄호 밖의 쉼표가 있으면 여러 멤버
        paren_depth = 0
        has_comma_outside = False
        for char in decl:
            if char == '(':
                paren_depth += 1
            elif char == ')':
                paren_depth -= 1
            elif char == ',' and paren_depth == 0:
                has_comma_outside = True
                break
        
        if has_comma_outside and '(*' not in decl:
            # 여러 멤버 선언: int a, b, c; → 3개
            parts = decl.split(',')
            member_index += len(parts)
            continue
        
        # typedef 패턴 확인
        typedef_match = typedef_pattern.search(decl)
        if typedef_match:
            fp_name = typedef_match.group(2)
            if fp_name and fp_name.isidentifier() and fp_name in known_fp_names:
                function_pointers.append((fp_name, member_index))
                member_index += 1
                continue
        
        # 일반 함수 포인터 패턴
        result = extract_function_pointer_pattern(decl)
        if result:
            fp_name, _ = result
            if fp_name and len(fp_name) > 1 and fp_name.isidentifier() and fp_name in known_fp_names:
                function_pointers.append((fp_name, member_index))
        
        # **수정: 모든 선언마다 인덱스 증가**
        member_index += 1
    
    return function_pointers

def find_structs_with_fp(content: str, known_fp_names: Set[str]) -> Dict[str, List[Tuple[str, int]]]:
    """파일 내용에서 함수 포인터를 가진 구조체 찾기 (JSON 기반)"""
    struct_fp_map = {}
    
    boundaries = find_struct_boundaries_in_original(content)
    
    for start_pos, end_pos in boundaries:
        struct_content = content[start_pos:end_pos]
        
        struct_name = extract_struct_name(struct_content)
        if not struct_name:
            continue
        
        function_pointers = find_function_pointers_with_index(struct_content, known_fp_names)
        
        if function_pointers:
            if struct_name not in struct_fp_map:
                struct_fp_map[struct_name] = []
            
            existing_fp_names = {fp[0] for fp in struct_fp_map[struct_name]}
            new_fps = [fp for fp in function_pointers if fp[0] not in existing_fp_names]
            
            if new_fps:
                struct_fp_map[struct_name].extend(new_fps)
    
    return struct_fp_map

def find_matching_brace(content: str, start_pos: int) -> int:
    """시작 위치의 { 에 매칭되는 } 찾기
    
    Args:
        content: 전체 문자열
        start_pos: '{' 문자의 위치
    
    Returns:
        매칭되는 '}' 위치, 찾지 못하면 -1
    """
    if start_pos >= len(content) or content[start_pos] != '{':
        return -1
    
    depth = 1
    pos = start_pos + 1
    
    while pos < len(content) and depth > 0:
        if content[pos] == '{':
            depth += 1
        elif content[pos] == '}':
            depth -= 1
        pos += 1
    
    return pos - 1 if depth == 0 else -1

def modify_struct_initialization(content: str, struct_name: str, fp_list: List[Tuple[str, int]], 
                                fp_to_functions: Dict[str, Set[str]], verbose: bool = False) -> str:
    """구조체 초기화에 signature 필드 추가"""
    
    # 함수 포인터 인덱스 맵 생성
    fp_index_map = {idx: fp_name for fp_name, idx in fp_list}
    
    # 초기화 패턴 찾기 (2_1과 동일하게 간단하고 포괄적으로)
    # struct_name varname = { ... } 형태를 모두 매칭
    # typedef struct로 정의된 경우 struct 키워드 없이 사용되므로 유연하게 처리
    init_pattern = re.compile(
        rf'(?:const\s+|static\s+|extern\s+|struct\s+)*{re.escape(struct_name)}\s+(\w+)\s*=\s*\{{',
        re.MULTILINE
    )
    
    modified_content = content
    offset = 0
    
    for match in init_pattern.finditer(content):
        var_name = match.group(1)
        init_start = match.start() + offset
        brace_start = match.end() - 1 + offset
        
        # 매칭되는 닫는 중괄호 찾기
        brace_end = find_matching_brace(modified_content, brace_start)
        if brace_end == -1:
            if verbose:
                print(f"    [WARN] {var_name}: 중괄호 매칭 실패")
            continue
        
        # ; 까지 찾기
        init_end = brace_end + 1
        while init_end < len(modified_content) and modified_content[init_end] not in ';\n':
            init_end += 1
        if init_end < len(modified_content) and modified_content[init_end] == ';':
            init_end += 1
        
        # 초기화 내용 추출
        init_body = modified_content[brace_start+1:brace_end]
        
        # 주석 제거한 버전
        init_body_clean = re.sub(r'/\*.*?\*/', '', init_body, flags=re.DOTALL)
        init_body_clean = re.sub(r'//.*?(?=\n|$)', '', init_body_clean)
        
        # **수정: designated initializer (.field = value) 처리**
        # designated initializer가 있는지 확인
        if re.search(r'\.\w+\s*=', init_body_clean):
            if verbose:
                print(f"    [SKIP] {var_name}: designated initializer 사용 중")
            continue
        
        # 초기화 값들을 콤마로 분리
        values = []
        depth = 0
        current_value = []
        
        for char in init_body_clean:
            if char in '({[':
                depth += 1
                current_value.append(char)
            elif char in ')}]':
                depth -= 1
                current_value.append(char)
            elif char == ',' and depth == 0:
                val = ''.join(current_value).strip()
                # **수정: 빈 값은 "0"으로 처리**
                values.append(val if val else "0")
                current_value = []
            else:
                current_value.append(char)
        
        val = ''.join(current_value).strip()
        values.append(val if val else "0")
        
        # 함수 포인터 인덱스에 해당하는 실제 함수 이름 추출
        fp_assignments = {}
        
        for idx, value in enumerate(values):
            if idx in fp_index_map:
                fp_name = fp_index_map[idx]
                
                # 값에서 함수 이름 추출
                value_clean = value.strip()
                
                # 주석 제거
                value_clean = re.sub(r'/\*.*?\*/', '', value_clean).strip()
                
                # 함수 이름 추출 (& 제거, 식별자만)
                func_match = re.match(r'^\s*&?(\w+)\s*$', value_clean)
                if func_match:
                    func_name = func_match.group(1)
                    
                    # **수정: 0, NULL도 처리**
                    if func_name in ('0', 'NULL'):
                        fp_assignments[fp_name] = func_name
                    elif func_name.isidentifier():
                        # **수정: JSON 검증을 완화 - JSON은 힌트일 뿐**
                        # 함수 이름이 유효하면 일단 추가 (JSON에 없어도 OK)
                        fp_assignments[fp_name] = func_name
                        
                        # 디버깅: JSON에 없으면 경고만 출력
                        if verbose and fp_name in fp_to_functions:
                            if func_name not in fp_to_functions[fp_name] and func_name not in ('0', 'NULL'):
                                print(f"    [INFO] {fp_name}: {func_name}이(가) JSON에 없음 (추가됨)")
        
        if not fp_assignments:
            if verbose:
                print(f"    [SKIP] {var_name}: 유효한 함수 포인터 할당 없음")
            continue
        
        # signature 라인 생성
        signature_lines = []
        for fp_name, _ in sorted(fp_list, key=lambda x: x[1]):
            if fp_name in fp_assignments:
                func_name = fp_assignments[fp_name]
                # **수정: 0인 경우 [fp_0_enum] 형태로**
                if func_name == '0':
                    signature_lines.append(f"  .{fp_name}_signature = {fp_name}_0")
                elif func_name == 'NULL' :
                    signature_lines.append(f"  .{fp_name}_signature = {fp_name}_NULL")
                else:
                    signature_lines.append(f"  .{fp_name}_signature = {fp_name}_{func_name}")
        
        if not signature_lines:
            continue
        
        # **수정: 콤마 중복 방지**
        # 닫는 중괄호 앞 내용 확인 (주석 제거)
        before_brace_clean = init_body_clean.rstrip()
        
        # 마지막 유효 문자 찾기
        has_trailing_comma = False
        for i in range(len(before_brace_clean) - 1, -1, -1):
            c = before_brace_clean[i]
            if c.isspace():
                continue
            if c == ',':
                has_trailing_comma = True
            break
        
        # signature 텍스트 생성
        if has_trailing_comma:
            # 이미 콤마가 있으면 콤마 없이 시작
            signature_text = "\n" + ",\n".join(signature_lines) + "\n"
        else:
            # 콤마가 없으면 콤마 추가
            signature_text = ",\n" + ",\n".join(signature_lines) + "\n"
        
        new_init = modified_content[init_start:brace_end] + signature_text + modified_content[brace_end:init_end]
        
        # 교체
        modified_content = modified_content[:init_start] + new_init + modified_content[init_end:]
        offset += len(new_init) - (init_end - init_start)
        
        if verbose:
            print(f"    [MODIFY] {var_name}: {len(signature_lines)}개 signature 추가")
            for fp_name, func_name in fp_assignments.items():
                print(f"      {fp_name} = {func_name}")
    
    return modified_content

def process_file_with_global_map(file_path: str, global_struct_fp_map: Dict[str, List[Tuple[str, int]]], 
                                 fp_to_functions: Dict[str, Set[str]], verbose: bool = False, 
                                 dry_run: bool = False) -> bool:
    """전역 구조체 맵을 사용해 파일 처리 (JSON 기반)"""
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        original_content = content
        modified = False
        
        if verbose:
            print(f"\n  [FILE] {os.path.basename(file_path)}")
        
        # 전역 구조체 맵의 모든 구조체에 대해 초기화 수정 시도
        for struct_name, fp_list in global_struct_fp_map.items():
            content = modify_struct_initialization(content, struct_name, fp_list, fp_to_functions, verbose)
        
        if content != original_content:
            modified = True
            
            if not dry_run:
                # 백업
                backup_path = file_path + '.bak'
                shutil.copy2(file_path, backup_path)
                
                # 저장
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                
                if verbose:
                    print(f"  [SAVED] 파일 수정 완료 (백업: {backup_path})")
        
        return modified
    
    except Exception as e:
        if verbose:
            print(f"  [ERROR] {file_path}: {e}")
        return False

def main():
    parser = argparse.ArgumentParser(
        description="구조체 초기화에 signature 필드 추가 (JSON 기반, 0/NULL 포함, 콤마 중복 방지)"
    )
    parser.add_argument("--source-dir", required=True, help="소스 코드 디렉토리")
    parser.add_argument("--json", required=True, help="struct_fp_resolved.json 파일 경로")
    parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    parser.add_argument("--dry-run", "-d", action="store_true", help="실제 수정 없이 미리보기")
    
    args = parser.parse_args()
    
    if not os.path.exists(args.source_dir):
        print(f"[ERROR] 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
        sys.exit(1)
    
    if not os.path.exists(args.json):
        print(f"[ERROR] JSON 파일을 찾을 수 없음: {args.json}")
        sys.exit(1)
    
    # JSON에서 함수 포인터 정보 로드
    known_fp_names, fp_to_functions = load_fp_data(args.json)
    print(f"[INFO] JSON에서 {len(known_fp_names)}개 함수 포인터 로드됨")
    print(f"[INFO] 총 {sum(len(funcs) for funcs in fp_to_functions.values())}개 함수 매핑 발견")
    
    print(f"[INFO] 소스 디렉토리: {args.source_dir}")
    
    if args.dry_run:
        print(f"[INFO] DRY-RUN 모드: 실제 파일은 수정되지 않습니다")
    
    # 파일 검색 - iter_target_files 사용
    files_to_process = list(iter_target_files(args.source_dir))
    print(f"[INFO] 총 {len(files_to_process)}개 파일 발견")
    
    # ===== 1단계: 모든 파일에서 구조체와 함수 포인터 정보 수집 =====
    print(f"\n[1단계] 구조체 정보 수집 중...")
    global_struct_fp_map = {}
    
    for file_path in files_to_process:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 이 파일에서 구조체 찾기
            struct_fp_map = find_structs_with_fp(content, known_fp_names)
            
            # 전역 맵에 병합
            for struct_name, fp_list in struct_fp_map.items():
                if struct_name not in global_struct_fp_map:
                    global_struct_fp_map[struct_name] = []
                
                # 중복 제거하면서 병합
                existing_fp_names = {fp[0] for fp in global_struct_fp_map[struct_name]}
                new_fps = [fp for fp in fp_list if fp[0] not in existing_fp_names]
                
                if new_fps:
                    global_struct_fp_map[struct_name].extend(new_fps)
                    
        except Exception as e:
            if args.verbose:
                print(f"  [WARN] {file_path}: {e}")
            continue
    
    if not global_struct_fp_map:
        print("[INFO] 함수 포인터를 가진 구조체를 찾을 수 없음")
        sys.exit(0)
    
    print(f"[INFO] {len(global_struct_fp_map)}개 구조체 발견:")
    for struct_name, fp_list in global_struct_fp_map.items():
        print(f"  - {struct_name}: {len(fp_list)}개 함수 포인터")
        if args.verbose:
            for fp_name, idx in fp_list:
                print(f"      [{idx}] {fp_name}")
    
    # ===== 2단계: 각 파일에서 초기화 수정 =====
    print(f"\n[2단계] 구조체 초기화 수정 중...")
    modified_count = 0
    
    for file_path in files_to_process:
        if process_file_with_global_map(file_path, global_struct_fp_map, fp_to_functions, args.verbose, args.dry_run):
            modified_count += 1
    
    # ===== 완료 =====
    print(f"\n[완료] {modified_count}개 파일 수정됨")
    
    if args.dry_run:
        print(f"[INFO] 실제 수정하려면 --dry-run 옵션을 제거하세요")
    else:
        print(f"[INFO] 백업 파일: *.bak")

if __name__ == "__main__":
    main()