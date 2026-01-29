#!/usr/bin/env python3
"""
구조체 내 함수 포인터 할당 추출 (typedef 별칭 모두 지원)

개선사항:
- 멀티라인 함수 포인터 선언 지원 강화
- 함수 포인터 패턴 매칭 개선
- struct name { } name2, name3; 형태의 모든 별칭 추출
- typedef struct name { } alias1, alias2; 형태 지원
- 각 구조체의 모든 이름으로 할당 패턴 검색
- iter_target_files로 깔끔한 파일 탐색 (.c, .h, .in, .cc)
- 0과 NULL도 assigned_fn에 포함
"""

import argparse
import os
import re
import sys
import json
from typing import Dict, List, Set, Tuple, Optional
from collections import defaultdict

# ==========================================================
# 파일 탐색
# ==========================================================

def iter_target_files(source_dir: str):
    """
    프로젝트 트리를 순회하여 .c, .h, .in, .cc 파일 선택
    """
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in", ".cc")):
                yield os.path.join(dirpath, fn)


# ==========================================================
# C 키워드 필터링
# ==========================================================

C_KEYWORDS = {
    'if', 'else', 'elif', 'endif', 'ifdef', 'ifndef', 'defined',
    'for', 'while', 'do', 'switch', 'case', 'default', 'break', 'continue',
    'return', 'goto',
    'void', 'char', 'short', 'int', 'long', 'float', 'double',
    'signed', 'unsigned', 'const', 'volatile', 'restrict',
    'static', 'extern', 'auto', 'register', 'inline',
    'struct', 'union', 'enum', 'typedef',
    'sizeof', 'typeof', '__typeof__',
    '_Bool', '_Complex', '_Imaginary',
    'define', 'undef', 'include', 'pragma',
    'error', 'warning', 'line',
}

ALL_KEYWORDS = C_KEYWORDS

def is_valid_function_name(name: str) -> bool:
    """유효한 함수명인지 검증 (0과 NULL도 허용)"""
    if not name:
        return False
    # **수정: 0과 NULL 허용**
    if name in ('0', 'NULL'):
        return True
    if name.lower() in ALL_KEYWORDS:
        return False
    if not name.isidentifier():
        return False
    return True


# ==========================================================
# 구조체 별칭 추출
# ==========================================================

def extract_all_struct_names(struct_content: str) -> List[str]:
    """
    구조체의 모든 이름(별칭) 추출
    
    지원 패턴:
    1. struct name { ... };
    2. typedef struct name { ... } alias1;
    3. typedef struct name { ... } alias1, alias2, *alias3;
    4. typedef struct { ... } alias1;
    5. struct name { ... } var1, var2;
    """
    names = []
    
    # 패턴 1: struct/union 태그 이름 추출
    tag_pattern = re.compile(r'\b(?:struct|union)\s+(\w+)\s*\{')
    tag_match = tag_pattern.search(struct_content)
    if tag_match:
        tag_name = tag_match.group(1)
        names.append(tag_name)
    
    # 패턴 2-4: typedef 별칭들 추출
    typedef_pattern = re.compile(r'\}\s*([^;]+);', re.DOTALL)
    typedef_match = typedef_pattern.search(struct_content)
    
    if typedef_match and struct_content.strip().startswith('typedef'):
        aliases_str = typedef_match.group(1)
        
        for alias in aliases_str.split(','):
            alias = alias.strip()
            alias = re.sub(r'\*+', '', alias).strip()
            alias = re.sub(r'\[.*?\]', '', alias).strip()
            
            if alias and alias.isidentifier() and alias not in ALL_KEYWORDS:
                names.append(alias)
    
    return list(set(names))


# ==========================================================
# 구조체 및 함수 포인터 검색
# ==========================================================

def find_struct_boundaries_in_original(content: str) -> List[Tuple[int, int]]:
    """원본 파일에서 직접 구조체 경계 찾기"""
    boundaries = []
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
            while pos < len(content) and content[pos] not in ';\n':
                pos += 1
            if pos < len(content):
                pos += 1
            boundaries.append((start_pos, pos))
    
    return boundaries


def normalize_whitespace(text: str) -> str:
    """멀티라인 선언을 한 줄로 정규화"""
    # 개행과 연속된 공백을 단일 공백으로 변환
    text = re.sub(r'\s+', ' ', text)
    return text.strip()


