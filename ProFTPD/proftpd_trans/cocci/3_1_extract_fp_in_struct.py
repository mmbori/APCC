# #!/usr/bin/env python3
# """
# SQLite 구조체 내 함수 포인터 할당 추출 (3_0 기반 개선)

# 개선사항:
# - 3_0의 효율적인 주석 제거 방식 사용
# - 3_0의 인덱스 기반 정확한 파싱 사용
# - C 키워드 필터링 강화
# - 전처리기 지시자 처리 개선
# """

# import argparse
# import os
# import re
# import sys
# import json
# from typing import Dict, List, Set, Tuple, Optional
# import glob
# from collections import defaultdict

# # ==========================================================
# # C 키워드 필터링
# # ==========================================================

# C_KEYWORDS = {
#     # 제어 구조
#     'if', 'else', 'elif', 'endif', 'ifdef', 'ifndef', 'defined',
#     'for', 'while', 'do', 'switch', 'case', 'default', 'break', 'continue',
#     'return', 'goto',
    
#     # 타입
#     'void', 'char', 'short', 'int', 'long', 'float', 'double',
#     'signed', 'unsigned', 'const', 'volatile', 'restrict',
#     'static', 'extern', 'auto', 'register', 'inline',
#     'struct', 'union', 'enum', 'typedef',
    
#     # 기타
#     'sizeof', 'typeof', '__typeof__',
#     '_Bool', '_Complex', '_Imaginary',
    
#     # 전처리기
#     'define', 'undef', 'include', 'pragma',
#     'error', 'warning', 'line',
# }


# ALL_KEYWORDS = C_KEYWORDS


# def is_valid_function_name(name: str) -> bool:
#     """
#     유효한 함수명인지 검증
    
#     제외:
#     - C 키워드
#     - NULL (별도 처리)
#     - 0 (별도 처리)
#     """
#     if not name:
#         return False
    
#     # NULL, 0은 별도 처리
#     if name in ('NULL', '0'):
#         return False
    
#     # 키워드 제외
#     if name.lower() in ALL_KEYWORDS:
#         return False
    
#     # 식별자 검증
#     if not name.isidentifier():
#         return False
    
#     return True


# # ==========================================================
# # 구조체 및 함수 포인터 검색
# # ==========================================================

# def find_struct_boundaries_in_original(content: str) -> List[Tuple[int, int]]:
#     """원본 파일에서 직접 구조체 경계 찾기"""
#     boundaries = []
#     pattern = re.compile(r'\b(?:struct|union)(?:\s+\w+)?\s*\{', re.MULTILINE)
    
#     for match in pattern.finditer(content):
#         start_pos = match.start()
#         brace_pos = match.end() - 1
        
#         brace_count = 1
#         pos = brace_pos + 1
        
#         while pos < len(content) and brace_count > 0:
#             char = content[pos]
#             if char == '{':
#                 brace_count += 1
#             elif char == '}':
#                 brace_count -= 1
#             pos += 1
        
#         if brace_count == 0:
#             boundaries.append((start_pos, pos))
    
#     return boundaries


# def extract_struct_name(struct_content: str) -> Optional[str]:
#     """구조체 이름 추출"""
#     struct_name_pattern = re.compile(r'\b(?:struct|union)\s+(\w+)\s*\{')
#     match = struct_name_pattern.search(struct_content)
    
#     if match:
#         return match.group(1)
    
#     typedef_pattern = re.compile(r'typedef\s+(?:struct|union)\s*\{.*?\}\s*(\w+)\s*;', re.DOTALL)
#     match = typedef_pattern.search(struct_content)
    
#     if match:
#         return match.group(1)
    
#     return None


# def extract_function_pointer_pattern(decl: str) -> Optional[Tuple[str, str]]:
#     """선언에서 함수 포인터 패턴 추출"""
#     ptr_pattern = re.search(r'\(\s*\*\s*(\w+)\s*\)', decl)
#     if not ptr_pattern:
#         return None
    
#     fp_name = ptr_pattern.group(1)
#     start_pos = ptr_pattern.end()
#     if start_pos >= len(decl) or decl[start_pos] != '(':
#         return None
    
#     depth = 1
#     pos = start_pos + 1
    
#     while pos < len(decl) and depth > 0:
#         if decl[pos] == '(':
#             depth += 1
#         elif decl[pos] == ')':
#             depth -= 1
#         pos += 1
    
#     if depth != 0:
#         return None
    
#     return_type = decl[:ptr_pattern.start()].strip()
#     return (return_type, fp_name)


# def find_function_pointers_with_index(struct_content: str, verbose: bool = False) -> List[Tuple[str, str, str, int]]:
#     """
#     구조체 내용에서 함수 포인터와 인덱스 찾기 (3_0 방식)
    
