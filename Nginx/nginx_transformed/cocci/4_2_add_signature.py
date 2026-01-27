#!/usr/bin/env python3
"""
구조체에 fp_signature 추가 (JSON 기반 버전)
- struct_fp_resolved.json에서 함수 포인터 목록 로드
- 구조체 정의를 찾고 해당 함수 포인터 식별
- 각 함수 포인터마다 int *{fp_name}_signature; 추가
- 반드시 구조체 닫는 } 직전에 추가 (컴파일 매크로 무시)
- iter_target_files로 .c, .h, .in, .cc 파일 모두 순회
"""

import argparse
import os
import re
import sys
import json
from typing import Dict, List, Set, Tuple, Optional
import shutil


def iter_target_files(source_dir: str):
    """프로젝트 트리를 순회하여 .c, .h, .in, .cc 파일 선택"""
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in", ".cc")):
                yield os.path.join(dirpath, fn)


def load_fp_data(json_path: str) -> Set[str]:
    """JSON 파일에서 함수 포인터 이름 목록 로드"""
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        fp_names = {item['fp_name'] for item in data if 'fp_name' in item}
        return fp_names
    except Exception as e:
        print(f"[ERROR] JSON 파일 로드 실패: {e}")
        sys.exit(1)


def find_struct_boundaries_in_original(content: str) -> List[Tuple[int, int]]:
    """원본 파일에서 직접 구조체 경계 찾기"""
    boundaries = []
    # typedef도 포함해야 함!
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
            # 닫는 중괄호 이후 세미콜론까지 포함
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


def normalize_whitespace(text: str) -> str:
    """멀티라인 선언을 한 줄로 정규화"""
    # 개행과 연속된 공백을 단일 공백으로 변환
    text = re.sub(r'\s+', ' ', text)
    return text.strip()


def extract_function_pointer_pattern(decl: str) -> Optional[Tuple[str, bool]]:
    """선언에서 함수 포인터 패턴 추출 - 모든 함수 포인터 형태 처리
    
    처리 패턴:
    - void (*fp)(args)              : 일반 함수 포인터
    - void *(*fp)(args)             : 포인터 반환 함수 포인터
    - void **(*fp)(args)            : 이중 포인터 반환 함수 포인터
    - char *(*fp) (args)            : 공백이 있는 경우
    """
    # 먼저 공백 정규화
    decl = normalize_whitespace(decl)
    
    # 함수 포인터 패턴: (*fp_name) 찾기
    # 앞에 *가 있을 수도 있음 (반환 타입이 포인터인 경우)
    ptr_pattern = re.search(r'\(\s*\*\s*(\w+)\s*\)', decl)
    
    if not ptr_pattern:
        return None
    
    fp_name = ptr_pattern.group(1)
    start_pos = ptr_pattern.end()
    
    # 함수 포인터 뒤에 반드시 (args) 형태가 와야 함
    # 공백 건너뛰기
    while start_pos < len(decl) and decl[start_pos].isspace():
        start_pos += 1
    
    if start_pos >= len(decl) or decl[start_pos] != '(':
        return None
    
    # 괄호 짝 맞추기
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
    """구조체 내용에서 함수 포인터와 인덱스 찾기"""
    function_pointers = []
    
    brace_start = struct_content.find('{')
    brace_end = struct_content.rfind('}')
    if brace_start == -1 or brace_end == -1:
        return function_pointers
    
    body = struct_content[brace_start+1:brace_end]
    
    # 주석을 공백으로 치환
    body = re.sub(r'/\*.*?\*/', ' ', body, flags=re.DOTALL)
    body = re.sub(r'//.*?(?=\n|$)', ' ', body)
    
    # 전처리기 지시자를 별도로 제거
    body = re.sub(r'#\s*(?:ifdef|ifndef|endif|if|else|elif|define|undef|include|pragma).*?(?=\n|$)', ' ', body)
    
    # **중요: 공백 정규화를 여기서 하지 말고, 선언 분리 후에 각 선언마다 적용**
    # 괄호 깊이 고려한 선언 분리 (원본 body 사용)
    declarations = []
    current_decl = []
    depth = 0
    
    for char in body + ';':
        if char == '(':
            depth += 1
            current_decl.append(char)
        elif char == ')':
            depth -= 1
            current_decl.append(char)
        elif char == ';' and depth == 0:
            decl = ''.join(current_decl).strip()
            if decl:
                declarations.append(decl)
            current_decl = []
        else:
            current_decl.append(char)
    
    # typedef 함수 포인터 패턴 (실제 typedef로 정의된 함수 포인터 타입만)
    # 예: sqlite3_callback xCallback; 같은 형태
    typedef_pattern = re.compile(
        r'\b(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function)\s+(\w+)'
    )
    
    member_index = 0
    
    for decl in declarations:
        # **중요: 각 선언마다 공백 정규화**
        decl_normalized = normalize_whitespace(decl)
        
        # 전처리기는 이미 제거되었으므로 이 검사는 필요없지만 안전장치로 유지
        if not decl_normalized or decl_normalized.startswith('#'):
            continue
        
        # 중괄호 포함 제외 (중첩 구조체)
        if '{' in decl_normalized or '}' in decl_normalized:
            continue
        
        # 비트필드도 인덱스 증가
        if re.search(r':\s*\d+\s*$', decl_normalized):
            member_index += 1
            continue
        
        # 이미 추가된 signature 필드는 건너뛰기
        if re.match(r'int\s+\*?\s*\w+_signature\s*$', decl_normalized):
            member_index += 1
            continue
        
        # 여러 변수 선언 처리 (int a, b, c;)
        paren_depth = 0
        has_comma_outside = False
        for char in decl_normalized:
            if char == '(':
                paren_depth += 1
            elif char == ')':
                paren_depth -= 1
            elif char == ',' and paren_depth == 0:
                has_comma_outside = True
                break
        
        if has_comma_outside and '(*' not in decl_normalized:
            # 여러 멤버 선언: int a, b, c; → 3개
            parts = decl_normalized.split(',')
            member_index += len(parts)
            continue
        
        # typedef 패턴 확인 (sqlite 전용)
        typedef_match = typedef_pattern.search(decl_normalized)
        if typedef_match:
            fp_name = typedef_match.group(2)
            if fp_name and fp_name.isidentifier() and fp_name in known_fp_names:
                function_pointers.append((fp_name, member_index))
                member_index += 1
                continue
        
        # 일반 함수 포인터 패턴 (이게 핵심!)
        result = extract_function_pointer_pattern(decl_normalized)
        if result:
            fp_name, _ = result
            if fp_name and len(fp_name) > 1 and fp_name.isidentifier() and fp_name in known_fp_names:
                function_pointers.append((fp_name, member_index))
        
        # 모든 선언마다 인덱스 증가
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


