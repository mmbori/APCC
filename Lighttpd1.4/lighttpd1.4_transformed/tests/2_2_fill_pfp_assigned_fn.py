# #!/usr/bin/env python3
# # -*- coding: utf-8 -*-

# """
# Assigned Function Filler (improved version)

# 기능:
# - 1_parsing으로 생성된 tmp_parsing.json을 읽어서
# - 실제 호출 사이트에서 함수 포인터 인자로 전달된 함수명을 찾아
# - assigned_fn을 채워넣음

# 개선사항:
# - 새로운 JSON 포맷 지원 (line, file 필드)
# - 전처리 지시자 제거 (#define 매크로 호출 방지)
# - 선언/정의 필터링 강화
# - 더 정확한 함수 추출
# """

# import argparse
# import json
# import os
# import re
# import sys
# from collections import defaultdict, OrderedDict

# CTRL_KEYWORDS = {"if", "for", "while", "switch", "return", "sizeof", "catch"}
# IDENT = r"[A-Za-z_]\w*"

# # 함수 포인터 패턴: (*name)(...)
# # 개선: **ptr, ***ptr와 구분하기 위해 정확히 (*name) 형태만 매칭
# # 단, (**name)은 더블 포인터이므로 제외
# RE_FUNC_PTR_NAME = re.compile(
#     r"\(\s*\*\s*(?P<n>" + IDENT + r")\s*\)\s*\("
# )

# CALL_NAME_RE = re.compile(r"\b(?P<n>" + IDENT + r")\s*\(")


# def iter_target_files(source_dir: str):
#     """
#     프로젝트 트리를 순회하여 .c, .h, .in 파일 선택
#     """
#     for dirpath, _, filenames in os.walk(source_dir):
#         for fn in filenames:
#             if fn.endswith((".c", ".h", ".in")):
#                 yield os.path.join(dirpath, fn)

# # ==========================================================
# # 1) 전처리 및 주석 제거
# # ==========================================================

# def strip_preprocessor_and_comments(code: str) -> str:
#     """
#     전처리 지시자, 주석, 문자열 제거
    
#     개선: #define 매크로를 제거하여 IOTRACE(A) 같은 것이
#           함수 호출로 오인되지 않도록 함
#     """
#     res, i, n = [], 0, len(code)
    
#     while i < n:
#         c = code[i]
        
#         # 전처리 지시자 제거 (#define, #include 등)
#         if c == '#':
#             j = i + 1
#             # 백슬래시 연속 처리
#             while j < n:
#                 if code[j] == '\\' and j + 1 < n and code[j + 1] == '\n':
#                     j += 2
#                     continue
#                 if code[j] == '\n':
#                     j += 1
#                     break
#                 j += 1
#             res.append(' ')
#             i = j
#             continue
        
#         # 한 줄 주석 //
#         if c == '/' and i + 1 < n and code[i + 1] == '/':
#             j = i + 2
#             while j < n and code[j] != '\n':
#                 j += 1
#             res.append(' ')
#             i = j
            
#         # 블록 주석 /* */
#         elif c == '/' and i + 1 < n and code[i + 1] == '*':
#             j = i + 2
#             while j + 1 < n and not (code[j] == '*' and code[j + 1] == '/'):
#                 j += 1
#             i = min(j + 2, n)
#             res.append(' ')
            
#         # 문자열 "..."
#         elif c == '"':
#             # 문자열을 placeholder로 교체 (인자 개수 유지)
#             res.append('"__STR__"')
#             i += 1
#             esc = False
#             while i < n:
#                 if not esc and code[i] == '"':
#                     i += 1
#                     break
#                 esc = (not esc and code[i] == '\\')
#                 i += 1
                
#         # 문자 리터럴 '...'
#         elif c == "'":
#             # 문자 리터럴을 placeholder로 교체
#             res.append("'_'")
#             i += 1
#             esc = False
#             while i < n:
#                 if not esc and code[i] == "'":
#                     i += 1
#                     break
#                 esc = (not esc and code[i] == '\\')
#                 i += 1
#         else:
#             res.append(c)
#             i += 1
            
#     return ''.join(res)


# # ==========================================================
# # 2) 괄호 매칭 및 유틸리티
# # ==========================================================

# def find_matching_paren(s: str, open_idx: int) -> int:
#     """s[open_idx]가 '('일 때 대응하는 ')'의 인덱스 반환"""
#     if open_idx >= len(s) or s[open_idx] != '(':
#         return -1
    
#     depth = 0
#     for j in range(open_idx, len(s)):
#         if s[j] == '(':
#             depth += 1
#         elif s[j] == ')':
#             depth -= 1
#             if depth == 0:
#                 return j
#     return -1