#     Returns:
#         List of (return_type, fp_name, type_info, member_index)
#     """
#     function_pointers = []
    
#     brace_start = struct_content.find('{')
#     brace_end = struct_content.rfind('}')
#     if brace_start == -1 or brace_end == -1:
#         return function_pointers
    
#     body = struct_content[brace_start+1:brace_end]
    
#     # 3_0 방식: 간단한 주석 제거
#     body = re.sub(r'//.*?(?=\n|$)', '', body)
#     body = re.sub(r'/\*.*?\*/', '', body, flags=re.DOTALL)
    
#     # 세미콜론으로 분리
#     declarations = re.split(r';', body)
    
#     # SQLite typedef 함수 포인터 패턴
#     typedef_pattern = re.compile(r'(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function)\s+(\w+)')
    
#     member_index = 0
    
#     for decl in declarations:
#         decl = decl.strip()
        
#         # 3_0 방식: 빈 선언 또는 전처리기 제외
#         if not decl or decl.startswith('#'):
#             continue
        
#         # 중괄호 포함 제외 (중첩 구조체)
#         if '{' in decl or '}' in decl:
#             continue
        
#         # 비트필드 제외
#         is_bitfield = bool(re.search(r':\s*\d+\s*$', decl))
#         if is_bitfield:
#             continue
        
#         # typedef 함수 포인터 체크
#         typedef_match = typedef_pattern.search(decl)
#         if typedef_match:
#             return_type = typedef_match.group(1)
#             fp_name = typedef_match.group(2)
#             if fp_name and fp_name.isidentifier():
#                 fp_info = (return_type, fp_name, "typedef", member_index)
#                 if not any(existing[1] == fp_info[1] for existing in function_pointers):
#                     function_pointers.append(fp_info)
#         else:
#             # 일반 함수 포인터 체크
#             result = extract_function_pointer_pattern(decl)
#             if result:
#                 return_type, fp_name = result
#                 if fp_name and len(fp_name) > 1 and fp_name.isidentifier():
#                     fp_info = (return_type, fp_name, "", member_index)
#                     if not any(existing[1] == fp_info[1] for existing in function_pointers):
#                         function_pointers.append(fp_info)
        
#         member_index += 1
    
#     return function_pointers


# def find_structs_in_content(content: str, verbose: bool = False) -> Dict[str, List[Tuple[str, str, str, int]]]:
#     """단일 파일 내용에서 구조체와 함수 포인터 찾기"""
#     struct_fp_map = {}
#     boundaries = find_struct_boundaries_in_original(content)
    
#     if not boundaries:
#         return struct_fp_map
    
#     for start_pos, end_pos in boundaries:
#         struct_content = content[start_pos:end_pos]
#         struct_name = extract_struct_name(struct_content)
#         if not struct_name:
#             continue
        
#         function_pointers = find_function_pointers_with_index(struct_content, verbose)
        
#         if function_pointers:
#             if struct_name not in struct_fp_map:
#                 struct_fp_map[struct_name] = []
            
#             existing_fp_names = {fp[1] for fp in struct_fp_map[struct_name]}
#             new_fps = [fp for fp in function_pointers if fp[1] not in existing_fp_names]
            
#             if new_fps:
#                 struct_fp_map[struct_name].extend(new_fps)
    
#     return struct_fp_map


# def find_struct_with_function_pointers(source_dir: str, verbose: bool = False) -> Dict[str, List[Tuple[str, str, str, int]]]:
#     """구조체의 함수 포인터 검색"""
#     struct_fp_map = {}
    
#     # Proftpd 파일 패턴
#     file_patterns = [
#         os.path.join(source_dir, "*.c"),
#         os.path.join(source_dir, "*.h"),
#         os.path.join(source_dir, "*.in"),
#         os.path.join(source_dir, "**/*.c"),
#         os.path.join(source_dir, "**/*.h"),
#         os.path.join(source_dir, "**/*.in")
#     ]
    
#     files_to_process = []
#     for pattern in file_patterns:
#         matched = glob.glob(pattern, recursive=False)
#         files_to_process.extend(matched)
    
#     if not files_to_process:
#         print(f"[!] Warning: No files found in {source_dir}")
#         print(f"    Looking for: sqlite3.c, sqlite3.h, shell.c, shell.h")
    
#     for file_path in files_to_process:
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 content = f.read()
            
#             file_struct_map = find_structs_in_content(content, verbose)
            
#             for struct_name, fps in file_struct_map.items():
#                 if struct_name not in struct_fp_map:
#                     struct_fp_map[struct_name] = []
                
