#!/usr/bin/env python3
"""
ProFTPD 소스 코드에서 conftable, authtable, cmdtable의 함수 포인터 뒤에
sig_{function_name} 추가

Usage: python3 1_5_transform_hashtable_init.py <proftpd_root> <json_file> [--dry-run]
"""

import re
import json
import sys
import shutil
from pathlib import Path
from typing import Dict, List, Set

def load_hash_table_data(json_file: Path) -> List[Dict]:
    """Load hash table data from JSON file."""
    with open(json_file, 'r') as f:
        return json.load(f)

def extract_all_functions(hash_table_data: List[Dict]) -> Set[str]:
    """Extract all unique function names from all tables."""
    functions = set()
    
    for entry in hash_table_data:
        if 'assigned_fn' in entry and entry['assigned_fn']:
            functions.update(entry['assigned_fn'])
    
    return functions

def find_all_c_files(root_dir: Path) -> List[Path]:
    """Find all .c files in the directory tree."""
    c_files = []

    c_files.extend(root_dir.glob("*.c"))
    c_files.extend(root_dir.glob("**/*.c"))
    
    return sorted(c_files)

def replace_in_conftable(source_code: str, target_functions: Set[str]) -> tuple[str, int]:
    """
    conftable에서 함수 뒤에 sig_ 버전 추가
    Pattern: { "directive", function, ... }
    -> { "directive", function, sig_function, ... }
    """
    modified_code = source_code
    replacements = 0
    
    # conftable 패턴 찾기
    conftable_pattern = r'(?:static\s+)?conftable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
    def replace_entry(match):
        nonlocal replacements
        table_name = match.group(1)
        table_body = match.group(2)
        original_body = table_body
        
        # 각 엔트리에서 함수 뒤에 sig_ 추가
        # Pattern: { "str", function, ... }
        for func in target_functions:
            # 함수 이름이 정확히 매칭되는 경우만 (단어 경계 사용)
            pattern = r'(\{\s*"[^"]+"\s*,\s*)' + re.escape(func) + r'(\s*,)'
            replacement = r'\1' + func + r', sig_' + func + r'\2'
            new_body = re.sub(pattern, replacement, table_body)
            if new_body != table_body:
                replacements += 1
                table_body = new_body
        
        if table_body != original_body:
            return f'conftable {table_name}[] = {{{table_body}}};'
        return match.group(0)
    
    modified_code = re.sub(conftable_pattern, replace_entry, modified_code, flags=re.DOTALL)
    return modified_code, replacements

def replace_in_authtable(source_code: str, target_functions: Set[str]) -> tuple[str, int]:
    """
    authtable에서 함수 뒤에 sig_ 버전 추가
    Pattern: { number, "name", function }
    -> { number, "name", function, sig_function }
    """
    modified_code = source_code
    replacements = 0
    
    # authtable 패턴 찾기
    authtable_pattern = r'(?:static\s+)?authtable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
    def replace_entry(match):
        nonlocal replacements
        table_name = match.group(1)
        table_body = match.group(2)
        original_body = table_body
        
        # 각 엔트리에서 함수 뒤에 sig_ 추가
        # Pattern: { number, "str", function }
        for func in target_functions:
            pattern = r'(\{\s*\d+\s*,\s*"[^"]+"\s*,\s*)' + re.escape(func) + r'(\s*[,}])'
            replacement = r'\1' + func + r', sig_' + func + r'\2'
            new_body = re.sub(pattern, replacement, table_body)
            if new_body != table_body:
                replacements += 1
                table_body = new_body
        
        if table_body != original_body:
            return f'authtable {table_name}[] = {{{table_body}}};'
        return match.group(0)
    
    modified_code = re.sub(authtable_pattern, replace_entry, modified_code, flags=re.DOTALL)
    return modified_code, replacements

def replace_in_cmdtable(source_code: str, target_functions: Set[str]) -> tuple[str, int]:
    """
    cmdtable에서 함수 뒤에 sig_ 버전 추가
    Pattern: { type, "cmd", group, function, ... }
    -> { type, "cmd", group, function, sig_function, ... }
    """
    modified_code = source_code
    replacements = 0
    
    # cmdtable 패턴 찾기
    cmdtable_pattern = r'(?:static\s+)?cmdtable\s+(\w+)\s*\[\s*\]\s*=\s*\{(.*?)\};'
    
    def replace_entry(match):
        nonlocal replacements
        table_name = match.group(1)
        table_body = match.group(2)
        original_body = table_body
        
        # 각 엔트리에서 함수 뒤에 sig_ 추가
        # Pattern: { type, "cmd", group, function, ... }
        for func in target_functions:
            # 4번째 위치의 함수 이름 찾기
            pattern = r'(\{\s*\w+\s*,\s*(?:"[^"]+"|[\w]+)\s*,\s*\w+\s*,\s*)' + re.escape(func) + r'(\s*,)'
            replacement = r'\1' + func + r', sig_' + func + r'\2'
            new_body = re.sub(pattern, replacement, table_body)
            if new_body != table_body:
                replacements += 1
                table_body = new_body
        
        if table_body != original_body:
            return f'cmdtable {table_name}[] = {{{table_body}}};'
        return match.group(0)
    
    modified_code = re.sub(cmdtable_pattern, replace_entry, modified_code, flags=re.DOTALL)
    return modified_code, replacements

