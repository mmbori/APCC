# #!/usr/bin/env python3
# """
# 구조체 내 함수 포인터 할당 추출 (0_parsing 시리즈 스타일)

# Stage 1: struct_fp_parsing.json 생성
#   - 구조체 내 함수 포인터와 할당된 함수 찾기
#   - {struct_name, fp_name, fp_index, assigned_fn: [...]} 형태

# Stage 2: struct_fp_filled.json 생성 (옵션)
#   - assigned_fn을 더 정교하게 채워넣기
  
# Stage 3: struct_fp_resolved.json + struct_fp_aggregated_map.json 생성
#   - 재귀적 확장 (fp_name이 다른 fp_name을 참조하는 경우)
  
# Output:
#   - struct_fp_declarations.txt: 모든 할당된 함수의 선언부
# """

# import argparse
# import os
# import re
# import sys
# import json
# from typing import Dict, List, Set, Tuple, Optional
# from collections import defaultdict
# from pathlib import Path


# # ==========================================================
# # 유틸리티 함수
# # ==========================================================

# def iter_target_files(source_dir: str):
#     """
#     src/, ext/ 디렉토리의 모든 .c, .h, .in 파일 탐색 (원본과 동일)
#     """
#     import glob
    
#     file_patterns = [
#         os.path.join(source_dir, "sqlite3.c"),
#         os.path.join(source_dir, "sqlite3.h"),
#         os.path.join(source_dir, "shell.c"),
#         os.path.join(source_dir, "shell.h"),
#     ]
    
#     files_to_process = set()
#     for pattern in file_patterns:
#         files_to_process.update(glob.glob(pattern, recursive=True))
    
#     return sorted(files_to_process)

# def is_identifier(tok: str) -> bool:
#     """유효한 C 식별자인지 확인"""
#     if not tok:
#         return False
#     if not (tok[0].isalpha() or tok[0] == '_'):
#         return False
#     return all(c.isalnum() or c == '_' for c in tok)


# def normalize_token(tok: str) -> str:
#     """
#     토큰 정규화
    
#     유지:
#     - 식별자 (함수명)
#     - NULL, 0
    
#     제외:
#     - 빈 문자열
#     """
#     tok = tok.strip()
    
#     # NULL, 0 보존
#     if tok in ('0', 'NULL'):
#         return tok
    
#     # 식별자 확인
#     if is_identifier(tok):
#         return tok
    
#     # 그 외 제외
#     return ""


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


# def find_function_pointers_with_index(struct_content: str) -> List[Tuple[str, str, int]]:
#     """
#     구조체 내용에서 함수 포인터와 인덱스 찾기 (3_0 스타일)
    
#     Returns:
#         List of (return_type, fp_name, member_index)
#     """
#     function_pointers = []
    
#     brace_start = struct_content.find('{')
#     brace_end = struct_content.rfind('}')
#     if brace_start == -1 or brace_end == -1:
#         return function_pointers
    
#     body = struct_content[brace_start+1:brace_end]
    
#     # 3_0 스타일: 주석 제거 (개행은 유지)
#     body = re.sub(r'//.*?(?=\n|$)', '', body)
#     body = re.sub(r'/\*.*?\*/', '', body, flags=re.DOTALL)
    
#     # 3_0 스타일: 단순 세미콜론 분리 (공백 정규화 안 함!)
#     declarations = re.split(r';', body)
    
#     typedef_pattern = re.compile(r'(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function)\s+(\w+)')
    
#     member_index = 0
    
#     for decl in declarations:
#         decl = decl.strip()
        
#         # 빈 선언 또는 전처리기
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
#                 fp_info = (return_type, fp_name, member_index)
#                 if not any(existing[1] == fp_info[1] for existing in function_pointers):
#                     function_pointers.append(fp_info)
#         else:
#             # 일반 함수 포인터 체크
#             result = extract_function_pointer_pattern(decl)
#             if result:
#                 return_type, fp_name = result
#                 if fp_name and len(fp_name) > 1 and fp_name.isidentifier():
#                     fp_info = (return_type, fp_name, member_index)
#                     if not any(existing[1] == fp_info[1] for existing in function_pointers):
#                         function_pointers.append(fp_info)
        
#         # 모든 선언은 하나의 멤버로 카운트
#         member_index += 1
    
#     return function_pointers


# def find_structs_in_content(content: str, filepath: str) -> Dict[str, List[Tuple[str, str, int]]]:
#     """파일 내용에서 함수 포인터를 가진 구조체 찾기"""
#     struct_fp_map = {}
#     boundaries = find_struct_boundaries_in_original(content)
    
#     for start_pos, end_pos in boundaries:
#         struct_content = content[start_pos:end_pos]
#         struct_name = extract_struct_name(struct_content)
#         if not struct_name:
#             continue
        