#                 existing_fp_names = {fp[1] for fp in struct_fp_map[struct_name]}
#                 new_fps = [fp for fp in fps if fp[1] not in existing_fp_names]
                
#                 if new_fps:
#                     struct_fp_map[struct_name].extend(new_fps)
                    
#                     if verbose:
#                         print(f"  📁 {os.path.basename(file_path)}")
#                         print(f"     {struct_name}: {len(new_fps)} FP(s)")
#                         for rt, fp_name, ti, idx in new_fps:
#                             print(f"       [{idx}] {fp_name}")
        
#         except Exception as e:
#             if verbose:
#                 print(f"  ⚠️  {file_path}: {e}")
    
#     return struct_fp_map


# # ==========================================================
# # 할당 패턴 검색
# # ==========================================================

# def find_struct_initializations(
#     source_dir: str,
#     struct_fp_map: Dict[str, List[Tuple[str, str, str, int]]],
#     verbose: bool = False
# ) -> Dict[str, Set[str]]:
#     """
#     구조체 초기화 패턴에서 함수 포인터 할당 찾기 (3_0 방식)
#     """
#     fp_assignments = defaultdict(set)
    
#     # 인덱스 맵 생성
#     struct_fp_index_map = {}
#     for struct_name, fps in struct_fp_map.items():
#         struct_fp_index_map[struct_name] = {idx: fp_name for _, fp_name, _, idx in fps}
    
#     file_patterns = [
#         os.path.join(source_dir, "*.c"),
#         os.path.join(source_dir, "*.h"),
#         os.path.join(source_dir, "*.in"),
#         os.path.join(source_dir, "**/*.c"),
#         os.path.join(source_dir, "**/*.h"),
#         os.path.join(source_dir, "**/*.in")
#     ]
    
#     files_to_process = []
#     for pattern in file_patterns:
#         files_to_process.extend(glob.glob(pattern, recursive=False))
    
#     for file_path in files_to_process:
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 content = f.read()
            
#             # 3_0 방식: 간단한 주석 제거
#             content_no_comments = re.sub(r'//.*?\n', '\n', content)
#             content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
#             for struct_name in struct_fp_map.keys():
#                 # 3_0 방식: 초기화 패턴
#                 init_start_pattern = re.compile(
#                     rf'(?:const\s+|static\s+|extern\s+)*(?:struct\s+)?{re.escape(struct_name)}\s+(\w+)\s*=\s*\{{',
#                     re.MULTILINE
#                 )
                
#                 for match in init_start_pattern.finditer(content_no_comments):
#                     var_name = match.group(1)
#                     brace_start = match.end() - 1  # '{' 위치
                    
#                     # 중괄호 매칭
#                     depth = 1
#                     pos = brace_start + 1
                    
#                     while pos < len(content_no_comments) and depth > 0:
#                         if content_no_comments[pos] == '{':
#                             depth += 1
#                         elif content_no_comments[pos] == '}':
#                             depth -= 1
#                         pos += 1
                    
#                     if depth != 0:
#                         continue
                    
#                     brace_end = pos
                    
#                     # 초기화 본문 추출
#                     init_body = content_no_comments[brace_start+1:brace_end-1]
                    
#                     # 3_0 방식: 콤마로 분리 (빈 값도 유지 - 인덱스 매칭!)
#                     values = []
#                     depth = 0
#                     current_value = []
                    
#                     for char in init_body:
#                         if char in '({[':
#                             depth += 1
#                             current_value.append(char)
#                         elif char in ')}]':
#                             depth -= 1
#                             current_value.append(char)
#                         elif char == ',' and depth == 0:
#                             val = ''.join(current_value).strip()
#                             values.append(val)  # 빈 값도 추가!
#                             current_value = []
#                         else:
#                             current_value.append(char)
                    
#                     # 마지막 값
#                     val = ''.join(current_value).strip()
#                     values.append(val)
                    
#                     # 함수 포인터 인덱스에 해당하는 값 추출
#                     fp_index_map = struct_fp_index_map[struct_name]
                    
#                     for idx, value in enumerate(values):
#                         if idx in fp_index_map:
#                             fp_name = fp_index_map[idx]
                            
#                             value_clean = value.strip()
                            
#                             # 3_0 방식: 정확한 함수명 매칭
#                             func_match = re.match(r'^\s*&?(\w+)\s*$', value_clean)
#                             if func_match:
#                                 func_name = func_match.group(1)
                                
#                                 # 검증 강화
#                                 if func_name == '0' or func_name == 'NULL':
#                                     fp_assignments[fp_name].add(func_name)
#                                 elif is_valid_function_name(func_name):
#                                     fp_assignments[fp_name].add(func_name)
                                
