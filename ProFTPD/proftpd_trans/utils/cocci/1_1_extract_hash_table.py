# #!/usr/bin/env python3
# """
# ProFTPD 소스 코드에서 conftable, authtable, cmdtable의 함수 포인터 추출
# """

# import re
# import json
# import sys
# from pathlib import Path
# from typing import Dict, List, Set

# def extract_table_functions(source_code: str, file_path: str) -> Dict[str, List[str]]:
#     """
#     소스 코드에서 테이블 함수 포인터 추출
    
#     Args:
#         source_code: C 소스 코드
#         file_path: 파일 경로
        
#     Returns:
#         {
#             'conftable': [...],
#             'authtable': [...],
#             'cmdtable': [...]
#         }
#     """
#     results = {
#         'conftable': [],
#         'authtable': [],
#         'cmdtable': []
#     }
    
#     # 1. conftable 패턴 - 2번째 인자
#     # static conftable name[] = {
#     #     { "directive", function, ... },
#     # };
#     conftable_pattern = r'(?:static\s+)?conftable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
#     for match in re.finditer(conftable_pattern, source_code, re.DOTALL):
#         table_name = match.group(1)
#         table_body = match.group(2)
        
#         # 각 엔트리 파싱: { "str", function, ... }
#         entry_pattern = r'\{\s*"([^"]+)"\s*,\s*(\w+)\s*,'
#         for entry_match in re.finditer(entry_pattern, table_body):
#             directive = entry_match.group(1)
#             function = entry_match.group(2)
            
#             if function != 'NULL' and directive != 'NULL':
#                 results['conftable'].append({
#                     'file': file_path,
#                     'table_name': table_name,
#                     'directive': directive,
#                     'function': function
#                 })
    
#     # 2. authtable 패턴 - 3번째 인자
#     # static authtable name[] = {
#     #     { 0, "name", function },
#     # };
#     authtable_pattern = r'(?:static\s+)?authtable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
#     for match in re.finditer(authtable_pattern, source_code, re.DOTALL):
#         table_name = match.group(1)
#         table_body = match.group(2)
        
#         # 각 엔트리 파싱: { 숫자, "str", function }
#         entry_pattern = r'\{\s*\d+\s*,\s*"([^"]+)"\s*,\s*(\w+)\s*[,}]'
#         for entry_match in re.finditer(entry_pattern, table_body):
#             auth_name = entry_match.group(1)
#             function = entry_match.group(2)
            
#             if function != 'NULL' and auth_name != 'NULL':
#                 results['authtable'].append({
#                     'file': file_path,
#                     'table_name': table_name,
#                     'auth_name': auth_name,
#                     'function': function
#                 })
    
#     # 3. cmdtable 패턴 - 4번째 인자
#     # static cmdtable name[] = {
#     #     { type, "cmd", group, function, ... },
#     # };
#     cmdtable_pattern = r'(?:static\s+)?cmdtable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
#     for match in re.finditer(cmdtable_pattern, source_code, re.DOTALL):
#         table_name = match.group(1)
#         table_body = match.group(2)
        
#         # 각 엔트리 파싱: { type, "cmd", group, function, ... }
#         # 더 유연한 패턴 사용
#         entry_pattern = r'\{\s*(\w+)\s*,\s*(?:"([^"]+)"|(\w+))\s*,\s*(\w+)\s*,\s*(\w+)\s*,'
#         for entry_match in re.finditer(entry_pattern, table_body):
#             cmd_type = entry_match.group(1)
#             command = entry_match.group(2) or entry_match.group(3)  # "string" or C_MACRO
#             group = entry_match.group(4)
#             function = entry_match.group(5)
            
#             # 0이나 NULL은 종료 마커
#             if cmd_type != '0' and function != 'NULL' and command:
#                 results['cmdtable'].append({
#                     'file': file_path,
#                     'table_name': table_name,
#                     'cmd_type': cmd_type,
#                     'command': command,
#                     'group': group,
#                     'function': function
#                 })
    
#     return results

# def remove_comments(source_code: str) -> str:
#     """C 소스 코드에서 주석 제거"""
#     # /* */ 스타일 주석 제거
#     source_code = re.sub(r'/\*.*?\*/', '', source_code, flags=re.DOTALL)
#     # // 스타일 주석 제거
#     source_code = re.sub(r'//.*?$', '', source_code, flags=re.MULTILINE)
#     return source_code

# def process_file(file_path: Path) -> Dict[str, List[str]]:
#     """단일 파일 처리"""
#     try:
#         with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#             source_code = f.read()
        