#         function_pointers = find_function_pointers_with_index(struct_content)
        
#         if function_pointers:
#             if struct_name not in struct_fp_map:
#                 struct_fp_map[struct_name] = []
            
#             existing_fp_names = {fp[1] for fp in struct_fp_map[struct_name]}
#             new_fps = [fp for fp in function_pointers if fp[1] not in existing_fp_names]
            
#             if new_fps:
#                 struct_fp_map[struct_name].extend(new_fps)
    
#     return struct_fp_map


# def find_struct_with_function_pointers(source_dir: str, verbose: bool = False) -> Dict[str, List[Tuple[str, str, int]]]:
#     """모든 파일에서 함수 포인터를 가진 구조체 찾기"""
#     all_struct_fp_map = {}
    
#     for file_path in iter_target_files(source_dir):
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 content = f.read()
            
#             struct_fp_map = find_structs_in_content(content, file_path)
            
#             if struct_fp_map:
#                 for struct_name, fps in struct_fp_map.items():
#                     if struct_name not in all_struct_fp_map:
#                         all_struct_fp_map[struct_name] = []
                    
#                     existing_fp_names = {fp[1] for fp in all_struct_fp_map[struct_name]}
#                     new_fps = [fp for fp in fps if fp[1] not in existing_fp_names]
                    
#                     if new_fps:
#                         all_struct_fp_map[struct_name].extend(new_fps)
                        
#                         if verbose:
#                             rel_path = os.path.relpath(file_path, source_dir)
#                             print(f"  📁 {rel_path}")
#                             print(f"     {struct_name}: {len(new_fps)}개 함수 포인터")
#                             for rt, fp_name, idx in new_fps:
#                                 print(f"       [{idx}] {fp_name}")
        
#         except Exception as e:
#             if verbose:
#                 print(f"  ⚠️  {file_path}: {e}")
    
#     return all_struct_fp_map


# # ==========================================================
# # 할당 패턴 검색
# # ==========================================================

# def find_struct_initializations(source_dir: str, struct_fp_map: Dict, verbose: bool = False) -> List[Dict]:
#     """구조체 초기화에서 함수 포인터 할당 찾기"""
#     records = []
    
#     for file_path in iter_target_files(source_dir):
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 content = f.read()
            
#             # 주석 제거
#             content_no_comments = re.sub(r'//.*?\n', '\n', content)
#             content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
#             for struct_name, fps in struct_fp_map.items():
#                 # 구조체 초기화 패턴 (3_0 스타일: const/static/extern 포함)
#                 pattern = re.compile(
#                     rf'(?:const\s+|static\s+|extern\s+)*(?:struct\s+)?{re.escape(struct_name)}\s+(\w+)\s*=\s*\{{',
#                     re.MULTILINE
#                 )
                
#                 for match in pattern.finditer(content_no_comments):
#                     var_name = match.group(1)  # 변수명 캡처 (디버깅용)
#                     init_start = match.end() - 1
                    
#                     # 중괄호 매칭
#                     brace_count = 1
#                     pos = init_start + 1
                    
#                     while pos < len(content_no_comments) and brace_count > 0:
#                         if content_no_comments[pos] == '{':
#                             brace_count += 1
#                         elif content_no_comments[pos] == '}':
#                             brace_count -= 1
#                         pos += 1
                    
#                     if brace_count != 0:
#                         continue
                    
#                     init_content = content_no_comments[init_start:pos]
                    
#                     # 값 추출
#                     values = []
#                     temp = init_content[1:-1]  # 중괄호 제거
                    
#                     # 중첩 중괄호 고려
#                     depth = 0
#                     current = []
                    
#                     for char in temp:
#                         if char == '{':
#                             depth += 1
#                             current.append(char)
#                         elif char == '}':
#                             depth -= 1
#                             current.append(char)
#                         elif char == ',' and depth == 0:
#                             values.append(''.join(current).strip())
#                             current = []
#                         else:
#                             current.append(char)
                    
#                     if current:
#                         values.append(''.join(current).strip())
                    
#                     # 함수 포인터 매칭
#                     for return_type, fp_name, fp_index in fps:
#                         if fp_index < len(values):
#                             value = values[fp_index]
                            
#                             # 토큰 추출
#                             tokens = re.findall(r'\w+', value)
#                             valid_tokens = [normalize_token(t) for t in tokens if normalize_token(t)]
                            
#                             if valid_tokens:
#                                 if verbose:
#                                     print(f"  [INIT] {struct_name}.{fp_name}[{fp_index}] = {valid_tokens} (var: {var_name}) in {os.path.basename(file_path)}")
                                