#                                 if verbose:
#                                     print(f"[INIT] {struct_name}.{fp_name}[{idx}] = {func_name}")
        
#         except Exception as e:
#             if verbose:
#                 print(f"[WARN] Init parse failed {file_path}: {e}")
    
#     return dict(fp_assignments)


# def find_named_assignments(
#     source_dir: str,
#     fp_names: Set[str],
#     verbose: bool = False
# ) -> Dict[str, Set[str]]:
#     """
#     .fpName = 패턴으로 함수 포인터 할당 찾기 (3_0 방식)
#     """
#     fp_assignments = defaultdict(set)
    
#     # 패턴 생성
#     assignment_patterns = []
    
#     for fp_name in fp_names:
#         # ->fp_name = func
#         assignment_patterns.append((
#             fp_name,
#             re.compile(rf'\w+->{re.escape(fp_name)}\s*=\s*&?(\w+)\s*[;,]', re.MULTILINE)
#         ))
#         # .fp_name = func
#         assignment_patterns.append((
#             fp_name,
#             re.compile(rf'\w+\.{re.escape(fp_name)}\s*=\s*&?(\w+)\s*[;,]', re.MULTILINE)
#         ))
    
#     file_patterns = [
#         os.path.join(source_dir, "*.c"),
#         os.path.join(source_dir, "*.h"),
#         os.path.join(source_dir, "*.in"),
#         os.path.join(source_dir, "**/*.c"),
#         os.path.join(source_dir, "**/*.h"),
#         os.path.join(source_dir, "**/*.in")
#     ]
    
#     files_to_process = []
#     for pattern in file_patterns:
#         files_to_process.extend(glob.glob(pattern, recursive=False))
    
#     for file_path in files_to_process:
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 content = f.read()
            
#             # 주석 제거
#             content_no_comments = re.sub(r'//.*?\n', '\n', content)
#             content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
#             for fp_name, pattern in assignment_patterns:
#                 for match in pattern.finditer(content_no_comments):
#                     func_name = match.group(1)
                    
#                     # 검증
#                     if func_name == '0' or func_name == 'NULL':
#                         fp_assignments[fp_name].add(func_name)
#                     elif is_valid_function_name(func_name):
#                         fp_assignments[fp_name].add(func_name)
                        
#                         if verbose:
#                             print(f"[ASSIGN] {fp_name} = {func_name}")
        
#         except Exception as e:
#             if verbose:
#                 print(f"[WARN] Named assignment failed {file_path}: {e}")
    
#     return dict(fp_assignments)


# # ==========================================================
# # 결과 집계
# # ==========================================================

# def aggregate_results(
#     struct_fp_map: Dict[str, List[Tuple[str, str, str, int]]],
#     init_assignments: Dict[str, Set[str]],
#     named_assignments: Dict[str, Set[str]]
# ) -> List[Dict]:
#     """결과 집계"""
    
#     # fp_name별로 정보 수집
#     fp_info_map = {}
    
#     for struct_name, fps in struct_fp_map.items():
#         for return_type, fp_name, type_info, idx in fps:
#             if fp_name not in fp_info_map:
#                 fp_info_map[fp_name] = {
#                     "struct_name": struct_name,
#                     "fp_index": idx,
#                     "return_type": return_type,
#                     "assigned_fn": set()
#                 }
    
#     # 할당 병합
#     for fp_name, funcs in init_assignments.items():
#         if fp_name in fp_info_map:
#             fp_info_map[fp_name]["assigned_fn"].update(funcs)
    
#     for fp_name, funcs in named_assignments.items():
#         if fp_name in fp_info_map:
#             fp_info_map[fp_name]["assigned_fn"].update(funcs)
    
#     # JSON 변환
#     result = []
#     for fp_name, info in sorted(fp_info_map.items()):
#         result.append({
#             "fp_name": fp_name,
#             "struct_name": info["struct_name"],
#             "fp_index": info["fp_index"],
#             "assigned_fn": sorted(info["assigned_fn"]),
#         })
    
#     return result


# # ==========================================================
# # 메인
# # ==========================================================

# def main():
#     parser = argparse.ArgumentParser(
#         description="SQLite 구조체 함수 포인터 할당 추출 (3_0 방식 개선)",
#         formatter_class=argparse.RawDescriptionHelpFormatter,
#         epilog="""
# Examples:
#   # 기본 사용
#   python3 sqlite_struct_fp_extract.py --source-dir /path/to/sqlite
  
#   # Verbose 모드
#   python3 sqlite_struct_fp_extract.py --source-dir . --verbose