def extract_function_pointer_pattern(decl: str) -> Optional[Tuple[str, str]]:
    """
    선언에서 함수 포인터 패턴 추출 (개선됨)
    
    지원 패턴:
    - return_type (*fp_name)(args)
    - return_type (*fp_name) (args)  # 공백 있음
    - void (*writer) (ngx_log_t *log, ...)  # 멀티라인
    """
    # 먼저 정규화
    decl = normalize_whitespace(decl)
    
    # 함수 포인터 패턴: (*fp_name) 찾기
    ptr_pattern = re.search(r'\(\s*\*\s*(\w+)\s*\)', decl)
    if not ptr_pattern:
        return None
    
    fp_name = ptr_pattern.group(1)
    
    # 함수 포인터 뒤에 괄호가 있는지 확인
    after_ptr = decl[ptr_pattern.end():].strip()
    if not after_ptr.startswith('('):
        return None
    
    # 매개변수 괄호 찾기
    start_pos = ptr_pattern.end()
    # 공백 건너뛰기
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
    
    # 반환 타입 추출 ((*fp_name) 앞부분)
    return_type = decl[:ptr_pattern.start()].strip()
    
    # 불필요한 키워드 제거
    return_type = re.sub(r'\b(const|volatile|static|extern|inline)\b', '', return_type).strip()
    
    return (return_type, fp_name)


def find_function_pointers_with_index(struct_content: str, verbose: bool = False) -> List[Tuple[str, str, str, int]]:
    """
    구조체 내용에서 함수 포인터와 인덱스 찾기 (개선됨)
    
    Returns:
        List of (return_type, fp_name, type_info, member_index)
    """
    function_pointers = []
    
    brace_start = struct_content.find('{')
    brace_end = struct_content.rfind('}')
    if brace_start == -1 or brace_end == -1:
        return function_pointers
    
    body = struct_content[brace_start+1:brace_end]
    
    # 주석 제거
    body = re.sub(r'//.*?(?=\n|$)', '', body)
    body = re.sub(r'/\*.*?\*/', ' ', body, flags=re.DOTALL)
    
    # 개선: 멀티라인을 고려하여 선언 분리
    # 세미콜론으로 분리하되, 각 선언의 개행을 공백으로 변환
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
    
    # typedef 함수 포인터 패턴 (프로젝트별로 조정 필요)
    typedef_pattern = re.compile(r'(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function|ngx_msec_t|ngx_int_t|ngx_uint_t)\s+(\w+)')
    
    member_index = 0
    
    for decl in declarations:
        decl_normalized = normalize_whitespace(decl)
        
        if not decl_normalized or decl_normalized.startswith('#'):
            continue
        
        # 중첩 구조체 건너뛰기
        if '{' in decl_normalized or '}' in decl_normalized:
            continue
        
        # 비트 필드 건너뛰기
        if re.search(r':\s*\d+\s*$', decl_normalized):
            member_index += 1
            continue
        
        # typedef 함수 포인터 체크
        typedef_match = typedef_pattern.search(decl_normalized)
        if typedef_match:
            return_type = typedef_match.group(1)
            fp_name = typedef_match.group(2)
            if fp_name and fp_name.isidentifier():
                fp_info = (return_type, fp_name, "typedef", member_index)
                if not any(existing[1] == fp_info[1] for existing in function_pointers):
                    function_pointers.append(fp_info)
                    if verbose:
                        print(f"  [TYPEDEF FP] {fp_name} (index={member_index})")
        else:
            # 일반 함수 포인터 패턴 체크
            result = extract_function_pointer_pattern(decl_normalized)
            if result:
                return_type, fp_name = result
                if fp_name and len(fp_name) > 1 and fp_name.isidentifier():
                    fp_info = (return_type, fp_name, "", member_index)
                    if not any(existing[1] == fp_info[1] for existing in function_pointers):
                        function_pointers.append(fp_info)
                        if verbose:
                            print(f"  [FP] {return_type} (*{fp_name})(...) (index={member_index})")
        
        member_index += 1
    
    return function_pointers


def find_struct_with_function_pointers(source_dir: str, verbose: bool = False) -> Dict[str, Tuple[List[str], List[Tuple[str, str, str, int]]]]:
    """
    함수 포인터를 가진 구조체 검색 (모든 별칭 포함)
    
    Returns:
        Dict[primary_name, (aliases, function_pointers)]
    """
    struct_info = {}
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
        except Exception as e:
            if verbose:
                print(f"[WARN] 파일 읽기 실패: {file_path}: {e}")
            continue
        
        boundaries = find_struct_boundaries_in_original(content)
        
        for start, end in boundaries:
            struct_content = content[start:end]
            
            fps = find_function_pointers_with_index(struct_content, verbose)
            
            if fps:
                aliases = extract_all_struct_names(struct_content)
                
                if aliases:
                    primary_name = aliases[0]
                    
                    if primary_name not in struct_info:
                        struct_info[primary_name] = (aliases, fps)
                        if verbose:
                            print(f"\n[STRUCT] {primary_name}")
                            print(f"  Aliases: {', '.join(aliases)}")
                            print(f"  Found {len(fps)} function pointers")
                    else:
                        existing_aliases, existing_fps = struct_info[primary_name]
                        merged_aliases = list(set(existing_aliases + aliases))
                        
                        merged_fps = existing_fps[:]
                        for new_fp in fps:
                            if not any(existing[1] == new_fp[1] for existing in merged_fps):
                                merged_fps.append(new_fp)
                        
                        struct_info[primary_name] = (merged_aliases, merged_fps)
    
    return struct_info