# def skip_ws_forward(s: str, i: int) -> int:
#     """공백 건너뛰기 (앞으로)"""
#     while i < len(s) and s[i].isspace():
#         i += 1
#     return i


# def skip_ws_backward(s: str, i: int) -> int:
#     """공백 건너뛰기 (뒤로)"""
#     while i >= 0 and s[i].isspace():
#         i -= 1
#     return i


# # ==========================================================
# # 3) 호출 문맥 판별 (선언/정의 제외)
# # ==========================================================

# TYPE_KEYWORDS = {
#     "static", "inline", "extern", "register", "typedef",
#     "const", "volatile", "restrict",
#     "void", "char", "short", "int", "long", 
#     "signed", "unsigned", "float", "double",
#     "size_t", "struct", "union", "enum",
#     "_Atomic", "_Noreturn",
# }

# CONTROL_KEYWORDS = {
#     "if", "for", "while", "switch", "return", "sizeof"
# }


# def get_token_before(s: str, pos: int) -> tuple[str, int]:
#     """pos 이전의 마지막 식별자 반환: (토큰, 시작위치)"""
#     i = skip_ws_backward(s, pos - 1)
#     if i < 0:
#         return ("", -1)
    
#     # 식별자 추출
#     j = i
#     while j >= 0 and (s[j].isalnum() or s[j] == '_'):
#         j -= 1
    
#     token = s[j + 1:i + 1]
#     return (token, j + 1) if token else ("", -1)


# def is_function_call(code: str, name_start: int, open_paren: int, close_paren: int) -> bool:
#     """
#     func(...) 형태가 실제 호출인지 판별
    
#     제외해야 할 경우:
#     - 함수 선언: int func(...)
#     - 함수 정의: int func(...) {
#     - 함수 포인터: int (*func)(...)
#     """
    
#     # 1. 뒤쪽 검사: ) 다음 문자
#     j = skip_ws_forward(code, close_paren + 1)
#     if j < len(code):
#         ch = code[j]
#         if ch == '{':
#             # func(...) { → 함수 정의
#             return False
#         if ch == ';':
#             # func(...); → 선언일 가능성
#             # 앞쪽을 더 확인해야 함
#             pass
    
#     # 2. 앞쪽 검사: 함수명 앞의 토큰
#     token, token_pos = get_token_before(code, name_start)
    
#     # return func(...) → 호출
#     if token == "return":
#         return True
    
#     # 타입 키워드 앞: int func(...) → 선언/정의
#     if token in TYPE_KEYWORDS:
#         return False
    
#     # 대문자로만 구성된 매크로 타입: SQLITE_API func(...) → 선언
#     if token and token.isupper() and all(c.isupper() or c == '_' or c.isdigit() for c in token):
#         # 하지만 SQLITE_PRIVATE같은 수식어도 있으므로 조심스럽게
#         # 바로 앞 문자 확인
#         pass
    
#     # 3. 앞쪽 문자 확인
#     i = skip_ws_backward(code, name_start - 1)
#     if i < 0:
#         # 파일 시작 → 호출로 간주
#         return True
    
#     prev_char = code[i]
    
#     # 연산자/구분자 앞: = func(...), ( func(...), , func(...) → 호출
#     if prev_char in '=,()?:!~+-*/%&|^<>[{':
#         return True
    
#     # * 앞: *func(...) → 함수 포인터 역참조 또는 선언
#     # 문맥에 따라 다르지만, 보수적으로 호출로 간주
#     if prev_char == '*':
#         # 더 앞을 확인
#         k = skip_ws_backward(code, i - 1)
#         if k >= 0 and code[k] == '(':
#             # (*func)(...) → 함수 포인터 선언
#             return False
#         # *func(...) → 역참조 호출
#         return True
    
#     # ) 앞: )func(...) → 이상하지만 연속 호출 가능
#     if prev_char == ')':
#         return True
    
#     # 식별자 앞: type func(...) → 선언/정의
#     if prev_char.isalnum() or prev_char == '_':
#         # 토큰이 타입이면 선언
#         if token in TYPE_KEYWORDS:
#             return False
#         # 알 수 없는 식별자 → 보수적으로 선언으로 간주
#         return False
    
#     # 기본값: 호출로 간주
#     return True


# # ==========================================================
# # 4) 함수 호출 사이트 찾기
# # ==========================================================

# def find_function_calls(code: str, fn_name: str, debug: bool = False) -> list[tuple[int, str]]:
#     """
#     code에서 fn_name의 호출 사이트 찾기
    
#     Returns:
#         [(위치, 인자문자열), ...]
#     """
#     results = []
#     pattern = re.compile(rf'\b{re.escape(fn_name)}\s*\(')
    
#     matches = list(pattern.finditer(code))
#     if debug and matches:
#         print(f"    DEBUG: Found {len(matches)} potential call(s) to {fn_name}")
    