# Output:
#   - sqlite_struct_fp.json: 구조체 함수 포인터 할당 정보
#         """
#     )
    
#     parser.add_argument("--source-dir", required=True, help="SQLite 소스 디렉토리")
#     parser.add_argument("--out", default="tmp_struct_fp.json", help="출력 JSON 파일")
#     parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    
#     args = parser.parse_args()
    
#     if not os.path.exists(args.source_dir):
#         print(f"❌ Error: 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
#         sys.exit(1)
    
#     print("🚀 SQLite 구조체 함수 포인터 분석 시작")
#     print(f"   소스 디렉토리: {args.source_dir}")
    
#     # Stage 1: 구조체 검색
#     print(f"\n=== Stage 1: 함수 포인터를 가진 구조체 검색 ===")
#     struct_fp_map = find_struct_with_function_pointers(args.source_dir, args.verbose)
    
#     if not struct_fp_map:
#         print("❌ 함수 포인터를 가진 구조체를 찾을 수 없음")
#         sys.exit(0)
    
#     total_fps = sum(len(fps) for fps in struct_fp_map.values())
#     print(f"✓ {len(struct_fp_map)}개 구조체, {total_fps}개 함수 포인터")
    
#     # Stage 2: 할당 찾기
#     print(f"\n=== Stage 2: 할당 패턴 분석 ===")
    
#     # 초기화
#     init_assignments = find_struct_initializations(args.source_dir, struct_fp_map, args.verbose)
#     init_count = sum(len(v) for v in init_assignments.values())
#     print(f"✓ 초기화: {init_count}개 함수 할당")
    
#     # Named 할당
#     all_fp_names = set()
#     for fps in struct_fp_map.values():
#         for _, fp_name, _, _ in fps:
#             all_fp_names.add(fp_name)
    
#     named_assignments = find_named_assignments(args.source_dir, all_fp_names, args.verbose)
#     named_count = sum(len(v) for v in named_assignments.values())
#     print(f"✓ Named 할당: {named_count}개 함수 할당")
    
#     # Stage 3: 집계
#     print(f"\n=== Stage 3: 결과 집계 ===")
#     result = aggregate_results(struct_fp_map, init_assignments, named_assignments)
    
#     # 저장
#     with open(args.out, 'w', encoding='utf-8') as f:
#         json.dump(result, f, indent=2, ensure_ascii=False)
    
#     print(f"💾 저장됨: {args.out}")
    
#     # 통계
#     total_assigned = sum(len(rec.get("assigned_fn", [])) for rec in result)
#     filled = sum(1 for rec in result if rec.get("assigned_fn"))
    
#     print(f"\n📊 통계:")
#     print(f"   구조체: {len(struct_fp_map)}개")
#     print(f"   함수 포인터: {len(result)}개")
#     print(f"   할당 정보 있음: {filled}개")
#     print(f"   총 함수 할당: {total_assigned}개")
    
#     print(f"\n✅ 완료!")


# if __name__ == "__main__":
#     main()

#!/usr/bin/env python3
"""
구조체 내 함수 포인터 할당 추출 (typedef 별칭 모두 지원)

개선사항:
- struct name { } name2, name3; 형태의 모든 별칭 추출
- typedef struct name { } alias1, alias2; 형태 지원
- 각 구조체의 모든 이름으로 할당 패턴 검색
"""

import argparse
import os
import re
import sys
import json
from typing import Dict, List, Set, Tuple, Optional
import glob
from collections import defaultdict

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
    """유효한 함수명인지 검증"""
    if not name:
        return False
    if name in ('NULL', '0'):
        return False
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
    # struct name { 또는 union name {
    tag_pattern = re.compile(r'\b(?:struct|union)\s+(\w+)\s*\{')
    tag_match = tag_pattern.search(struct_content)
    if tag_match:
        tag_name = tag_match.group(1)
        names.append(tag_name)
    
    # 패턴 2-4: typedef 별칭들 추출
    # typedef struct ... } alias1, alias2, *alias3;
    typedef_pattern = re.compile(r'\}\s*([^;]+);', re.DOTALL)
    typedef_match = typedef_pattern.search(struct_content)
    
    if typedef_match and struct_content.strip().startswith('typedef'):
        # } 뒤의 모든 이름들 추출
        aliases_str = typedef_match.group(1)
        
        # 콤마로 분리하고 각 별칭 추출
        for alias in aliases_str.split(','):
            alias = alias.strip()
            
            # 포인터(*) 제거하고 이름만 추출
            alias = re.sub(r'\*+', '', alias).strip()
            
            # 배열 선언 제거 [...]
            alias = re.sub(r'\[.*?\]', '', alias).strip()
            
            # 유효한 식별자인지 확인
            if alias and alias.isidentifier() and alias not in ALL_KEYWORDS:
                names.append(alias)
    
    # 패턴 5: struct name { ... } var1, var2; (변수 선언은 제외하고 typedef만)
    # 이미 위에서 처리됨
    
    return list(set(names))  # 중복 제거