#                                 records.append({
#                                     "struct_name": struct_name,
#                                     "fp_name": fp_name,
#                                     "fp_index": fp_index,
#                                     "assigned_fn": valid_tokens,
#                                     "source": "initialization",
#                                     "file": os.path.basename(file_path)
#                                 })
        
#         except Exception as e:
#             if verbose:
#                 print(f"  ⚠️  초기화 검색 실패 {file_path}: {e}")
    
#     return records


# def find_named_assignments(source_dir: str, fp_names: Set[str], verbose: bool = False) -> List[Dict]:
#     """named 할당 패턴 찾기 (예: obj->fp_name = func;)"""
#     records = []
    
#     for file_path in iter_target_files(source_dir):
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 content = f.read()
            
#             # 주석 제거
#             content_no_comments = re.sub(r'//.*?\n', '\n', content)
#             content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
#             for fp_name in fp_names:
#                 # 패턴: ->fp_name = 또는 .fp_name =
#                 pattern = rf'(?:->|\.){re.escape(fp_name)}\s*=\s*([^;]+);'
                
#                 for match in re.finditer(pattern, content_no_comments):
#                     rhs = match.group(1).strip()
                    
#                     # 토큰 추출
#                     tokens = re.findall(r'\w+', rhs)
#                     valid_tokens = [normalize_token(t) for t in tokens if normalize_token(t)]
                    
#                     if valid_tokens:
#                         records.append({
#                             "struct_name": "unknown",
#                             "fp_name": fp_name,
#                             "fp_index": -1,
#                             "assigned_fn": valid_tokens,
#                             "source": "named_assignment",
#                             "file": os.path.basename(file_path)
#                         })
        
#         except Exception as e:
#             if verbose:
#                 print(f"  ⚠️  Named 할당 검색 실패 {file_path}: {e}")
    
#     return records


# def aggregate_results(records: List[Dict]) -> List[Dict]:
#     """같은 fp_name의 레코드들을 병합"""
#     fp_map = defaultdict(lambda: {
#         "struct_name": set(),
#         "fp_index": set(),
#         "assigned_fn": set(),
#         "sources": set(),
#         "files": set()
#     })
    
#     for rec in records:
#         fp_name = rec["fp_name"]
        
#         if rec["struct_name"] != "unknown":
#             fp_map[fp_name]["struct_name"].add(rec["struct_name"])
        
#         if rec["fp_index"] != -1:
#             fp_map[fp_name]["fp_index"].add(rec["fp_index"])
        
#         for fn in rec["assigned_fn"]:
#             fp_map[fp_name]["assigned_fn"].add(fn)
        
#         fp_map[fp_name]["sources"].add(rec["source"])
#         fp_map[fp_name]["files"].add(rec["file"])
    
#     # 최종 결과
#     result = []
#     for fp_name, data in sorted(fp_map.items()):
#         struct_names = sorted(data["struct_name"])
#         indices = sorted(data["fp_index"])
        
#         result.append({
#             "fp_name": fp_name,
#             "struct_name": struct_names[0] if struct_names else "unknown",
#             "fp_index": indices[0] if indices else -1,
#             "assigned_fn": sorted(data["assigned_fn"]),
#             "sources": sorted(data["sources"]),
#             "files": sorted(data["files"])
#         })
    
#     return result


# # ==========================================================
# # 재귀적 확장
# # ==========================================================

# def build_expanded_fp_map(records: List[Dict], verbose: bool = False) -> Dict[str, Set[str]]:
#     """
#     fp_name -> 확장된 함수 리스트 맵 생성
#     재귀적으로 다른 fp_name을 참조하는 경우 확장
#     """
#     # 초기 맵
#     fp_map = {}
#     all_fp_names = set()
    
#     for rec in records:
#         fp_name = rec["fp_name"]
#         all_fp_names.add(fp_name)
#         fp_map[fp_name] = set(rec.get("assigned_fn", []))
    
#     if verbose:
#         print(f"   초기 맵: {len(fp_map)}개 fp_name")
    
#     # 재귀적 확장
#     max_iterations = 10
#     iteration = 0
#     changed = True
    
#     while changed and iteration < max_iterations:
#         changed = False
#         iteration += 1
        
#         for fp_name, funcs in list(fp_map.items()):
#             new_funcs = set(funcs)
            
#             for func in funcs:
#                 # func가 다른 fp_name인지 확인
#                 if func in all_fp_names and func in fp_map:
#                     # 재귀 확장
#                     expanded = fp_map[func]
#                     if not expanded.issubset(new_funcs):
#                         new_funcs.update(expanded)
#                         changed = True
            
#             if new_funcs != funcs:
#                 fp_map[fp_name] = new_funcs
        
#         if verbose and changed:
#             print(f"   반복 {iteration}: 확장됨")
    