#     for m in matches:
#         name_start = m.start()
#         open_paren = m.end() - 1
        
#         # 괄호 매칭으로 인자 추출
#         close_paren = find_matching_paren(code, open_paren)
#         if close_paren == -1:
#             if debug:
#                 print(f"    DEBUG: No matching paren at {name_start}")
#             continue
        
#         # 호출 문맥 검사
#         is_call = is_function_call(code, name_start, open_paren, close_paren)
#         if debug:
#             snippet = code[max(0, name_start-20):min(len(code), close_paren+20)]
#             print(f"    DEBUG: At {name_start}: is_call={is_call}")
#             print(f"           Context: ...{snippet}...")
        
#         if not is_call:
#             continue
        
#         # 인자 부분 추출
#         args_str = code[open_paren + 1:close_paren]
#         results.append((name_start, args_str))
    
#     return results


# # ==========================================================
# # 5) 인자 분리 및 정규화
# # ==========================================================

# def split_arguments(args_str: str) -> list[str]:
#     """
#     함수 호출 인자 분리 (중첩 괄호 고려)
    
#     예: "a, b, func(c, d), e" → ["a", "b", "func(c, d)", "e"]
#     """
#     args = []
#     current = []
#     depth = 0
    
#     for ch in args_str:
#         if ch == '(':
#             depth += 1
#             current.append(ch)
#         elif ch == ')':
#             depth -= 1
#             current.append(ch)
#         elif ch == ',' and depth == 0:
#             args.append(''.join(current).strip())
#             current = []
#         else:
#             current.append(ch)
    
#     if current:
#         args.append(''.join(current).strip())
    
#     return [a for a in args if a]


# def normalize_argument(arg: str) -> str | None:
#     """
#     인자에서 함수명 추출
    
#     예:
#     - "&myFunc" → "myFunc"
#     - "SQLITE_TRANSIENT" → "SQLITE_TRANSIENT"
#     - "(void(*)(void*))myFunc" → "myFunc"
#     - "0" → "0" (수정: NULL도 수집)
#     - "NULL" → "NULL" (수정: NULL도 수집)
#     - "0L" → "0"
#     - "0U" → "0"
    
#     Returns:
#         함수명 또는 NULL 표현 또는 None (빈 문자열)
#     """
#     s = arg.strip()
    
#     # 빈 문자열
#     if not s:
#         return None
    
#     # 숫자 리터럴 (0, 0L, 0U, 0UL 등) → "0"으로 정규화
#     if re.match(r'^0+[uUlL]*$', s, re.IGNORECASE):
#         return '0'
    
#     # NULL 포인터 키워드 (수정됨!)
#     if s in ('NULL', 'nullptr', 'null'):
#         return 'NULL'  # NULL로 통일
    
#     # & 제거
#     if s.startswith('&'):
#         s = s[1:].strip()
    
#     # 캐스트 제거: (type)func 또는 (type*)func
#     # 여러 겹의 괄호 제거
#     while True:
#         s_stripped = s.strip()
#         if s_stripped.startswith('('):
#             # 괄호 균형 확인
#             close = find_matching_paren(s_stripped, 0)
#             if close > 0 and close < len(s_stripped) - 1:
#                 # (cast)rest 형태
#                 inner = s_stripped[1:close]
#                 # 타입 캐스트처럼 보이는지 확인
#                 # 연산자가 없으면 캐스트로 간주
#                 if not any(op in inner for op in '=+-*/%&|^<>[]{}'):
#                     s = s_stripped[close + 1:].strip()
#                     continue
#         break
    
#     # 전체를 감싸는 괄호 제거
#     while s.startswith('(') and s.endswith(')'):
#         inner_close = find_matching_paren(s, 0)
#         if inner_close == len(s) - 1:
#             s = s[1:-1].strip()
#         else:
#             break
    
#     # 마지막 식별자 추출
#     # 예: "some.struct->func" → "func"
#     match = re.search(r'[A-Za-z_]\w*$', s)
#     if match:
#         return match.group(0)
    
#     return None


# # ==========================================================
# # 6) 메인 로직
# # ==========================================================

# def collect_source_files(root: Path, use_whitelist: bool = True) -> list[Path]:
#     """
#     소스 파일 수집
    
#     Args:
#         root: 소스 루트 디렉토리
#         use_whitelist: True면 ALLOWED_FILES만, False면 모든 .c/.h 파일
    
#     Returns:
#         소스 파일 경로 리스트
#     """
#     files = []
    
#     if use_whitelist:
#         # 화이트리스트 기반 (기본값 - 1_parsing과 동일)
#         for p in root.rglob("*"):
#             if p.is_file() and p.name in ALLOWED_FILES:
#                 files.append(p)
#     else:
#         # 확장자 기반 (fallback)
#         for p in root.rglob("*"):
#             if p.is_file() and p.suffix in ALLOWED_EXTENSIONS:
#                 files.append(p)
    