# ==========================================================
# 구조체 및 함수 포인터 검색
# ==========================================================

def find_struct_boundaries_in_original(content: str) -> List[Tuple[int, int]]:
    """원본 파일에서 직접 구조체 경계 찾기"""
    boundaries = []
    # typedef struct 및 struct 모두 매칭
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
            if pos < len(content):
                pos += 1  # 세미콜론 포함
            boundaries.append((start_pos, pos))
    
    return boundaries


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


def find_function_pointers_with_index(struct_content: str, verbose: bool = False) -> List[Tuple[str, str, str, int]]:
    """
    구조체 내용에서 함수 포인터와 인덱스 찾기
    
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
    body = re.sub(r'/\*.*?\*/', '', body, flags=re.DOTALL)
    
    # 세미콜론으로 분리
    declarations = re.split(r';', body)
    
    # typedef 함수 포인터 패턴 (프로젝트별로 조정 필요)
    typedef_pattern = re.compile(r'(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function)\s+(\w+)')
    
    member_index = 0
    
    for decl in declarations:
        decl = decl.strip()
        
        if not decl or decl.startswith('#'):
            continue
        
        if '{' in decl or '}' in decl:
            continue
        
        # 비트필드 제외
        if re.search(r':\s*\d+\s*$', decl):
            continue
        
        # typedef 함수 포인터 체크
        typedef_match = typedef_pattern.search(decl)
        if typedef_match:
            return_type = typedef_match.group(1)
            fp_name = typedef_match.group(2)
            if fp_name and fp_name.isidentifier():
                fp_info = (return_type, fp_name, "typedef", member_index)
                if not any(existing[1] == fp_info[1] for existing in function_pointers):
                    function_pointers.append(fp_info)
        else:
            # 일반 함수 포인터 체크
            result = extract_function_pointer_pattern(decl)
            if result:
                return_type, fp_name = result
                if fp_name and len(fp_name) > 1 and fp_name.isidentifier():
                    fp_info = (return_type, fp_name, "", member_index)
                    if not any(existing[1] == fp_info[1] for existing in function_pointers):
                        function_pointers.append(fp_info)
        
        member_index += 1
    
    return function_pointers


def find_structs_in_content(content: str, verbose: bool = False) -> Dict[str, Tuple[List[str], List[Tuple[str, str, str, int]]]]:
    """
    단일 파일 내용에서 구조체와 함수 포인터 찾기
    
    Returns:
        Dict[primary_name, (all_aliases, function_pointers)]
    """
    struct_info_map = {}
    boundaries = find_struct_boundaries_in_original(content)
    
    if not boundaries:
        return struct_info_map
    
    for start_pos, end_pos in boundaries:
        struct_content = content[start_pos:end_pos]
        
        # 모든 별칭 추출
        all_names = extract_all_struct_names(struct_content)
        
        if not all_names:
            continue
        
        # 첫 번째 이름을 primary로 사용
        primary_name = all_names[0]
        
        function_pointers = find_function_pointers_with_index(struct_content, verbose)
        
        if function_pointers:
            if primary_name not in struct_info_map:
                struct_info_map[primary_name] = (all_names, [])
            
            existing_fp_names = {fp[1] for fp in struct_info_map[primary_name][1]}
            new_fps = [fp for fp in function_pointers if fp[1] not in existing_fp_names]
            
            if new_fps:
                struct_info_map[primary_name][1].extend(new_fps)
                
                if verbose:
                    print(f"  구조체: {primary_name}")
                    print(f"    별칭: {', '.join(all_names)}")
                    print(f"    함수 포인터: {len(new_fps)}개")
    
    return struct_info_map


def find_struct_with_function_pointers(source_dir: str, verbose: bool = False) -> Dict[str, Tuple[List[str], List[Tuple[str, str, str, int]]]]:
    """구조체의 함수 포인터 검색"""
    struct_info_map = {}
    
    file_patterns = [
        os.path.join(source_dir, "*.c"),
        os.path.join(source_dir, "*.h"),
        os.path.join(source_dir, "*.in"),
        os.path.join(source_dir, "**/*.c"),
        os.path.join(source_dir, "**/*.h"),
        os.path.join(source_dir, "**/*.in")
    ]
    
    files_to_process = []
    for pattern in file_patterns:
        matched = glob.glob(pattern, recursive=False)
        files_to_process.extend(matched)
    
    if not files_to_process:
        print(f"[!] Warning: No files found in {source_dir}")
    
    for file_path in files_to_process:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            file_struct_map = find_structs_in_content(content, verbose)
            
            for primary_name, (aliases, fps) in file_struct_map.items():
                if primary_name not in struct_info_map:
                    struct_info_map[primary_name] = (aliases.copy(), [])
                else:
                    # 별칭 병합
                    existing_aliases = set(struct_info_map[primary_name][0])
                    existing_aliases.update(aliases)
                    struct_info_map[primary_name] = (list(existing_aliases), struct_info_map[primary_name][1])
                
                existing_fp_names = {fp[1] for fp in struct_info_map[primary_name][1]}
                new_fps = [fp for fp in fps if fp[1] not in existing_fp_names]
                
                if new_fps:
                    struct_info_map[primary_name][1].extend(new_fps)
                    
                    if verbose:
                        print(f"  📁 {os.path.basename(file_path)}")
                        print(f"     {primary_name} (별칭: {', '.join(aliases)}): {len(new_fps)} FP(s)")
        
        except Exception as e:
            if verbose:
                print(f"  ⚠️  {file_path}: {e}")
    
    return struct_info_map


# ==========================================================
# 할당 패턴 검색 (모든 별칭 고려)
# ==========================================================

def find_struct_initializations(
    source_dir: str,
    struct_info_map: Dict[str, Tuple[List[str], List[Tuple[str, str, str, int]]]],
    verbose: bool = False
) -> Dict[str, Set[str]]:
    """
    구조체 초기화 패턴에서 함수 포인터 할당 찾기 (모든 별칭 고려)
    """
    fp_assignments = defaultdict(set)
    
    # 인덱스 맵 생성 (모든 별칭에 대해)
    struct_fp_index_map = {}  # {struct_alias: {idx: fp_name}}
    
    for primary_name, (aliases, fps) in struct_info_map.items():
        fp_index_map = {idx: fp_name for _, fp_name, _, idx in fps}
        
        # 모든 별칭에 대해 동일한 인덱스 맵 사용
        for alias in aliases:
            struct_fp_index_map[alias] = fp_index_map
    
    file_patterns = [
        os.path.join(source_dir, "*.c"),
        os.path.join(source_dir, "*.h"),
        os.path.join(source_dir, "*.in"),
        os.path.join(source_dir, "**/*.c"),
        os.path.join(source_dir, "**/*.h"),
        os.path.join(source_dir, "**/*.in")
    ]
    
    files_to_process = []
    for pattern in file_patterns:
        files_to_process.extend(glob.glob(pattern, recursive=False))
    
    for file_path in files_to_process:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 주석 제거
            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            # 모든 별칭에 대해 검색
            for struct_name in struct_fp_index_map.keys():
                # 초기화 패턴 (struct 키워드 있거나 없거나)
                init_start_pattern = re.compile(
                    rf'(?:const\s+|static\s+|extern\s+)*(?:struct\s+)?{re.escape(struct_name)}\s+(\w+)\s*=\s*\{{',
                    re.MULTILINE
                )
                
                for match in init_start_pattern.finditer(content_no_comments):
                    var_name = match.group(1)
                    brace_start = match.end() - 1  # '{' 위치
                    
                    # 중괄호 매칭
                    depth = 1
                    pos = brace_start + 1
                    
                    while pos < len(content_no_comments) and depth > 0:
                        if content_no_comments[pos] == '{':
                            depth += 1
                        elif content_no_comments[pos] == '}':
                            depth -= 1
                        pos += 1
                    
                    if depth != 0:
                        continue
                    
                    brace_end = pos
                    
                    # 초기화 본문 추출
                    init_body = content_no_comments[brace_start+1:brace_end-1]
                    
                    # 콤마로 분리 (빈 값도 유지)
                    values = []
                    depth = 0
                    current_value = []
                    
                    for char in init_body:
                        if char in '({[':
                            depth += 1
                            current_value.append(char)
                        elif char in ')}]':
                            depth -= 1
                            current_value.append(char)
                        elif char == ',' and depth == 0:
                            val = ''.join(current_value).strip()
                            values.append(val)
                            current_value = []
                        else:
                            current_value.append(char)
                    
                    # 마지막 값
                    val = ''.join(current_value).strip()
                    values.append(val)
                    
                    # 함수 포인터 인덱스에 해당하는 값 추출
                    fp_index_map = struct_fp_index_map[struct_name]
                    
                    for idx, value in enumerate(values):
                        if idx in fp_index_map:
                            fp_name = fp_index_map[idx]
                            
                            value_clean = value.strip()
                            
                            # 정확한 함수명 매칭
                            func_match = re.match(r'^\s*&?(\w+)\s*$', value_clean)
                            if func_match:
                                func_name = func_match.group(1)
                                
                                if func_name == '0' or func_name == 'NULL':
                                    fp_assignments[fp_name].add(func_name)
                                elif is_valid_function_name(func_name):
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
    """
    .fpName = 패턴으로 함수 포인터 할당 찾기
    """
    fp_assignments = defaultdict(set)
    
    # 패턴 생성
    assignment_patterns = []
    
    for fp_name in fp_names:
        # ->fp_name = func
        assignment_patterns.append((
            fp_name,
            re.compile(rf'\w+->{re.escape(fp_name)}\s*=\s*&?(\w+)\s*[;,]', re.MULTILINE)
        ))
        # .fp_name = func
        assignment_patterns.append((
            fp_name,
            re.compile(rf'\w+\.{re.escape(fp_name)}\s*=\s*&?(\w+)\s*[;,]', re.MULTILINE)
        ))
    
    file_patterns = [
        os.path.join(source_dir, "*.c"),
        os.path.join(source_dir, "*.h"),
        os.path.join(source_dir, "*.in"),
        os.path.join(source_dir, "**/*.c"),
        os.path.join(source_dir, "**/*.h"),
        os.path.join(source_dir, "**/*.in")
    ]
    
    files_to_process = []
    for pattern in file_patterns:
        files_to_process.extend(glob.glob(pattern, recursive=False))
    
    for file_path in files_to_process:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 주석 제거
            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            for fp_name, pattern in assignment_patterns:
                for match in pattern.finditer(content_no_comments):
                    func_name = match.group(1)
                    
                    if func_name == '0' or func_name == 'NULL':
                        fp_assignments[fp_name].add(func_name)
                    elif is_valid_function_name(func_name):
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
    
    # fp_name별로 정보 수집
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
    
    # 할당 병합
    for fp_name, funcs in init_assignments.items():
        if fp_name in fp_info_map:
            fp_info_map[fp_name]["assigned_fn"].update(funcs)
    
    for fp_name, funcs in named_assignments.items():
        if fp_name in fp_info_map:
            fp_info_map[fp_name]["assigned_fn"].update(funcs)
    
    # JSON 변환
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
        description="구조체 함수 포인터 할당 추출 (typedef 별칭 지원)",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # 기본 사용
  python3 3_1_extract_fp_in_struct.py --source-dir /path/to/source
  
  # Verbose 모드
  python3 3_1_extract_fp_in_struct.py --source-dir . --verbose

Output:
  - tmp_struct_fp.json: 구조체 함수 포인터 할당 정보 (별칭 포함)
        """
    )
    
    parser.add_argument("--source-dir", required=True, help="소스 디렉토리")
    parser.add_argument("--out", default="tmp_struct_fp.json", help="출력 JSON 파일")
    parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    
    args = parser.parse_args()
    
    if not os.path.exists(args.source_dir):
        print(f"❌ Error: 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
        sys.exit(1)
    
    print("🚀 구조체 함수 포인터 분석 시작 (typedef 별칭 지원)")
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
    print(f"\n=== Stage 2: 할당 패턴 분석 (모든 별칭 고려) ===")
    
    # 초기화
    init_assignments = find_struct_initializations(args.source_dir, struct_info_map, args.verbose)
    init_count = sum(len(v) for v in init_assignments.values())
    print(f"✓ 초기화: {init_count}개 함수 할당")
    
    # Named 할당
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
    
    # 저장
    with open(args.out, 'w', encoding='utf-8') as f:
        json.dump(result, f, indent=2, ensure_ascii=False)
    
    print(f"💾 저장됨: {args.out}")
    
    # 통계
    total_assigned = sum(len(rec.get("assigned_fn", [])) for rec in result)
    filled = sum(1 for rec in result if rec.get("assigned_fn"))
    
    print(f"\n📊 통계:")
    print(f"   구조체: {len(struct_info_map)}개")
    print(f"   별칭: {total_aliases}개")
    print(f"   함수 포인터: {len(result)}개")
    print(f"   할당 정보 있음: {filled}개")
    print(f"   총 함수 할당: {total_assigned}개")
    
    # 별칭 정보 출력
    if args.verbose:
        print(f"\n=== 구조체 별칭 정보 ===")
        for primary_name, (aliases, _) in sorted(struct_info_map.items()):
            if len(aliases) > 1:
                print(f"  {primary_name}: {', '.join(aliases)}")
    
    print(f"\n✅ 완료!")


if __name__ == "__main__":
    main()