#     if verbose:
#         print(f"   ✓ 총 {iteration}회 반복")
    
#     return fp_map


# def collect_all_fp_names(records: List[Dict]) -> Set[str]:
#     """모든 fp_name 수집"""
#     return {rec["fp_name"] for rec in records}


# def expand_records(records: List[Dict], expanded_map: Dict[str, Set[str]], all_fp_names: Set[str]) -> List[Dict]:
#     """레코드의 assigned_fn을 확장된 버전으로 교체"""
#     expanded_records = []
    
#     for rec in records:
#         fp_name = rec["fp_name"]
        
#         if fp_name in expanded_map:
#             expanded_fn = expanded_map[fp_name]
#         else:
#             expanded_fn = set(rec.get("assigned_fn", []))
        
#         new_rec = rec.copy()
#         new_rec["assigned_fn"] = sorted(expanded_fn)
#         expanded_records.append(new_rec)
    
#     return expanded_records


# # ==========================================================
# # 함수 선언 검색
# # ==========================================================

# def normalize_declaration(decl: str) -> str:
#     """선언 정규화"""
#     # 여러 공백 → 하나
#     decl = re.sub(r'\s+', ' ', decl)
    
#     # 앞뒤 공백 제거
#     decl = decl.strip()
    
#     return decl


# def find_function_declaration(
#     source_dir: str, 
#     func_name: str, 
#     verbose: bool = False
# ) -> Optional[str]:
#     """함수 선언 찾기"""
#     func_pattern = re.compile(
#         rf'\b{re.escape(func_name)}\s*\(',
#         re.MULTILINE
#     )
    
#     for file_path in iter_target_files(source_dir):
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 content = f.read()

#             # 주석 제거
#             content_no_comments = re.sub(r'//.*?\n', '\n', content)
#             content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
#             for match in func_pattern.finditer(content_no_comments):
#                 func_pos = match.start()
                
#                 # 역방향 스캔
#                 scan_start = max(0, func_pos - 500)
#                 before_text = content_no_comments[scan_start:func_pos]
                
#                 # 선언 시작점
#                 last_semi = before_text.rfind(';')
#                 last_brace_close = before_text.rfind('}')
#                 last_brace_open = before_text.rfind('{')
                
#                 decl_start_offset = max(last_semi, last_brace_close, last_brace_open)
                
#                 if decl_start_offset != -1:
#                     decl_start = scan_start + decl_start_offset + 1
#                 else:
#                     decl_start = scan_start
                
#                 before_func = content_no_comments[decl_start:func_pos].strip()
                
#                 if not before_func:
#                     continue
                
#                 # 포인터 제거 후 토큰 분리
#                 before_func_no_ptr = re.sub(r'\*+', ' ', before_func).strip()
                
#                 tokens = before_func_no_ptr.split()
#                 if len(tokens) == 0:
#                     continue
                
#                 # 호출 패턴 제외
#                 first_token = tokens[0]
#                 if first_token in ['return', 'if', 'while', 'for', 'switch', 'sizeof', 'typeof']:
#                     continue
                
#                 # 연산자로 끝나는 경우
#                 if re.search(r'[=+\-/&|<>!,]\s*$', before_func):
#                     continue
                
#                 # 마지막 토큰 검증
#                 last_meaningful_token = tokens[-1]
#                 if not re.match(r'^[A-Za-z_]\w*$', last_meaningful_token):
#                     continue
                
#                 # 괄호 매칭
#                 paren_count = 1
#                 pos = match.end()
                
#                 while pos < len(content_no_comments) and paren_count > 0:
#                     if content_no_comments[pos] == '(':
#                         paren_count += 1
#                     elif content_no_comments[pos] == ')':
#                         paren_count -= 1
#                     pos += 1
                
#                 if paren_count != 0:
#                     continue
                
#                 # ; 또는 { 까지
#                 while pos < len(content_no_comments) and content_no_comments[pos] not in ';{':
#                     pos += 1
                
#                 if pos >= len(content_no_comments):
#                     continue
                
#                 decl_end = pos + 1
                
#                 declaration = content_no_comments[decl_start:decl_end].strip()
                
#                 # 전처리기 제외
#                 if declaration.startswith('#'):
#                     continue
                
#                 # 정규화
#                 declaration = normalize_declaration(declaration)
                
#                 return declaration
        
#         except Exception as e:
#             if verbose:
#                 print(f"[WARN] 함수 선언 검색 실패 {file_path}: {e}")
    
#     return None


# def collect_all_function_declarations(source_dir: str, records: List[Dict], verbose: bool = False) -> str:
#     """모든 할당된 함수의 선언부 수집"""
#     all_functions = set()
    
#     for rec in records:
#         for fn in rec.get("assigned_fn", []):
#             if fn not in ('0', 'NULL'):
#                 all_functions.add(fn)
    