def find_struct_initializations(
    source_dir: str,
    struct_info_map: Dict[str, Tuple[List[str], List[Tuple[str, str, str, int]]]],
    verbose: bool = False
) -> Dict[str, Set[str]]:
    """구조체 초기화에서 함수 포인터 할당 찾기 (모든 별칭 고려, 0과 NULL 포함)"""
    
    struct_fp_index_map = {}
    for primary_name, (aliases, fps) in struct_info_map.items():
        for alias in aliases:
            fp_map = {}
            for return_type, fp_name, type_info, idx in fps:
                fp_map[idx] = fp_name
            struct_fp_index_map[alias] = fp_map
    
    fp_assignments = defaultdict(set)
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            for struct_name in struct_fp_index_map.keys():
                pattern = rf'\b{re.escape(struct_name)}\s+\w+\s*=\s*\{{([^}}]+)\}}'
                
                for match in re.finditer(pattern, content_no_comments, re.DOTALL):
                    init_content = match.group(1)
                    
                    values = []
                    depth = 0
                    current_value = []
                    
                    for char in init_content:
                        if char == '{':
                            depth += 1
                            current_value.append(char)
                        elif char == '}':
                            depth -= 1
                            current_value.append(char)
                        elif char == ',' and depth == 0:
                            val = ''.join(current_value).strip()
                            values.append(val)
                            current_value = []
                        else:
                            current_value.append(char)
                    
                    val = ''.join(current_value).strip()
                    values.append(val)
                    
                    fp_index_map = struct_fp_index_map[struct_name]
                    
                    for idx, value in enumerate(values):
                        if idx in fp_index_map:
                            fp_name = fp_index_map[idx]
                            value_clean = value.strip()
                            
                            func_match = re.match(r'^\s*&?(\w+)\s*$', value_clean)
                            if func_match:
                                func_name = func_match.group(1)
                                
                                # **수정: 0과 NULL도 무조건 추가**
                                if is_valid_function_name(func_name):
                                    fp_assignments[fp_name].add(func_name)
                                    
                                    if verbose:
                                        print(f"[INIT] {struct_name}.{fp_name}[{idx}] = {func_name}")
        
        except Exception as e:
            if verbose:
                print(f"[WARN] Init parse failed {file_path}: {e}")
    
    return dict(fp_assignments)


def find_named_assignments(
    source_dir: str,
    fp_names: Set[str],
    verbose: bool = False
) -> Dict[str, Set[str]]:
    """.fpName = 패턴으로 함수 포인터 할당 찾기 (0과 NULL 포함)"""
    fp_assignments = defaultdict(set)
    
    assignment_patterns = []
    for fp_name in fp_names:
        assignment_patterns.append((
            fp_name,
            re.compile(rf'\w+->{re.escape(fp_name)}\s*=\s*&?(\w+)\s*[;,]', re.MULTILINE)
        ))
        assignment_patterns.append((
            fp_name,
            re.compile(rf'\w+\.{re.escape(fp_name)}\s*=\s*&?(\w+)\s*[;,]', re.MULTILINE)
        ))
    
    for file_path in iter_target_files(source_dir):
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            for fp_name, pattern in assignment_patterns:
                for match in pattern.finditer(content_no_comments):
                    func_name = match.group(1)
                    
                    # **수정: 0과 NULL도 무조건 추가**
                    if is_valid_function_name(func_name):
                        fp_assignments[fp_name].add(func_name)
                        
                        if verbose:
                            print(f"[ASSIGN] {fp_name} = {func_name}")
        
        except Exception as e:
            if verbose:
                print(f"[WARN] Named assignment failed {file_path}: {e}")
    
    return dict(fp_assignments)


# ==========================================================
# 결과 집계
# ==========================================================