def add_signatures_to_struct(content: str, struct_name: str, fp_list: List[Tuple[str, int]], verbose: bool = False) -> str:
    """구조체 닫는 중괄호 직전에 fp_signature 포인터 추가"""
    
    # 모든 구조체 경계 찾기
    boundaries = find_struct_boundaries_in_original(content)
    
    # 해당 이름의 구조체 찾기
    target_start = None
    target_end = None
    
    for start_pos, end_pos in boundaries:
        struct_content = content[start_pos:end_pos]
        name = extract_struct_name(struct_content)
        
        if name == struct_name:
            target_start = start_pos
            target_end = end_pos
            break
    
    if target_start is None:
        if verbose:
            print(f"    [WARN] 구조체 {struct_name}을 찾을 수 없음")
        return content
    
    struct_content = content[target_start:target_end]

    # 구조체 내 존재하는 시그니처를 전부 조사하고, "없는 것만" 추가
    existing = set()
    for fp_name, _ in fp_list:
        pat = re.compile(rf'\bint\s+\*?\s*{re.escape(fp_name)}_signature\s*;')
        if pat.search(struct_content):
            existing.add(fp_name)

    missing = [(fp_name, idx) for fp_name, idx in fp_list if fp_name not in existing]
    if not missing:
        if verbose:
            print(f"    [SKIP] {struct_name}: 모든 시그니처가 이미 존재")
        return content

    # 닫는 중괄호 위치 찾기
    closing_brace_pos = struct_content.rfind('}')
    if closing_brace_pos == -1:
        return content
    
    # 인덴트 계산
    lines_in_struct = struct_content[:closing_brace_pos].split('\n')
    indent = "  "
    
    if lines_in_struct:
        for line in reversed(lines_in_struct):
            stripped = line.strip()
            if stripped and not stripped.startswith('#'):
                indent_match = re.match(r'^(\s*)', line)
                if indent_match:
                    indent = indent_match.group(1)
                    if not indent:
                        indent = "  "
                    break
    
    # signature 라인 생성
    signature_lines = [f"{indent}int {fp_name}_signature;" for fp_name, _ in sorted(missing, key=lambda x: x[1])]
    signature_text = "\n" + "\n".join(signature_lines) + "\n"
    
    # 닫는 중괄호 직전에 삽입 (절대 위치)
    insert_pos = target_start + closing_brace_pos
    
    if verbose:
        print(f"    [MODIFY] {struct_name}: {len(missing)}개 signature 추가")
        for fp_name, idx in sorted(missing, key=lambda x: x[1]):
            print(f"      [{idx}] {fp_name}_signature")

    return content[:insert_pos] + signature_text + content[insert_pos:]


