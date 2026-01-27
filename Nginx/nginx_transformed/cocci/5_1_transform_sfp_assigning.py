#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Transform function pointer assignments to direct signature assignments using pure Python.
Supports .c, .h, .in, .cc files and chained member access (E1->E2->E3->fp_name).

Converts:
  E.FP_NAME = FUNC_NAME; -> E.FP_NAME_signature = FP_NAME_signatures[FP_NAME_FUNC_NAME_enum];
  E->FP_NAME = FUNC_NAME; -> E->FP_NAME_signature = FP_NAME_signatures[FP_NAME_FUNC_NAME_enum];
  E1->E2->FP_NAME = FUNC_NAME; -> E1->E2->FP_NAME_signature = FP_NAME_signatures[FP_NAME_FUNC_NAME_enum];

Usage:
  python3 5_1_transform_sfp_assigning.py --source-dir /path/to/source --json filled_parsing_resolved.json
"""

import argparse
import os
import re
import sys
import json
from typing import Dict, List, Set, Tuple
from collections import defaultdict


def iter_target_files(source_dir: str):
    """프로젝트 트리를 순회하여 .c, .h, .in, .cc 파일 선택"""
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in", ".cc")):
                yield os.path.join(dirpath, fn)


def read_remove_list(file_path: str = "remove_fn_list.txt") -> Set[str]:
    """Read functions to exclude from remove_fn_list.txt"""
    removed_functions = set()
    
    if not os.path.exists(file_path):
        print(f"[WARNING] Remove list file not found: {file_path}")
        return removed_functions
    
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#') and not line.startswith('//'):
                    func_name = re.sub(r'[^\w]', '', line)
                    if func_name:
                        removed_functions.add(func_name)
        
        print(f"[INFO] Loaded {len(removed_functions)} functions to exclude from {file_path}")
        return removed_functions
        
    except Exception as e:
        print(f"[ERROR] Failed to read {file_path}: {e}")
        return removed_functions


def load_fp_data_from_json(json_path: str) -> Dict[str, List[str]]:
    """
    Load function pointer data from JSON file
    Returns: {fp_name: [list of assigned functions]}
    """
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        fp_data = defaultdict(set)
        
        for entry in data:
            fp_name = entry.get('fp_name')
            assigned_fn = entry.get('assigned_fn', [])
            
            if fp_name and assigned_fn:
                for fn in assigned_fn:
                    if fn and fn not in ('', 'NULL', '0'):  # Skip empty, NULL, 0
                        fp_data[fp_name].add(fn)
        
        # Convert sets to sorted lists
        result = {fp: sorted(list(funcs)) for fp, funcs in fp_data.items()}
        
        print(f"[INFO] Loaded {len(result)} function pointers from {json_path}")
        total_funcs = sum(len(funcs) for funcs in result.values())
        print(f"[INFO] Total function assignments: {total_funcs}")
        
        return result
        
    except Exception as e:
        print(f"[ERROR] Failed to load JSON: {e}")
        sys.exit(1)


def transform_fp_assignment(
    content: str,
    fp_name: str,
    func_name: str,
    removed_functions: Set[str],
    verbose: bool = False
) -> Tuple[str, int]:
    """
    Transform function pointer assignments in content
    
    Supports chained member access:
      E.fp_name = func_name;
      E->fp_name = func_name;
      E1->E2->fp_name = func_name;
      E1->E2->E3->fp_name = func_name;
      obj.member.fp_name = func_name;
      
    Transforms to:
      E.fp_name_signature = fp_name_signatures[fp_name_func_name_enum];
      E->fp_name_signature = fp_name_signatures[fp_name_func_name_enum];
      E1->E2->fp_name_signature = fp_name_signatures[fp_name_func_name_enum];
      E1->E2->E3->fp_name_signature = fp_name_signatures[fp_name_func_name_enum];
      obj.member.fp_name_signature = fp_name_signatures[fp_name_func_name_enum];
    
    Returns:
        (transformed_content, number_of_transformations)
    """
    if func_name in removed_functions:
        return content, 0
    
    count = 0
    enum_name = f"{fp_name}_{func_name}"
    
    # Build pattern that captures the entire left-hand side expression
    # This pattern matches:
    # - identifier (word)
    # - followed by any number of:
    #   - . or -> followed by identifier
    # - ending with . or -> followed by fp_name
    
    # Pattern for both . and -> access (with optional & before function name)
    # Captures: (prefix_chain)(access_op)(fp_name) = (&?)(func_name);
    # where prefix_chain can be: identifier, identifier.member, identifier->member, etc.
    
    # Build the pattern:
    # (\w+(?:(?:\.|\->)\w+)*) : matches identifier or chain like a.b.c or a->b->c
    # (\.|\->) : matches the final access operator (. or ->)
    # {fp_name} : the function pointer name
    # \s*=\s* : assignment
    # (&?) : optional address-of operator
    # {func_name} : the function name
    # \s*; : semicolon
    
    pattern = rf'(\w+(?:(?:\.|\->)\w+)*)(\.|\->){re.escape(fp_name)}\s*=\s*(&?){re.escape(func_name)}\s*;'
    
    def replacement(match):
        prefix = match.group(1)  # The chain before fp_name (e.g., "obj", "a->b", "x.y.z")
        access_op = match.group(2)  # The access operator (. or ->)
        # match.group(3) is the optional &
        # match.group(4) would be func_name but we already know it
        
        # Build replacement
        return f'{prefix}{access_op}{fp_name}_signature = {enum_name};'
    
    new_content, n = re.subn(pattern, replacement, content)
    count += n
    
    if verbose and n > 0:
        print(f"    [PATTERN] Matched {n} occurrences of {fp_name} = {func_name}")
    
    return new_content, count


def process_file(
    file_path: str,
    fp_data: Dict[str, List[str]],
    removed_functions: Set[str],
    verbose: bool = False,
    dry_run: bool = False
) -> Tuple[bool, int]:
    """
    Process a single file and transform function pointer assignments
    
    Returns:
        (file_modified, total_transformations)
    """
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            original_content = f.read()
        
        content = original_content
        total_transformations = 0
        transformations = []  # For verbose output
        
        # Apply transformations for each function pointer
        for fp_name, functions in fp_data.items():
            for func_name in functions:
                content, count = transform_fp_assignment(
                    content, fp_name, func_name, removed_functions, verbose=False
                )
                
                if count > 0:
                    total_transformations += count
                    transformations.append((fp_name, func_name, count))
        
        # Write back if modified
        if content != original_content:
            if not dry_run:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                
                if verbose:
                    rel_path = os.path.relpath(file_path)
                    print(f"[MODIFIED] {rel_path}: {total_transformations} transformations")
                    for fp_name, func_name, count in transformations:
                        print(f"  - {fp_name} = {func_name}: {count}x")
            else:
                if verbose:
                    rel_path = os.path.relpath(file_path)
                    print(f"[DRY-RUN] {rel_path}: {total_transformations} transformations (not saved)")
                    for fp_name, func_name, count in transformations:
                        print(f"  - {fp_name} = {func_name}: {count}x")
            
            return True, total_transformations
        
        return False, 0
        
    except Exception as e:
        print(f"[ERROR] Failed to process {file_path}: {e}", file=sys.stderr)
        return False, 0


def main():
    parser = argparse.ArgumentParser(
        description="Transform function pointer assignments to direct signature assignments (Python-based, supports chained access)"
    )
    parser.add_argument(
        "--source-dir",
        required=True,
        help="Source directory to process"
    )
    parser.add_argument(
        "--json",
        required=True,
        help="JSON file containing function pointer data (e.g., filled_parsing_resolved.json)"
    )
    parser.add_argument(
        "--remove-list",
        default="remove_fn_list.txt",
        help="File containing functions to exclude (default: remove_fn_list.txt)"
    )
    parser.add_argument(
        "--verbose", "-v",
        action="store_true",
        help="Enable verbose output"
    )
    parser.add_argument(
        "--dry-run", "-d",
        action="store_true",
        help="Preview changes without modifying files"
    )
    
    args = parser.parse_args()
    
    # Validate inputs
    if not os.path.exists(args.source_dir):
        print(f"[ERROR] Source directory not found: {args.source_dir}")
        sys.exit(1)
    
    if not os.path.exists(args.json):
        print(f"[ERROR] JSON file not found: {args.json}")
        sys.exit(1)
    
    print(f"[INFO] Source directory: {args.source_dir}")
    print(f"[INFO] Loading function pointer data from: {args.json}")
    
    if args.dry_run:
        print(f"[INFO] DRY-RUN mode: Files will NOT be modified")
    
    # Load data
    removed_functions = read_remove_list(args.remove_list)
    fp_data = load_fp_data_from_json(args.json)
    
    if not fp_data:
        print("[ERROR] No function pointer data found in JSON")
        sys.exit(1)
    
    # Calculate statistics
    total_functions = 0
    valid_functions = 0
    excluded_functions = 0
    
    for fp_name, functions in fp_data.items():
        valid_funcs = [f for f in functions if f not in removed_functions]
        total_functions += len(functions)
        valid_functions += len(valid_funcs)
        excluded_functions += len(functions) - len(valid_funcs)
    
    print(f"\n[SUMMARY]")
    print(f"  Function pointers: {len(fp_data)}")
    print(f"  Total functions: {total_functions}")
    print(f"  Valid functions to transform: {valid_functions}")
    print(f"  Functions excluded: {excluded_functions}")
    
    if args.verbose:
        print(f"\n[FUNCTION POINTERS]")
        for fp_name in sorted(fp_data.keys()):
            functions = fp_data[fp_name]
            valid_funcs = [f for f in functions if f not in removed_functions]
            print(f"  {fp_name}: {len(valid_funcs)}/{len(functions)} valid")
    
    # Process files
    print(f"\n[INFO] Processing files (.c, .h, .in, .cc)...")
    print(f"[INFO] Supports chained access: E1->E2->E3->fp_name")
    
    files_processed = 0
    files_modified = 0
    total_transformations = 0
    
    for file_path in iter_target_files(args.source_dir):
        files_processed += 1
        
        if args.verbose and files_processed % 100 == 0:
            print(f"[PROGRESS] Processed {files_processed} files...")
        
        modified, count = process_file(
            file_path, fp_data, removed_functions, args.verbose, args.dry_run
        )
        
        if modified:
            files_modified += 1
            total_transformations += count
    
    # Final summary
    print(f"\n[RESULTS]")
    print(f"  Files processed: {files_processed}")
    print(f"  Files modified: {files_modified}")
    print(f"  Total transformations: {total_transformations}")
    
    if args.dry_run:
        print(f"\n[INFO] This was a DRY-RUN. No files were actually modified.")
        print(f"[INFO] Remove --dry-run to apply changes.")
    else:
        print(f"\n[SUCCESS] Transformation complete!")
        print(f"\n[TRANSFORMATION] Converted:")
        print(f"  E.FP_NAME = FUNC_NAME;")
        print(f"  E->FP_NAME = FUNC_NAME;")
        print(f"  E1->E2->FP_NAME = FUNC_NAME;")
        print(f"  E1->E2->E3->FP_NAME = FUNC_NAME;")
        print(f"  ↓")
        print(f"  [same_prefix]->FP_NAME_signature = FP_NAME_signatures[FP_NAME_FUNC_NAME_enum];")
        print(f"\n[ASSUMPTIONS] This script assumes:")
        print(f"  ✓ FP_NAME_signatures arrays are already defined")
        print(f"  ✓ FP_NAME_FUNC_NAME_enum values are already defined")
        print(f"  ✓ Structs have FP_NAME_signature fields")


if __name__ == "__main__":
    main()