#         # 주석 제거
#         source_code = remove_comments(source_code)
        
#         # 함수 추출
#         return extract_table_functions(source_code, str(file_path))
    
#     except Exception as e:
#         print(f"Error processing {file_path}: {e}", file=sys.stderr)
#         return {'conftable': [], 'authtable': [], 'cmdtable': []}

# def read_file_list(list_file: Path) -> List[Path]:
#     """파일 리스트에서 경로 읽기"""
#     files = []
    
#     with open(list_file, 'r') as f:
#         for line in f:
#             line = line.strip()
#             # 빈 줄이나 주석 무시
#             if line and not line.startswith("#"):
#                 files.append(Path(line))
    
#     return files

# def process_files_from_list(proftpd_root: Path, file_list: List[Path]) -> Dict[str, List[Dict]]:
#     """파일 리스트에서 지정된 파일들만 처리"""
#     all_results = {
#         'conftable': [],
#         'authtable': [],
#         'cmdtable': []
#     }
    
#     print(f"Processing {len(file_list)} files from list", file=sys.stderr)
    
#     for relative_path in file_list:
#         file_path = proftpd_root / relative_path
        
#         # .c 파일만 처리
#         if file_path.suffix != '.c':
#             continue
            
#         if not file_path.exists():
#             print(f"Warning: File not found: {file_path}", file=sys.stderr)
#             continue
        
#         results = process_file(file_path)
        
#         for table_type in ['conftable', 'authtable', 'cmdtable']:
#             all_results[table_type].extend(results[table_type])
    
#     return all_results

# def summarize_results(results: Dict[str, List[Dict]]) -> List[Dict]:
#     """결과를 간단한 형식으로 변환"""
#     summary = []
    
#     for table_type in ['conftable', 'authtable', 'cmdtable']:
#         functions = set()
        
#         for entry in results[table_type]:
#             functions.add(entry['function'])
        
#         summary.append({
#             'table': table_type,
#             'assigned_fn': sorted(list(functions))
#         })
    
#     return summary

# def main():
#     if len(sys.argv) < 3:
#         print("Usage: python extract_hash_table.py <proftpd_root> <file_list> [output_json]")
#         print("\nExample:")
#         print("  python extract_hash_table.py /path/to/proftpd sources.txt output.json")
#         print("\nfile_list format: one file path per line (relative to proftpd_root)")
#         print("  modules/mod_core.c")
#         print("  src/main.c")
#         print("  ...")
#         sys.exit(1)
    
#     proftpd_root = Path(sys.argv[1])
#     file_list_path = Path(sys.argv[2])
#     output_file = sys.argv[3] if len(sys.argv) > 3 else None
    
#     if not proftpd_root.exists() or not proftpd_root.is_dir():
#         print(f"Error: {proftpd_root} is not a valid directory", file=sys.stderr)
#         sys.exit(1)
    
#     if not file_list_path.exists():
#         print(f"Error: File list not found: {file_list_path}", file=sys.stderr)
#         sys.exit(1)
    
#     print(f"ProFTPD root: {proftpd_root}", file=sys.stderr)
#     print(f"File list: {file_list_path}", file=sys.stderr)
    
#     # 파일 리스트 읽기
#     file_list = read_file_list(file_list_path)
    
#     # 처리
#     results = process_files_from_list(proftpd_root, file_list)
    
#     # 요약 생성
#     summary = summarize_results(results)

#     # JSON 출력
#     json_output = json.dumps(summary, indent=2)
    
#     if output_file:
#         with open(output_file, 'w') as f:
#             f.write(json_output)
#         print(f"\n✓ Results saved to: {output_file}", file=sys.stderr)
#     else:
#         print(json_output)
    
#     # 통계 출력 (stderr)
#     print("\n=== Summary ===", file=sys.stderr)
#     for item in summary:
#         print(f"{item['table']}: {len(item['assigned_fn'])} unique functions", file=sys.stderr)

# if __name__ == '__main__':
#     main()

#!/usr/bin/env python3
"""
ProFTPD 소스 코드 전체에서 conftable, authtable, cmdtable의 함수 포인터 추출
"""

import re
import json
import sys
import glob
from pathlib import Path
from typing import Dict, List, Set