#     if verbose:
#         print(f"\n🔍 Searching declarations for {len(all_functions)} functions...")
    
#     declarations = []
#     found_count = 0
    
#     for func_name in sorted(all_functions):
#         decl = find_function_declaration(source_dir, func_name, verbose)
#         if decl:
#             declarations.append(decl)
#             found_count += 1
#             if verbose and found_count % 10 == 0:
#                 print(f"   Found {found_count}/{len(all_functions)} declarations...")
#         elif verbose:
#             print(f"   [WARN] {func_name}: 선언부를 찾을 수 없음")
    
#     if verbose:
#         print(f"   ✓ Found {found_count}/{len(all_functions)} declarations")
    
#     return '\n'.join(declarations)


# # ==========================================================
# # 메인
# # ==========================================================

# def main():
#     parser = argparse.ArgumentParser(
#         description="구조체 내 함수 포인터 할당 추출 (0_parsing 스타일)",
#         formatter_class=argparse.RawDescriptionHelpFormatter,
#         epilog="""
# Examples:
#   # Stage 1: parsing만 (초기화 + named 할당 찾기)
#   python3 3_1_extract_fp_in_struct.py --source-dir ./sqlite --out struct_fp_parsing.json
  
#   # Stage 1+3: parsing + 재귀 확장
#   python3 3_1_extract_fp_in_struct.py --source-dir ./sqlite --resolve
  
#   # All stages with verbose
#   python3 3_1_extract_fp_in_struct.py --source-dir ./sqlite --resolve --verbose

# Output files:
#   - struct_fp_parsing.json: 원시 파싱 결과
#   - struct_fp_resolved.json: 재귀 확장된 결과 (--resolve 옵션)
#   - struct_fp_aggregated_map.json: fp_name -> 확장된 함수 리스트 (--resolve 옵션)
#   - struct_fp_declarations.txt: 모든 할당된 함수의 선언부
#         """
#     )
    
#     parser.add_argument("--source-dir", required=True, help="소스 코드 디렉토리")
#     parser.add_argument("--out", default="struct_fp_parsing.json", help="출력 JSON 파일")
#     parser.add_argument("--resolve", action="store_true", help="재귀적 확장 수행 (Stage 3)")
#     parser.add_argument("--decl-out", default="struct_fp_declarations.txt", help="함수 선언 출력 파일")
#     parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    
#     args = parser.parse_args()
    
#     if not os.path.exists(args.source_dir):
#         print(f"❌ Error: 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
#         sys.exit(1)
    
#     print(f"🚀 구조체 함수 포인터 분석 시작")
#     print(f"   소스 디렉토리: {args.source_dir}")
    
#     # Stage 1: 구조체 검색
#     print(f"\n=== Stage 1: 구조체 함수 포인터 검색 ===")
#     struct_fp_map = find_struct_with_function_pointers(args.source_dir, args.verbose)
    
#     if not struct_fp_map:
#         print("❌ 함수 포인터를 가진 구조체를 찾을 수 없음")
#         sys.exit(0)
    
#     total_fps = sum(len(fps) for fps in struct_fp_map.values())
#     print(f"   ✓ {len(struct_fp_map)}개 구조체, {total_fps}개 함수 포인터")
    
#     # Stage 2: 할당 찾기
#     print(f"\n=== Stage 2: 할당 패턴 분석 ===")
    
#     # 2-1: 초기화
#     init_records = find_struct_initializations(args.source_dir, struct_fp_map, args.verbose)
#     print(f"   ✓ 초기화: {len(init_records)}개 할당")
    
#     # 2-2: named 할당
#     all_fp_names = set()
#     for fps in struct_fp_map.values():
#         for _, fp_name, _ in fps:
#             all_fp_names.add(fp_name)
    
#     named_records = find_named_assignments(args.source_dir, all_fp_names, args.verbose)
#     print(f"   ✓ Named 할당: {len(named_records)}개 할당")
    
#     # 병합
#     all_records = init_records + named_records
#     aggregated_records = aggregate_results(all_records)
    
#     # 저장
#     with open(args.out, 'w', encoding='utf-8') as f:
#         json.dump(aggregated_records, f, indent=2, ensure_ascii=False)
#     print(f"\n💾 Saved: {args.out}")
    
#     # Stage 3: 재귀 확장 (옵션)
#     if args.resolve:
#         print(f"\n=== Stage 3: 재귀적 확장 ===")
        
#         # 확장 맵 생성
#         expanded_map = build_expanded_fp_map(aggregated_records, args.verbose)
        
#         # 레코드 확장
#         all_fp_names_set = collect_all_fp_names(aggregated_records)
#         expanded_records = expand_records(aggregated_records, expanded_map, all_fp_names_set)
        