#     return files


# def fill_assigned_functions(
#     parsing_json_path: str,
#     source_root: str,
#     output_json_path: str,
#     debug: bool = False
# ) -> None:
#     """
#     assigned_fn 채우기
    
#     Args:
#         parsing_json_path: tmp_parsing.json 경로
#         source_root: 소스 디렉토리
#         output_json_path: 출력 JSON 경로
#     """
    
#     # 1. JSON 로드
#     with open(parsing_json_path, 'r', encoding='utf-8') as f:
#         records = json.load(f)
    
#     print(f"📖 Loaded {len(records)} entries from {parsing_json_path}")
    
#     # 2. 소스 파일 수집
#     root = Path(source_root).resolve()
#     files = collect_source_files(root, use_whitelist=True)
    
#     # 화이트리스트로 파일이 없으면 모든 .c/.h 스캔
#     if not files:
#         print(f"  ⚠️  No files found with whitelist, scanning all .c/.h files...")
#         files = collect_source_files(root, use_whitelist=False)
    
#     print(f"📁 Found {len(files)} source files")
#     if debug:
#         for f in files[:5]:
#             print(f"  - {f.name}")
    
#     # 3. 대상 함수 목록
#     target_functions = {rec["fn_name"] for rec in records if rec.get("fn_name")}
#     print(f"🎯 Target functions: {len(target_functions)}")
    
#     # 4. 결과 저장: (fn_name, fp_name, fp_sequence) → set of assigned functions
#     assigned: dict[tuple[str, str, int], set[str]] = {}
    
#     # 5. 파일별로 스캔
#     for file_path in files:
#         print(f"\n📄 Scanning: {file_path.name}")
        
#         try:
#             with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#                 code = f.read()
#         except Exception as e:
#             print(f"  ⚠️  Error reading file: {e}")
#             continue
        
#         # 전처리 및 주석 제거
#         clean_code = strip_preprocessor_and_comments(code)
        
#         # 각 대상 함수에 대해
#         for fn_name in target_functions:
#             callsites = find_function_calls(clean_code, fn_name, debug=debug)
            
#             if not callsites:
#                 if debug:
#                     print(f"  DEBUG: No calls found for {fn_name}")
#                 continue
            
#             print(f"  ✓ Found {len(callsites)} call(s) to {fn_name}")
            
#             # 해당 함수의 레코드들
#             fn_records = [rec for rec in records if rec["fn_name"] == fn_name]
            
#             # 각 호출 사이트 분석
#             for _, args_str in callsites:
#                 args = split_arguments(args_str)
                
#                 # 각 레코드 (함수 포인터 파라미터) 처리
#                 for rec in fn_records:
#                     fp_name = rec["fp_name"]
#                     fp_seq = rec["fp_sequence"]
                    
#                     # 1-based → 0-based
#                     arg_idx = fp_seq - 1
                    
#                     if arg_idx < 0 or arg_idx >= len(args):
#                         continue
                    
#                     # 인자 정규화
#                     raw_arg = args[arg_idx]
#                     normalized = normalize_argument(raw_arg)
                    
#                     if debug and fp_seq <= 3:  # 처음 3개만 디버그
#                         print(f"      Arg #{fp_seq}: '{raw_arg}' -> '{normalized}'")
                    
#                     if normalized:
#                         key = (fn_name, fp_name, fp_seq)
#                         assigned.setdefault(key, set()).add(normalized)
    
#     # 6. 결과 반영
#     print("\n📝 Filling assigned_fn...")
#     for rec in records:
#         key = (rec["fn_name"], rec["fp_name"], rec["fp_sequence"])
#         assigned_funcs = sorted(assigned.get(key, set()))
#         rec["assigned_fn"] = assigned_funcs
        
#         if assigned_funcs:
#             print(f"  {rec['fn_name']}.{rec['fp_name']}: {assigned_funcs}")
    
#     # 7. 저장
#     with open(output_json_path, 'w', encoding='utf-8') as f:
#         json.dump(records, f, indent=2, ensure_ascii=False)
    
#     print(f"\n✅ Saved to: {output_json_path}")
    
#     # 8. 통계
#     total = len(records)
#     filled = sum(1 for rec in records if rec["assigned_fn"])
#     print(f"\n📊 Statistics:")
#     print(f"   Total entries: {total}")
#     print(f"   Filled: {filled} ({filled/total*100:.1f}%)")
#     print(f"   Empty: {total - filled} ({(total-filled)/total*100:.1f}%)")


# # ==========================================================
# # 7) CLI
# # ==========================================================

# def main():
#     import argparse
    