def extract_table_functions(source_code: str, file_path: str) -> Dict[str, List[str]]:
    """
    소스 코드에서 테이블 함수 포인터 추출
    
    Args:
        source_code: C 소스 코드
        file_path: 파일 경로
        
    Returns:
        {
            'conftable': [...],
            'authtable': [...],
            'cmdtable': [...]
        }
    """
    results = {
        'conftable': [],
        'authtable': [],
        'cmdtable': []
    }
    
    # 1. conftable 패턴 - 2번째 인자
    # static conftable name[] = {
    #     { "directive", function, ... },
    # };
    conftable_pattern = r'(?:static\s+)?conftable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
    for match in re.finditer(conftable_pattern, source_code, re.DOTALL):
        table_name = match.group(1)
        table_body = match.group(2)
        
        # 각 엔트리 파싱: { "str", function, ... }
        entry_pattern = r'\{\s*"([^"]+)"\s*,\s*(\w+)\s*,'
        for entry_match in re.finditer(entry_pattern, table_body):
            directive = entry_match.group(1)
            function = entry_match.group(2)
            
            if function != 'NULL' and directive != 'NULL':
                results['conftable'].append({
                    'file': file_path,
                    'table_name': table_name,
                    'directive': directive,
                    'function': function
                })
    
    # 2. authtable 패턴 - 3번째 인자
    # static authtable name[] = {
    #     { 0, "name", function },
    # };
    authtable_pattern = r'(?:static\s+)?authtable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
    for match in re.finditer(authtable_pattern, source_code, re.DOTALL):
        table_name = match.group(1)
        table_body = match.group(2)
        
        # 각 엔트리 파싱: { 숫자, "str", function }
        entry_pattern = r'\{\s*\d+\s*,\s*"([^"]+)"\s*,\s*(\w+)\s*[,}]'
        for entry_match in re.finditer(entry_pattern, table_body):
            auth_name = entry_match.group(1)
            function = entry_match.group(2)
            
            if function != 'NULL' and auth_name != 'NULL':
                results['authtable'].append({
                    'file': file_path,
                    'table_name': table_name,
                    'auth_name': auth_name,
                    'function': function
                })
    
    # 3. cmdtable 패턴 - 4번째 인자
    # static cmdtable name[] = {
    #     { type, "cmd", group, function, ... },
    # };
    cmdtable_pattern = r'(?:static\s+)?cmdtable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
    for match in re.finditer(cmdtable_pattern, source_code, re.DOTALL):
        table_name = match.group(1)
        table_body = match.group(2)
        
        # 각 엔트리 파싱: { type, "cmd", group, function, ... }
        # 더 유연한 패턴 사용
        entry_pattern = r'\{\s*(\w+)\s*,\s*(?:"([^"]+)"|(\w+))\s*,\s*(\w+)\s*,\s*(\w+)\s*,'
        for entry_match in re.finditer(entry_pattern, table_body):
            cmd_type = entry_match.group(1)
            command = entry_match.group(2) or entry_match.group(3)  # "string" or C_MACRO
            group = entry_match.group(4)
            function = entry_match.group(5)
            
            # 0이나 NULL은 종료 마커
            if cmd_type != '0' and function != 'NULL' and command:
                results['cmdtable'].append({
                    'file': file_path,
                    'table_name': table_name,
                    'cmd_type': cmd_type,
                    'command': command,
                    'group': group,
                    'function': function
                })
    
    return results

def remove_comments(source_code: str) -> str:
    """C 소스 코드에서 주석 제거"""
    # /* */ 스타일 주석 제거
    source_code = re.sub(r'/\*.*?\*/', '', source_code, flags=re.DOTALL)
    # // 스타일 주석 제거
    source_code = re.sub(r'//.*?$', '', source_code, flags=re.MULTILINE)
    return source_code

def process_file(file_path: Path) -> Dict[str, List[str]]:
    """단일 파일 처리"""
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            source_code = f.read()
        
        # 주석 제거
        source_code = remove_comments(source_code)
        
        # 함수 추출
        return extract_table_functions(source_code, str(file_path))
    
    except Exception as e:
        print(f"Error processing {file_path}: {e}", file=sys.stderr)
        return {'conftable': [], 'authtable': [], 'cmdtable': []}

def find_all_c_files(proftpd_root: Path) -> List[Path]:
    """ProFTPD 소스 디렉토리에서 모든 .c 파일 찾기"""
    c_files = []

    c_files.extend(proftpd_root.glob("*.c"))
    c_files.extend(proftpd_root.glob("**/*.c"))
    
    return sorted(c_files)