def process_file(file_path: str, known_fp_names: Set[str], verbose: bool = False, dry_run: bool = False) -> bool:
    """파일별로 즉시 처리"""
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        original_content = content
        
        # 이 파일에서 함수 포인터를 가진 구조체 찾기
        struct_fp_map = find_structs_with_fp(content, known_fp_names)
        
        if not struct_fp_map:
            return False
        
        if verbose:
            print(f"\n  [FILE] {os.path.basename(file_path)}")
        
        # 각 구조체의 위치를 찾아서 정렬 (뒤에서부터 처리하기 위해)
        struct_positions = []
        
        for struct_name, fp_list in struct_fp_map.items():
            if verbose:
                print(f"    [STRUCT] {struct_name}: {len(fp_list)}개 함수 포인터")
                for fp_name, idx in fp_list:
                    print(f"      [{idx}] {fp_name}")
            
            # 구조체 위치 찾기
            # 패턴 1: struct name
            pattern1 = re.compile(
                rf'\b(?:struct|union)\s+{re.escape(struct_name)}\s*\{{',
                re.MULTILINE
            )
            # 패턴 2: typedef struct { ... } name
            pattern2 = re.compile(
                rf'\btypedef\s+(?:struct|union)\s*\{{.*?\}}\s*{re.escape(struct_name)}\s*;',
                re.MULTILINE | re.DOTALL
            )
            
            match1 = pattern1.search(content)
            match2 = pattern2.search(content)
            
            if match1 and (not match2 or match1.start() < match2.start()):
                pos = match1.start()
            elif match2:
                pos = match2.start()
            else:
                continue
            
            struct_positions.append((pos, struct_name, fp_list))
        
        # 뒤에서부터 처리 (위치가 변경되지 않도록)
        struct_positions.sort(reverse=True)
        
        for pos, struct_name, fp_list in struct_positions:
            content = add_signatures_to_struct(content, struct_name, fp_list, verbose)
        
        # 변경사항이 있으면 저장
        if content != original_content:
            if not dry_run:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                
                if verbose:
                    print(f"  [SAVED] 파일 수정 완료")
            
            return True
        
        return False
    
    except Exception as e:
        if verbose:
            print(f"  [ERROR] {file_path}: {e}")
        return False


def main():
    parser = argparse.ArgumentParser(
        description="구조체에 fp_signature 포인터 추가 (JSON 기반, 닫는 중괄호 직전)"
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
    
    # JSON에서 함수 포인터 목록 로드
    known_fp_names = load_fp_data(args.json)
    print(f"[INFO] JSON에서 {len(known_fp_names)}개 함수 포인터 로드됨")
    
    print(f"[INFO] 소스 디렉토리: {args.source_dir}")
    
    if args.dry_run:
        print(f"[INFO] DRY-RUN 모드: 실제 파일은 수정되지 않습니다")
    
    # iter_target_files로 파일 순회
    print(f"[INFO] .c, .h, .in, .cc 파일 처리 중...")
    
    files_to_process = list(iter_target_files(args.source_dir))
    print(f"[INFO] 총 {len(files_to_process)}개 파일 발견")
    
    modified_count = 0
    
    for file_path in files_to_process:
        if process_file(file_path, known_fp_names, args.verbose, args.dry_run):
            modified_count += 1
    
    print(f"\n[완료] {modified_count}개 파일 수정됨")
    
    if args.dry_run:
        print(f"[INFO] 실제 수정하려면 --dry-run 옵션을 제거하세요")

if __name__ == "__main__":
    main()