#     parser = argparse.ArgumentParser(
#         description="Fill assigned_fn in parsing JSON by scanning actual call sites",
#         formatter_class=argparse.RawDescriptionHelpFormatter,
#         epilog="""
# Examples:
#   python3 2_fill_assigned_fn.py --parsing tmp_parsing.json --out filled.json
#   python3 2_fill_assigned_fn.py --source-root /path/to/sqlite
#         """
#     )
    
#     parser.add_argument(
#         "--parsing",
#         default="tmp_parsing.json",
#         help="Input parsing JSON file (default: tmp_parsing.json)"
#     )
#     parser.add_argument(
#         "--out",
#         default="filled_parsing.json",
#         help="Output JSON file (default: filled_parsing.json)"
#     )
#     parser.add_argument(
#         "--source-root",
#         default="../",
#         help="Source root directory (default: ./)"
#     )
#     parser.add_argument(
#         "--debug",
#         action="store_true",
#         help="Enable debug logging"
#     )
    
#     args = parser.parse_args()
    
#     # 파일 존재 확인
#     if not Path(args.parsing).exists():
#         print(f"❌ Error: Input file not found: {args.parsing}")
#         sys.exit(1)
    
#     if not Path(args.source_root).exists():
#         print(f"❌ Error: Source root not found: {args.source_root}")
#         sys.exit(1)
    
#     # 실행
#     fill_assigned_functions(
#         parsing_json_path=args.parsing,
#         source_root=args.source_root,
#         output_json_path=args.out,
#         debug=args.debug
#     )


# if __name__ == "__main__":
#     main()

#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Assigned Function Filler (improved version)

기능:
- 1_parsing으로 생성된 tmp_parsing.json을 읽어서
- 실제 호출 사이트에서 함수 포인터 인자로 전달된 함수명을 찾아
- assigned_fn을 채워넣음