#         # 저장
#         resolved_path = args.out.replace('.json', '_resolved.json')
#         with open(resolved_path, 'w', encoding='utf-8') as f:
#             json.dump(expanded_records, f, indent=2, ensure_ascii=False)
#         print(f"💾 Saved: {resolved_path}")
        
#         map_path = args.out.replace('.json', '_aggregated_map.json')
#         with open(map_path, 'w', encoding='utf-8') as f:
#             json.dump(expanded_map, f, indent=2, ensure_ascii=False)
#         print(f"💾 Saved: {map_path}")
        
#         # 확장된 레코드 사용
#         final_records = expanded_records
#     else:
#         final_records = aggregated_records
    
#     # 함수 선언 수집
#     print(f"\n=== 함수 선언부 수집 ===")
#     declarations = collect_all_function_declarations(args.source_dir, final_records, args.verbose)
    
#     with open(args.decl_out, 'w', encoding='utf-8') as f:
#         f.write(declarations)
#     print(f"💾 Saved: {args.decl_out}")
    
#     # 통계
#     print(f"\n=== 분석 완료 ===")
#     total_assigned = sum(len(rec.get("assigned_fn", [])) for rec in final_records)
#     print(f"   구조체: {len(struct_fp_map)}개")
#     print(f"   함수 포인터: {len(final_records)}개")
#     print(f"   총 함수 할당: {total_assigned}개")
    
#     print(f"\n✅ Complete!")


# if __name__ == "__main__":
#     main()