def process_all_files(proftpd_root: Path, verbose: bool = False) -> Dict[str, List[Dict]]:
    """모든 C 파일 처리"""
    all_results = {
        'conftable': [],
        'authtable': [],
        'cmdtable': []
    }
    
    c_files = find_all_c_files(proftpd_root)
    
    print(f"Found {len(c_files)} C files to process", file=sys.stderr)
    
    processed = 0
    for file_path in c_files:
        if verbose:
            print(f"Processing: {file_path.relative_to(proftpd_root)}", file=sys.stderr)
        
        results = process_file(file_path)
        
        # 결과 통합
        for table_type in ['conftable', 'authtable', 'cmdtable']:
            if results[table_type]:
                all_results[table_type].extend(results[table_type])
                if verbose:
                    print(f"  Found {len(results[table_type])} {table_type} entries", file=sys.stderr)
        
        processed += 1
        if not verbose and processed % 10 == 0:
            print(f"  Processed {processed}/{len(c_files)} files...", file=sys.stderr)
    
    print(f"✓ Processed {processed} files", file=sys.stderr)
    
    return all_results

def summarize_results(results: Dict[str, List[Dict]]) -> List[Dict]:
    """결과를 테이블별로 요약"""
    summary = []
    
    for table_type in ['conftable', 'authtable', 'cmdtable']:
        functions = set()
        
        for entry in results[table_type]:
            functions.add(entry['function'])
        
        summary.append({
            'table': table_type,
            'count': len(functions),
            'assigned_fn': sorted(list(functions))
        })
    
    return summary

def generate_detailed_report(results: Dict[str, List[Dict]], output_file: str):
    """상세 리포트 생성 (각 함수의 출처 포함)"""
    detailed = {
        'conftable': {},
        'authtable': {},
        'cmdtable': {}
    }
    
    for table_type in ['conftable', 'authtable', 'cmdtable']:
        for entry in results[table_type]:
            func = entry['function']
            
            if func not in detailed[table_type]:
                detailed[table_type][func] = {
                    'function': func,
                    'sources': []
                }
            
            source_info = {
                'file': entry['file'],
                'table_name': entry['table_name']
            }
            
            if table_type == 'conftable':
                source_info['directive'] = entry['directive']
            elif table_type == 'authtable':
                source_info['auth_name'] = entry['auth_name']
            elif table_type == 'cmdtable':
                source_info['command'] = entry['command']
                source_info['cmd_type'] = entry['cmd_type']
            
            detailed[table_type][func]['sources'].append(source_info)
    
    with open(output_file, 'w') as f:
        json.dump(detailed, f, indent=2)

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='ProFTPD 전체 소스에서 테이블 함수 추출',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
사용 예시:
  %(prog)s /path/to/proftpd
  %(prog)s /path/to/proftpd -o output.json
  %(prog)s /path/to/proftpd -o output.json --detailed report.json -v

출력 형식:
  - 기본: 테이블별 함수 목록 (간단)
  - --detailed: 각 함수의 출처 포함 (상세)
        """
    )
    
    parser.add_argument('proftpd_root', 
                        help='ProFTPD 소스 루트 디렉토리')
    parser.add_argument('-o', '--output',
                        help='출력 JSON 파일 (기본: 표준출력)')
    parser.add_argument('--detailed',
                        help='상세 리포트 출력 파일 (각 함수의 출처 포함)')
    parser.add_argument('-v', '--verbose',
                        action='store_true',
                        help='상세 출력')
    
    args = parser.parse_args()
    
    proftpd_root = Path(args.proftpd_root)
    
    if not proftpd_root.exists() or not proftpd_root.is_dir():
        print(f"Error: {proftpd_root} is not a valid directory", file=sys.stderr)
        sys.exit(1)
    
    print(f"ProFTPD root: {proftpd_root}", file=sys.stderr)
    print(f"Scanning all C files...\n", file=sys.stderr)
    
    # 전체 파일 처리
    results = process_all_files(proftpd_root, args.verbose)
    
    # 요약 생성
    summary = summarize_results(results)
    
    # JSON 출력 (요약)
    json_output = json.dumps(summary, indent=2)
    
    if args.output:
        with open(args.output, 'w') as f:
            f.write(json_output)
        print(f"\n✓ Summary saved to: {args.output}", file=sys.stderr)
    else:
        print("\n=== JSON Output ===", file=sys.stderr)
        print(json_output)
    
    # 상세 리포트 생성 (옵션)
    if args.detailed:
        generate_detailed_report(results, args.detailed)
        print(f"✓ Detailed report saved to: {args.detailed}", file=sys.stderr)
    
    # 통계 출력
    print("\n=== Summary ===", file=sys.stderr)
    for item in summary:
        print(f"{item['table']}: {item['count']} unique functions", file=sys.stderr)
    
    total_funcs = sum(item['count'] for item in summary)
    print(f"\nTotal: {total_funcs} unique functions across all tables", file=sys.stderr)

if __name__ == '__main__':
    main()