def aggregate_results(
    struct_info_map: Dict[str, Tuple[List[str], List[Tuple[str, str, str, int]]]],
    init_assignments: Dict[str, Set[str]],
    named_assignments: Dict[str, Set[str]]
) -> List[Dict]:
    """결과 집계"""
    fp_info_map = {}
    
    for primary_name, (aliases, fps) in struct_info_map.items():
        for return_type, fp_name, type_info, idx in fps:
            if fp_name not in fp_info_map:
                fp_info_map[fp_name] = {
                    "struct_name": primary_name,
                    "struct_aliases": aliases,
                    "fp_index": idx,
                    "return_type": return_type,
                    "assigned_fn": set()
                }
    
    for fp_name, funcs in init_assignments.items():
        if fp_name in fp_info_map:
            fp_info_map[fp_name]["assigned_fn"].update(funcs)
    
    for fp_name, funcs in named_assignments.items():
        if fp_name in fp_info_map:
            fp_info_map[fp_name]["assigned_fn"].update(funcs)
    
    result = []
    for fp_name, info in sorted(fp_info_map.items()):
        result.append({
            "fp_name": fp_name,
            "struct_name": info["struct_name"],
            "struct_aliases": info["struct_aliases"],
            "fp_index": info["fp_index"],
            "assigned_fn": sorted(info["assigned_fn"]),
        })
    
    return result


# ==========================================================
# 메인
# ==========================================================

def main():
    parser = argparse.ArgumentParser(
        description="구조체 함수 포인터 할당 추출 (typedef 별칭 지원, 0/NULL 포함, 멀티라인 지원)",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python3 2_1_parsing_sfp_fixed.py --source-dir /path/to/source
  python3 2_1_parsing_sfp_fixed.py --source-dir . --verbose
        """
    )
    
    parser.add_argument("--source-dir", required=True, help="소스 디렉토리")
    parser.add_argument("--out", default="tmp_struct_fp.json", help="출력 JSON 파일")
    parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    
    args = parser.parse_args()
    
    if not os.path.exists(args.source_dir):
        print(f"❌ Error: 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
        sys.exit(1)
    
    print("🚀 구조체 함수 포인터 분석 시작 (typedef 별칭 지원, 0/NULL 포함, 멀티라인 지원)")
    print(f"   소스 디렉토리: {args.source_dir}")
    
    # Stage 1: 구조체 검색
    print(f"\n=== Stage 1: 함수 포인터를 가진 구조체 검색 (별칭 포함) ===")
    struct_info_map = find_struct_with_function_pointers(args.source_dir, args.verbose)
    
    if not struct_info_map:
        print("❌ 함수 포인터를 가진 구조체를 찾을 수 없음")
        sys.exit(0)
    
    total_fps = sum(len(fps) for _, fps in struct_info_map.values())
    total_aliases = sum(len(aliases) for aliases, _ in struct_info_map.values())
    print(f"✓ {len(struct_info_map)}개 구조체, {total_aliases}개 별칭, {total_fps}개 함수 포인터")
    
    # Stage 2: 할당 찾기
    print(f"\n=== Stage 2: 할당 패턴 분석 (모든 별칭 고려, 0/NULL 포함) ===")
    
    init_assignments = find_struct_initializations(args.source_dir, struct_info_map, args.verbose)
    init_count = sum(len(v) for v in init_assignments.values())
    print(f"✓ 초기화: {init_count}개 함수 할당")
    
    all_fp_names = set()
    for _, fps in struct_info_map.values():
        for _, fp_name, _, _ in fps:
            all_fp_names.add(fp_name)
    
    named_assignments = find_named_assignments(args.source_dir, all_fp_names, args.verbose)
    named_count = sum(len(v) for v in named_assignments.values())
    print(f"✓ Named 할당: {named_count}개 함수 할당")
    
    # Stage 3: 집계
    print(f"\n=== Stage 3: 결과 집계 ===")
    result = aggregate_results(struct_info_map, init_assignments, named_assignments)
    
    with open(args.out, 'w', encoding='utf-8') as f:
        json.dump(result, f, indent=2, ensure_ascii=False)
    
    print(f"💾 저장됨: {args.out}")
    
    total_assigned = sum(len(rec.get("assigned_fn", [])) for rec in result)
    filled = sum(1 for rec in result if rec.get("assigned_fn"))
    
    print(f"\n📊 통계:")
    print(f"   구조체: {len(struct_info_map)}개")
    print(f"   별칭: {total_aliases}개")
    print(f"   함수 포인터: {len(result)}개")
    print(f"   할당 정보 있음: {filled}개")
    print(f"   총 함수 할당: {total_assigned}개 (0/NULL 포함)")
    
    if args.verbose:
        print(f"\n=== 구조체 별칭 정보 ===")
        for primary_name, (aliases, _) in sorted(struct_info_map.items()):
            if len(aliases) > 1:
                print(f"  {primary_name}: {', '.join(aliases)}")
    
    print(f"\n✅ 완료!")


if __name__ == "__main__":
    main()