#!/usr/bin/env python3
"""
SQLite 구조체 내 함수 포인터 할당 추출 (3_0 기반 개선)

개선사항:
- 3_0의 효율적인 주석 제거 방식 사용
- 3_0의 인덱스 기반 정확한 파싱 사용
- C 키워드 필터링 강화
- 전처리기 지시자 처리 개선
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
    # 제어 구조
    'if', 'else', 'elif', 'endif', 'ifdef', 'ifndef', 'defined',
    'for', 'while', 'do', 'switch', 'case', 'default', 'break', 'continue',
    'return', 'goto',
    
    # 타입
    'void', 'char', 'short', 'int', 'long', 'float', 'double',
    'signed', 'unsigned', 'const', 'volatile', 'restrict',
    'static', 'extern', 'auto', 'register', 'inline',
    'struct', 'union', 'enum', 'typedef',
    
    # 기타
    'sizeof', 'typeof', '__typeof__',
    '_Bool', '_Complex', '_Imaginary',
    
    # 전처리기
    'define', 'undef', 'include', 'pragma',
    'error', 'warning', 'line',
}

# SQLite 특화 매크로/타입
SQLITE_TYPES = {
    'SQLITE_API', 'SQLITE_EXTERN', 'SQLITE_PRIVATE',
    'sqlite3_int64', 'sqlite3_uint64',
    'u8', 'u16', 'u32', 'u64',
    'i8', 'i16', 'i32', 'i64',
}

ALL_KEYWORDS = C_KEYWORDS | SQLITE_TYPES


def is_valid_function_name(name: str) -> bool:
    """
    유효한 함수명인지 검증
    
    제외:
    - C 키워드
    - NULL (별도 처리)
    - 0 (별도 처리)
    """
    if not name:
        return False
    
    # NULL, 0은 별도 처리
    if name in ('NULL', '0'):
        return False
    
    # 키워드 제외
    if name.lower() in ALL_KEYWORDS:
        return False
    
    # 식별자 검증
    if not name.isidentifier():
        return False
    
    return True


# ==========================================================
# 구조체 및 함수 포인터 검색
# ==========================================================

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


def find_function_pointers_with_index(struct_content: str, verbose: bool = False) -> List[Tuple[str, str, str, int]]:
    """
    구조체 내용에서 함수 포인터와 인덱스 찾기 (3_0 방식)
    
    Returns:
        List of (return_type, fp_name, type_info, member_index)
    """
    function_pointers = []
    
    brace_start = struct_content.find('{')
    brace_end = struct_content.rfind('}')
    if brace_start == -1 or brace_end == -1:
        return function_pointers
    
    body = struct_content[brace_start+1:brace_end]
    
    # 3_0 방식: 간단한 주석 제거
    body = re.sub(r'//.*?(?=\n|$)', '', body)
    body = re.sub(r'/\*.*?\*/', '', body, flags=re.DOTALL)
    
    # 세미콜론으로 분리
    declarations = re.split(r';', body)
    
    # SQLite typedef 함수 포인터 패턴
    typedef_pattern = re.compile(r'(sqlite3_xauth|sqlite3_callback|sqlite3_exec_callback|fts5_extension_function)\s+(\w+)')
    
    member_index = 0
    
    for decl in declarations:
        decl = decl.strip()
        
        # 3_0 방식: 빈 선언 또는 전처리기 제외
        if not decl or decl.startswith('#'):
            continue
        
        # 중괄호 포함 제외 (중첩 구조체)
        if '{' in decl or '}' in decl:
            continue
        
        # 비트필드 제외
        is_bitfield = bool(re.search(r':\s*\d+\s*$', decl))
        if is_bitfield:
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


def find_structs_in_content(content: str, verbose: bool = False) -> Dict[str, List[Tuple[str, str, str, int]]]:
    """단일 파일 내용에서 구조체와 함수 포인터 찾기"""
    struct_fp_map = {}
    boundaries = find_struct_boundaries_in_original(content)
    
    if not boundaries:
        return struct_fp_map
    
    for start_pos, end_pos in boundaries:
        struct_content = content[start_pos:end_pos]
        struct_name = extract_struct_name(struct_content)
        if not struct_name:
            continue
        
        function_pointers = find_function_pointers_with_index(struct_content, verbose)
        
        if function_pointers:
            if struct_name not in struct_fp_map:
                struct_fp_map[struct_name] = []
            
            existing_fp_names = {fp[1] for fp in struct_fp_map[struct_name]}
            new_fps = [fp for fp in function_pointers if fp[1] not in existing_fp_names]
            
            if new_fps:
                struct_fp_map[struct_name].extend(new_fps)
    
    return struct_fp_map


def find_struct_with_function_pointers(source_dir: str, verbose: bool = False) -> Dict[str, List[Tuple[str, str, str, int]]]:
    """구조체의 함수 포인터 검색"""
    struct_fp_map = {}
    
    # SQLite 파일 패턴
    file_patterns = [
        os.path.join(source_dir, "sqlite3.c"),
        os.path.join(source_dir, "sqlite3.h"),
        os.path.join(source_dir, "shell.c"),
        os.path.join(source_dir, "shell.h"),
    ]
    
    files_to_process = []
    for pattern in file_patterns:
        matched = glob.glob(pattern, recursive=False)
        files_to_process.extend(matched)
    
    if not files_to_process:
        print(f"[!] Warning: No files found in {source_dir}")
        print(f"    Looking for: sqlite3.c, sqlite3.h, shell.c, shell.h")
    
    for file_path in files_to_process:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            file_struct_map = find_structs_in_content(content, verbose)
            
            for struct_name, fps in file_struct_map.items():
                if struct_name not in struct_fp_map:
                    struct_fp_map[struct_name] = []
                
                existing_fp_names = {fp[1] for fp in struct_fp_map[struct_name]}
                new_fps = [fp for fp in fps if fp[1] not in existing_fp_names]
                
                if new_fps:
                    struct_fp_map[struct_name].extend(new_fps)
                    
                    if verbose:
                        print(f"  📁 {os.path.basename(file_path)}")
                        print(f"     {struct_name}: {len(new_fps)} FP(s)")
                        for rt, fp_name, ti, idx in new_fps:
                            print(f"       [{idx}] {fp_name}")
        
        except Exception as e:
            if verbose:
                print(f"  ⚠️  {file_path}: {e}")
    
    return struct_fp_map


# ==========================================================
# 할당 패턴 검색
# ==========================================================

def find_struct_initializations(
    source_dir: str,
    struct_fp_map: Dict[str, List[Tuple[str, str, str, int]]],
    verbose: bool = False
) -> Dict[str, Set[str]]:
    """
    구조체 초기화 패턴에서 함수 포인터 할당 찾기 (3_0 방식)
    """
    fp_assignments = defaultdict(set)
    
    # 인덱스 맵 생성
    struct_fp_index_map = {}
    for struct_name, fps in struct_fp_map.items():
        struct_fp_index_map[struct_name] = {idx: fp_name for _, fp_name, _, idx in fps}
    
    file_patterns = [
        os.path.join(source_dir, "sqlite3.c"),
        os.path.join(source_dir, "sqlite3.h"),
        os.path.join(source_dir, "shell.c"),
        os.path.join(source_dir, "shell.h"),
    ]
    
    files_to_process = []
    for pattern in file_patterns:
        files_to_process.extend(glob.glob(pattern, recursive=False))
    
    for file_path in files_to_process:
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 3_0 방식: 간단한 주석 제거
            content_no_comments = re.sub(r'//.*?\n', '\n', content)
            content_no_comments = re.sub(r'/\*.*?\*/', '', content_no_comments, flags=re.DOTALL)
            
            for struct_name in struct_fp_map.keys():
                # 3_0 방식: 초기화 패턴
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
                    
                    # 3_0 방식: 콤마로 분리 (빈 값도 유지 - 인덱스 매칭!)
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
                            values.append(val)  # 빈 값도 추가!
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
                            
                            # 3_0 방식: 정확한 함수명 매칭
                            func_match = re.match(r'^\s*&?(\w+)\s*$', value_clean)
                            if func_match:
                                func_name = func_match.group(1)
                                
                                # 검증 강화
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
    .fpName = 패턴으로 함수 포인터 할당 찾기 (3_0 방식)
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
        os.path.join(source_dir, "sqlite3.c"),
        os.path.join(source_dir, "sqlite3.h"),
        os.path.join(source_dir, "shell.c"),
        os.path.join(source_dir, "shell.h"),
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
                    
                    # 검증
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
    struct_fp_map: Dict[str, List[Tuple[str, str, str, int]]],
    init_assignments: Dict[str, Set[str]],
    named_assignments: Dict[str, Set[str]]
) -> List[Dict]:
    """결과 집계"""
    
    # fp_name별로 정보 수집
    fp_info_map = {}
    
    for struct_name, fps in struct_fp_map.items():
        for return_type, fp_name, type_info, idx in fps:
            if fp_name not in fp_info_map:
                fp_info_map[fp_name] = {
                    "struct_name": struct_name,
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
            "fp_index": info["fp_index"],
            "assigned_fn": sorted(info["assigned_fn"]),
        })
    
    return result


# ==========================================================
# 메인
# ==========================================================

def main():
    parser = argparse.ArgumentParser(
        description="SQLite 구조체 함수 포인터 할당 추출 (3_0 방식 개선)",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # 기본 사용
  python3 sqlite_struct_fp_extract.py --source-dir /path/to/sqlite
  
  # Verbose 모드
  python3 sqlite_struct_fp_extract.py --source-dir . --verbose

Output:
  - sqlite_struct_fp.json: 구조체 함수 포인터 할당 정보
        """
    )
    
    parser.add_argument("--source-dir", required=True, help="SQLite 소스 디렉토리")
    parser.add_argument("--out", default="sqlite_struct_fp.json", help="출력 JSON 파일")
    parser.add_argument("--verbose", "-v", action="store_true", help="상세 출력")
    
    args = parser.parse_args()
    
    if not os.path.exists(args.source_dir):
        print(f"❌ Error: 소스 디렉토리를 찾을 수 없음: {args.source_dir}")
        sys.exit(1)
    
    print("🚀 SQLite 구조체 함수 포인터 분석 시작")
    print(f"   소스 디렉토리: {args.source_dir}")
    
    # Stage 1: 구조체 검색
    print(f"\n=== Stage 1: 함수 포인터를 가진 구조체 검색 ===")
    struct_fp_map = find_struct_with_function_pointers(args.source_dir, args.verbose)
    
    if not struct_fp_map:
        print("❌ 함수 포인터를 가진 구조체를 찾을 수 없음")
        sys.exit(0)
    
    total_fps = sum(len(fps) for fps in struct_fp_map.values())
    print(f"✓ {len(struct_fp_map)}개 구조체, {total_fps}개 함수 포인터")
    
    # Stage 2: 할당 찾기
    print(f"\n=== Stage 2: 할당 패턴 분석 ===")
    
    # 초기화
    init_assignments = find_struct_initializations(args.source_dir, struct_fp_map, args.verbose)
    init_count = sum(len(v) for v in init_assignments.values())
    print(f"✓ 초기화: {init_count}개 함수 할당")
    
    # Named 할당
    all_fp_names = set()
    for fps in struct_fp_map.values():
        for _, fp_name, _, _ in fps:
            all_fp_names.add(fp_name)
    
    named_assignments = find_named_assignments(args.source_dir, all_fp_names, args.verbose)
    named_count = sum(len(v) for v in named_assignments.values())
    print(f"✓ Named 할당: {named_count}개 함수 할당")
    
    # Stage 3: 집계
    print(f"\n=== Stage 3: 결과 집계 ===")
    result = aggregate_results(struct_fp_map, init_assignments, named_assignments)
    
    # 저장
    with open(args.out, 'w', encoding='utf-8') as f:
        json.dump(result, f, indent=2, ensure_ascii=False)
    
    print(f"💾 저장됨: {args.out}")
    
    # 통계
    total_assigned = sum(len(rec.get("assigned_fn", [])) for rec in result)
    filled = sum(1 for rec in result if rec.get("assigned_fn"))
    
    print(f"\n📊 통계:")
    print(f"   구조체: {len(struct_fp_map)}개")
    print(f"   함수 포인터: {len(result)}개")
    print(f"   할당 정보 있음: {filled}개")
    print(f"   총 함수 할당: {total_assigned}개")
    
    print(f"\n✅ 완료!")


if __name__ == "__main__":
    main()