개선사항:
- 새로운 JSON 포맷 지원 (line, file 필드)
- 전처리 지시자 제거 (#define 매크로 호출 방지)
- 선언/정의 필터링 강화
- 더 정확한 함수 추출
"""

import json
import re
import sys
from pathlib import Path
from typing import List, Dict, Set, Tuple


# ==========================================================
# 1) 전처리 및 주석 제거
# ==========================================================

def strip_preprocessor_and_comments(code: str) -> str:
    """
    전처리 지시자, 주석, 문자열 제거
    
    개선: #define 매크로를 제거하여 IOTRACE(A) 같은 것이
          함수 호출로 오인되지 않도록 함
    """
    res, i, n = [], 0, len(code)
    
    while i < n:
        c = code[i]
        
        # 전처리 지시자 제거 (#define, #include 등)
        if c == '#':
            j = i + 1
            # 백슬래시 연속 처리
            while j < n:
                if code[j] == '\\' and j + 1 < n and code[j + 1] == '\n':
                    j += 2
                    continue
                if code[j] == '\n':
                    j += 1
                    break
                j += 1
            res.append(' ')
            i = j
            continue
        
        # 한 줄 주석 //
        if c == '/' and i + 1 < n and code[i + 1] == '/':
            j = i + 2
            while j < n and code[j] != '\n':
                j += 1
            res.append(' ')
            i = j
            
        # 블록 주석 /* */
        elif c == '/' and i + 1 < n and code[i + 1] == '*':
            j = i + 2
            while j + 1 < n and not (code[j] == '*' and code[j + 1] == '/'):
                j += 1
            i = min(j + 2, n)
            res.append(' ')
            
        # 문자열 "..."
        elif c == '"':
            # 문자열을 placeholder로 교체 (인자 개수 유지)
            res.append('"__STR__"')
            i += 1
            esc = False
            while i < n:
                if not esc and code[i] == '"':
                    i += 1
                    break
                esc = (not esc and code[i] == '\\')
                i += 1
                
        # 문자 리터럴 '...'
        elif c == "'":
            # 문자 리터럴을 placeholder로 교체
            res.append("'_'")
            i += 1
            esc = False
            while i < n:
                if not esc and code[i] == "'":
                    i += 1
                    break
                esc = (not esc and code[i] == '\\')
                i += 1
        else:
            res.append(c)
            i += 1
            
    return ''.join(res)


# ==========================================================
# 2) 괄호 매칭 및 유틸리티
# ==========================================================

def find_matching_paren(s: str, open_idx: int) -> int:
    """s[open_idx]가 '('일 때 대응하는 ')'의 인덱스 반환"""
    if open_idx >= len(s) or s[open_idx] != '(':
        return -1
    
    depth = 0
    for j in range(open_idx, len(s)):
        if s[j] == '(':
            depth += 1
        elif s[j] == ')':
            depth -= 1
            if depth == 0:
                return j
    return -1


def skip_ws_forward(s: str, i: int) -> int:
    """공백 건너뛰기 (앞으로)"""
    while i < len(s) and s[i].isspace():
        i += 1
    return i


def skip_ws_backward(s: str, i: int) -> int:
    """공백 건너뛰기 (뒤로)"""
    while i >= 0 and s[i].isspace():
        i -= 1
    return i


# ==========================================================
# 3) 호출 문맥 판별 (선언/정의 제외)
# ==========================================================

TYPE_KEYWORDS = {
    "static", "inline", "extern", "register", "typedef",
    "const", "volatile", "restrict",
    "void", "char", "short", "int", "long", 
    "signed", "unsigned", "float", "double",
    "size_t", "struct", "union", "enum",
    "_Atomic", "_Noreturn",
}

CONTROL_KEYWORDS = {
    "if", "for", "while", "switch", "return", "sizeof"
}


def get_token_before(s: str, pos: int) -> tuple[str, int]:
    """pos 이전의 마지막 식별자 반환: (토큰, 시작위치)"""
    i = skip_ws_backward(s, pos - 1)
    if i < 0:
        return ("", -1)
    
    # 식별자 추출
    j = i
    while j >= 0 and (s[j].isalnum() or s[j] == '_'):
        j -= 1
    
    token = s[j + 1:i + 1]
    return (token, j + 1) if token else ("", -1)


def is_function_call(code: str, name_start: int, open_paren: int, close_paren: int) -> bool:
    """
    func(...) 형태가 실제 호출인지 판별
    
    제외해야 할 경우:
    - 함수 선언: int func(...)
    - 함수 정의: int func(...) {
    - 함수 포인터: int (*func)(...)
    """
    
    # 1. 뒤쪽 검사: ) 다음 문자
    j = skip_ws_forward(code, close_paren + 1)
    if j < len(code):
        ch = code[j]
        if ch == '{':
            # func(...) { → 함수 정의
            return False
        if ch == ';':
            # func(...); → 선언일 가능성
            # 앞쪽을 더 확인해야 함
            pass
    
    # 2. 앞쪽 검사: 함수명 앞의 토큰
    token, token_pos = get_token_before(code, name_start)
    
    # return func(...) → 호출
    if token == "return":
        return True
    
    # 타입 키워드 앞: int func(...) → 선언/정의
    if token in TYPE_KEYWORDS:
        return False
    
    # 대문자로만 구성된 매크로 타입: SQLITE_API func(...) → 선언
    if token and token.isupper() and all(c.isupper() or c == '_' or c.isdigit() for c in token):
        # 하지만 SQLITE_PRIVATE같은 수식어도 있으므로 조심스럽게
        # 바로 앞 문자 확인
        pass
    
    # 3. 앞쪽 문자 확인
    i = skip_ws_backward(code, name_start - 1)
    if i < 0:
        # 파일 시작 → 호출로 간주
        return True
    
    prev_char = code[i]
    
    # 연산자/구분자 앞: = func(...), ( func(...), , func(...) → 호출
    if prev_char in '=,()?:!~+-*/%&|^<>[{':
        return True
    
    # * 앞: *func(...) → 함수 포인터 역참조 또는 선언
    # 문맥에 따라 다르지만, 보수적으로 호출로 간주
    if prev_char == '*':
        # 더 앞을 확인
        k = skip_ws_backward(code, i - 1)
        if k >= 0 and code[k] == '(':
            # (*func)(...) → 함수 포인터 선언
            return False
        # *func(...) → 역참조 호출
        return True
    
    # ) 앞: )func(...) → 이상하지만 연속 호출 가능
    if prev_char == ')':
        return True
    
    # 식별자 앞: type func(...) → 선언/정의
    if prev_char.isalnum() or prev_char == '_':
        # 토큰이 타입이면 선언
        if token in TYPE_KEYWORDS:
            return False
        # 알 수 없는 식별자 → 보수적으로 선언으로 간주
        return False
    
    # 기본값: 호출로 간주
    return True


# ==========================================================
# 4) 함수 호출 사이트 찾기
# ==========================================================

def find_function_calls(code: str, fn_name: str, debug: bool = False) -> list[tuple[int, str]]:
    """
    code에서 fn_name의 호출 사이트 찾기
    
    Returns:
        [(위치, 인자문자열), ...]
    """
    results = []
    pattern = re.compile(rf'\b{re.escape(fn_name)}\s*\(')
    
    matches = list(pattern.finditer(code))
    if debug and matches:
        print(f"    DEBUG: Found {len(matches)} potential call(s) to {fn_name}")
    
    for m in matches:
        name_start = m.start()
        open_paren = m.end() - 1
        
        # 괄호 매칭으로 인자 추출
        close_paren = find_matching_paren(code, open_paren)
        if close_paren == -1:
            if debug:
                print(f"    DEBUG: No matching paren at {name_start}")
            continue
        
        # 호출 문맥 검사
        is_call = is_function_call(code, name_start, open_paren, close_paren)
        if debug:
            snippet = code[max(0, name_start-20):min(len(code), close_paren+20)]
            print(f"    DEBUG: At {name_start}: is_call={is_call}")
            print(f"           Context: ...{snippet}...")
        
        if not is_call:
            continue
        
        # 인자 부분 추출
        args_str = code[open_paren + 1:close_paren]
        results.append((name_start, args_str))
    
    return results


# ==========================================================
# 5) 인자 분리 및 정규화
# ==========================================================

def split_arguments(args_str: str) -> list[str]:
    """
    함수 호출 인자 분리 (중첩 괄호 고려)
    
    예: "a, b, func(c, d), e" → ["a", "b", "func(c, d)", "e"]
    """
    args = []
    current = []
    depth = 0
    
    for ch in args_str:
        if ch == '(':
            depth += 1
            current.append(ch)
        elif ch == ')':
            depth -= 1
            current.append(ch)
        elif ch == ',' and depth == 0:
            args.append(''.join(current).strip())
            current = []
        else:
            current.append(ch)
    
    if current:
        args.append(''.join(current).strip())
    
    return [a for a in args if a]


def normalize_argument(arg: str) -> str | None:
    """
    인자에서 함수명 추출
    
    예:
    - "&myFunc" → "myFunc"
    - "SQLITE_TRANSIENT" → "SQLITE_TRANSIENT"
    - "(void(*)(void*))myFunc" → "myFunc"
    - "0" → "0" (수정: NULL도 수집)
    - "NULL" → "NULL" (수정: NULL도 수집)
    - "0L" → "0"
    - "0U" → "0"
    
    Returns:
        함수명 또는 NULL 표현 또는 None (빈 문자열)
    """
    s = arg.strip()
    
    # 빈 문자열
    if not s:
        return None
    
    # 숫자 리터럴 (0, 0L, 0U, 0UL 등) → "0"으로 정규화
    if re.match(r'^0+[uUlL]*$', s, re.IGNORECASE):
        return '0'
    
    # NULL 포인터 키워드 (수정됨!)
    if s in ('NULL', 'nullptr', 'null'):
        return 'NULL'  # NULL로 통일
    
    # & 제거
    if s.startswith('&'):
        s = s[1:].strip()
    
    # 캐스트 제거: (type)func 또는 (type*)func
    # 여러 겹의 괄호 제거
    while True:
        s_stripped = s.strip()
        if s_stripped.startswith('('):
            # 괄호 균형 확인
            close = find_matching_paren(s_stripped, 0)
            if close > 0 and close < len(s_stripped) - 1:
                # (cast)rest 형태
                inner = s_stripped[1:close]
                # 타입 캐스트처럼 보이는지 확인
                # 연산자가 없으면 캐스트로 간주
                if not any(op in inner for op in '=+-*/%&|^<>[]{}'):
                    s = s_stripped[close + 1:].strip()
                    continue
        break
    
    # 전체를 감싸는 괄호 제거
    while s.startswith('(') and s.endswith(')'):
        inner_close = find_matching_paren(s, 0)
        if inner_close == len(s) - 1:
            s = s[1:-1].strip()
        else:
            break
    
    # 마지막 식별자 추출
    # 예: "some.struct->func" → "func"
    match = re.search(r'[A-Za-z_]\w*$', s)
    if match:
        return match.group(0)
    
    return None


# ==========================================================
# 6) 메인 로직
# ==========================================================

def collect_source_files(root: Path) -> list[Path]:
    """
    소스 파일 수집: .c, .h, .in 파일 재귀 검색
    
    Args:
        root: 소스 루트 디렉토리
    
    Returns:
        소스 파일 경로 리스트
    """
    files = []
    
    for p in root.rglob("*"):
        if p.is_file() and p.suffix in {".c", ".h", ".in"}:
            files.append(p)
    
    return files

def fill_assigned_functions(
    parsing_json_path: str,
    source_root: str,
    output_json_path: str,
    debug: bool = False
) -> None:
    """
    assigned_fn 채우기
    
    Args:
        parsing_json_path: tmp_parsing.json 경로
        source_root: 소스 디렉토리
        output_json_path: 출력 JSON 경로
    """
    
    # 1. JSON 로드
    with open(parsing_json_path, 'r', encoding='utf-8') as f:
        records = json.load(f)
    
    print(f"📖 Loaded {len(records)} entries from {parsing_json_path}")
    
    # 2. 소스 파일 수집
    root = Path(source_root).resolve()
    files = collect_source_files(root)
    
    # 화이트리스트로 파일이 없으면 모든 .c/.h 스캔
    if not files:
        print(f"  ⚠️  No files found with whitelist, scanning all .c/.h files...")
        files = collect_source_files(root)
    
    print(f"📁 Found {len(files)} source files")
    if debug:
        for f in files[:5]:
            print(f"  - {f.name}")
    
    # 3. 대상 함수 목록
    target_functions = {rec["fn_name"] for rec in records if rec.get("fn_name")}
    print(f"🎯 Target functions: {len(target_functions)}")
    
    # 4. 결과 저장: (fn_name, fp_name, fp_sequence) → set of assigned functions
    assigned: dict[tuple[str, str, int], set[str]] = {}
    
    # 5. 파일별로 스캔
    for file_path in files:
        print(f"\n📄 Scanning: {file_path.name}")
        
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                code = f.read()
        except Exception as e:
            print(f"  ⚠️  Error reading file: {e}")
            continue
        
        # 전처리 및 주석 제거
        clean_code = strip_preprocessor_and_comments(code)
        
        # 각 대상 함수에 대해
        for fn_name in target_functions:
            callsites = find_function_calls(clean_code, fn_name, debug=debug)
            
            if not callsites:
                if debug:
                    print(f"  DEBUG: No calls found for {fn_name}")
                continue
            
            print(f"  ✓ Found {len(callsites)} call(s) to {fn_name}")
            
            # 해당 함수의 레코드들
            fn_records = [rec for rec in records if rec["fn_name"] == fn_name]
            
            # 각 호출 사이트 분석
            for _, args_str in callsites:
                args = split_arguments(args_str)
                
                # 각 레코드 (함수 포인터 파라미터) 처리
                for rec in fn_records:
                    fp_name = rec["fp_name"]
                    fp_seq = rec["fp_sequence"]
                    
                    # 1-based → 0-based
                    arg_idx = fp_seq - 1
                    
                    if arg_idx < 0 or arg_idx >= len(args):
                        continue
                    
                    # 인자 정규화
                    raw_arg = args[arg_idx]
                    normalized = normalize_argument(raw_arg)
                    
                    if debug and fp_seq <= 3:  # 처음 3개만 디버그
                        print(f"      Arg #{fp_seq}: '{raw_arg}' -> '{normalized}'")
                    
                    if normalized:
                        key = (fn_name, fp_name, fp_seq)
                        assigned.setdefault(key, set()).add(normalized)
    
    # 6. 결과 반영
    print("\n📝 Filling assigned_fn...")
    for rec in records:
        key = (rec["fn_name"], rec["fp_name"], rec["fp_sequence"])
        assigned_funcs = sorted(assigned.get(key, set()))
        rec["assigned_fn"] = assigned_funcs
        
        if assigned_funcs:
            print(f"  {rec['fn_name']}.{rec['fp_name']}: {assigned_funcs}")
    
    # 7. 저장
    with open(output_json_path, 'w', encoding='utf-8') as f:
        json.dump(records, f, indent=2, ensure_ascii=False)
    
    print(f"\n✅ Saved to: {output_json_path}")
    
    # 8. 통계
    total = len(records)
    filled = sum(1 for rec in records if rec["assigned_fn"])
    print(f"\n📊 Statistics:")
    print(f"   Total entries: {total}")
    print(f"   Filled: {filled} ({filled/total*100:.1f}%)")
    print(f"   Empty: {total - filled} ({(total-filled)/total*100:.1f}%)")


# ==========================================================
# 7) CLI
# ==========================================================

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description="Fill assigned_fn in parsing JSON by scanning actual call sites",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python3 2_fill_assigned_fn.py --parsing tmp_parsing.json --out filled.json
  python3 2_fill_assigned_fn.py --source-root /path/to/sqlite
        """
    )
    
    parser.add_argument(
        "--parsing",
        default="tmp_parsing.json",
        help="Input parsing JSON file (default: tmp_parsing.json)"
    )
    parser.add_argument(
        "--out",
        default="filled_parsing.json",
        help="Output JSON file (default: filled_parsing.json)"
    )
    parser.add_argument(
        "--source-root",
        default="../",
        help="Source root directory (default: ./)"
    )
    parser.add_argument(
        "--debug",
        action="store_true",
        help="Enable debug logging"
    )
    
    args = parser.parse_args()
    
    # 파일 존재 확인
    if not Path(args.parsing).exists():
        print(f"❌ Error: Input file not found: {args.parsing}")
        sys.exit(1)
    
    if not Path(args.source_root).exists():
        print(f"❌ Error: Source root not found: {args.source_root}")
        sys.exit(1)
    
    # 실행
    fill_assigned_functions(
        parsing_json_path=args.parsing,
        source_root=args.source_root,
        output_json_path=args.out,
        debug=args.debug
    )


if __name__ == "__main__":
    main()