def process_file(file_path: Path, target_functions: Set[str], dry_run: bool = False) -> Dict:
    """
    단일 파일 처리
    
    Returns:
        {
            'modified': bool,
            'replacements': int,
            'file': str
        }
    """
    try:
        # 파일 읽기
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            original_code = f.read()
        
        modified_code = original_code
        total_replacements = 0
        
        # conftable 처리
        modified_code, count = replace_in_conftable(modified_code, target_functions)
        total_replacements += count
        
        # authtable 처리
        modified_code, count = replace_in_authtable(modified_code, target_functions)
        total_replacements += count
        
        # cmdtable 처리
        modified_code, count = replace_in_cmdtable(modified_code, target_functions)
        total_replacements += count
        
        # 변경사항이 있으면 파일 저장
        if total_replacements > 0 and not dry_run:
            # 백업 생성
            backup_path = str(file_path) + '.bak'
            shutil.copy2(file_path, backup_path)
            
            # 수정된 내용 저장
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(modified_code)
        
        return {
            'modified': total_replacements > 0,
            'replacements': total_replacements,
            'file': str(file_path)
        }
    
    except Exception as e:
        print(f"Error processing {file_path}: {e}", file=sys.stderr)
        return {
            'modified': False,
            'replacements': 0,
            'file': str(file_path),
            'error': str(e)
        }

def main():
    if len(sys.argv) < 3:
        print("Usage: python3 1_5_transform_hashtable_init.py <proftpd_root> <json_file> [--dry-run]")
        print()
        print("Arguments:")
        print("  proftpd_root : Root directory of ProFTPD source")
        print("  json_file    : JSON file with hash table data (from 1_1_extract_hash_table.py)")
        print("  --dry-run    : (Optional) Preview changes without modifying files")
        print()
        print("Example:")
        print("  python3 1_5_transform_hashtable_init.py \\")
        print("      /path/to/proftpd \\")
        print("      proftpd_hashtable.json")
        print()
        print("  # Preview only")
        print("  python3 1_5_transform_hashtable_init.py \\")
        print("      /path/to/proftpd \\")
        print("      proftpd_hashtable.json \\")
        print("      --dry-run")
        print()
        print("This will add sig_function after function in hash tables:")
        print("  { directive, function, ... }")
        print("  -> { directive, function, sig_function, ... }")
        print()
        print("All .c files in proftpd_root will be automatically searched and processed.")
        sys.exit(1)
    
    proftpd_root = Path(sys.argv[1])
    json_file = Path(sys.argv[2])
    dry_run = '--dry-run' in sys.argv[3:]
    
    # 입력 검증
    if not proftpd_root.exists() or not proftpd_root.is_dir():
        print(f"Error: ProFTPD root directory not found: {proftpd_root}", file=sys.stderr)
        sys.exit(1)
    
    if not json_file.exists():
        print(f"Error: JSON file not found: {json_file}", file=sys.stderr)
        sys.exit(1)
    
    print(f"ProFTPD root: {proftpd_root}", file=sys.stderr)
    print(f"JSON file: {json_file}", file=sys.stderr)
    
    if dry_run:
        print("DRY RUN MODE - No files will be modified", file=sys.stderr)
    
    print("", file=sys.stderr)
    
    # 데이터 로드
    print("Loading hash table data...", file=sys.stderr)
    hash_table_data = load_hash_table_data(json_file)
    
    print("Extracting target functions...", file=sys.stderr)
    target_functions = extract_all_functions(hash_table_data)
    
    print(f"Found {len(target_functions)} unique functions to transform", file=sys.stderr)
    
    # 모든 .c 파일 찾기
    print(f"Finding all .c files in {proftpd_root}...", file=sys.stderr)
    c_files = find_all_c_files(proftpd_root)
    
    print(f"Found {len(c_files)} .c files", file=sys.stderr)
    print(f"Processing files...", file=sys.stderr)
    print("", file=sys.stderr)
    
    # 파일 처리
    results = []
    modified_files = 0
    total_replacements = 0
    
    for file_path in c_files:
        result = process_file(file_path, target_functions, dry_run)
        results.append(result)
        
        if result['modified']:
            modified_files += 1
            total_replacements += result['replacements']
            status = "[DRY RUN] " if dry_run else ""
            relative_path = file_path.relative_to(proftpd_root)
            print(f"{status}Modified: {relative_path} ({result['replacements']} additions)", file=sys.stderr)
    
    # 결과 요약
    print("", file=sys.stderr)
    print("=== Summary ===", file=sys.stderr)
    print(f"Files processed: {len(results)}", file=sys.stderr)
    print(f"Files modified: {modified_files}", file=sys.stderr)
    print(f"Total sig_ additions: {total_replacements}", file=sys.stderr)
    
    if not dry_run and modified_files > 0:
        print("", file=sys.stderr)
        print("✓ Changes applied successfully!", file=sys.stderr)
        print("✓ Backup files created with .bak extension", file=sys.stderr)
        print("", file=sys.stderr)
        print("To restore all backups:", file=sys.stderr)
        print(f"  cd {proftpd_root}", file=sys.stderr)
        print("  find . -name '*.bak' -exec sh -c 'mv \"$1\" \"${1%.bak}\"' _ {} \\;", file=sys.stderr)

if __name__ == '__main__':
    main()