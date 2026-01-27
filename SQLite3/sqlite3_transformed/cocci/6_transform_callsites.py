#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Generate Coccinelle script from JSON input.
- Reads fp_name and assigned_fn from JSON
- Functions starting with 'x' are replaced with fp_name itself
- Generates transformation rules for E->fp_name() and E.fp_name() patterns
"""

import argparse
import os
import sys
import re
import json
from typing import Set, Dict, List

def read_remove_list(file_path: str = "remove_fn_list.txt") -> Set[str]:
    """Read functions to exclude"""
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
        
        print(f"[INFO] Loaded {len(removed_functions)} functions to exclude")
        return removed_functions
        
    except Exception as e:
        print(f"[ERROR] Failed to read {file_path}: {e}")
        return removed_functions

def load_fp_data_from_json(json_path: str) -> List[Dict]:
    """Load function pointer data from JSON"""
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        print(f"[INFO] Loaded {len(data)} function pointer entries")
        return data
        
    except Exception as e:
        print(f"[ERROR] Failed to load JSON: {e}")
        sys.exit(1)

SKIP_SUBSTRS = ("quota", "fts5", "multiplex")

def should_skip_func(func_name: str, removed_functions: Set[str]) -> bool:
    """Check if function should be skipped"""
    # if not func_name or func_name in ('0', 'NULL'):
    #     return True
    if func_name in removed_functions:
        return True
    return any(s in func_name.lower() for s in SKIP_SUBSTRS)

def process_assigned_fn(func_name: str, fp_name: str) -> str:
    """
    Process assigned function name:
    - If starts with 'x': replace with fp_name
    - Otherwise: return as-is
    """
    if func_name.startswith('x'):
        return fp_name
    return func_name

def generate_return_arrow_rules(fp_data: List[Dict], removed_functions: Set[str]) -> str:
    """Generate rules for: return E->fp_name(args);"""
    out = []
    out.append("// ===== RETURN ARROW TRANSFORMATION RULES =====\n")
    out.append("// Pattern: return E->fp_name(args);\n\n")

    total_rules = 0
    
    for entry in fp_data:
        fp_name = entry.get('fp_name')
        assigned_fn_list = entry.get('assigned_fn', [])
        
        if not fp_name:
            continue
        
        # Process assigned functions
        processed_funcs = []
        for func in assigned_fn_list:
            if should_skip_func(func, removed_functions):
                continue
            processed = process_assigned_fn(func, fp_name)
            processed_funcs.append(processed)
        
        if not processed_funcs:
            continue
        
        out.append(f"\n// FP: {fp_name}\n")
        out.append(f"// Candidates: {', '.join(processed_funcs)}\n")
        
        rule_name = f"transform_return_{fp_name}_arrow"
        
        # Single candidate: direct call
        if len(processed_funcs) == 1:
            func = processed_funcs[0]
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- return E->FP_NAME(args);\n")
            out.append(f"+ // return E->FP_NAME(args);\n")
            if {func} == '0' :
                out.append(f"+ return 0;\n")
            else : 
                out.append(f"+ return {func}(args);\n\n")
            total_rules += 1
            
        else:
            # Multiple candidates: if-else chain
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- return E->FP_NAME(args);\n")
            out.append(f"+ // return E->FP_NAME(args);\n")
            
            first = True
            for func in processed_funcs:
                if first:
                    out.append(f"+ if (memcmp(E->{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E->{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ return 0;\n")
                    else : 
                        out.append(f"+     return {func}(args);\n")
                    out.append(f"+ }}\n")
                    first = False
                else:
                    out.append(f"+ else if (memcmp(E->{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E->{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ return 0;\n")
                    else : 
                        out.append(f"+     return {func}(args);\n")
                    out.append(f"+ }}\n")
            
            out.append("\n")
            total_rules += 1
    
    out.append(f"// Total return arrow rules: {total_rules}\n\n")
    return "".join(out)

def generate_return_dot_rules(fp_data: List[Dict], removed_functions: Set[str]) -> str:
    """Generate rules for: return E.fp_name(args);"""
    out = []
    out.append("// ===== RETURN DOT TRANSFORMATION RULES =====\n")
    out.append("// Pattern: return E.fp_name(args);\n\n")

    total_rules = 0
    
    for entry in fp_data:
        fp_name = entry.get('fp_name')
        assigned_fn_list = entry.get('assigned_fn', [])
        
        if not fp_name:
            continue
        
        processed_funcs = []
        for func in assigned_fn_list:
            if should_skip_func(func, removed_functions):
                continue
            processed = process_assigned_fn(func, fp_name)
            processed_funcs.append(processed)
        
        if not processed_funcs:
            continue
        
        out.append(f"\n// FP: {fp_name}\n")
        
        rule_name = f"transform_return_{fp_name}_dot"
        
        if len(processed_funcs) == 1:
            func = processed_funcs[0]
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- return E.FP_NAME(args);\n")
            out.append(f"+ // return E.FP_NAME(args);\n")
            if func == '0' :
                out.append(f"+ return 0;\n")
            else : 
                out.append(f"+     return {func}(args);\n")
            total_rules += 1
            
        else:
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- return E.FP_NAME(args);\n")
            out.append(f"+ // return E.FP_NAME(args);\n")
            
            first = True
            for func in processed_funcs:
                if first:
                    out.append(f"+ if (memcmp(E.{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E.{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ return 0;\n")
                    else : 
                        out.append(f"+     return {func}(args);\n")
                    out.append(f"+ }}\n")
                    first = False
                else:
                    out.append(f"+ else if (memcmp(E.{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E.{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ return 0;\n")
                    else : 
                        out.append(f"+     return {func}(args);\n")
                    out.append(f"+ }}\n")
            
            out.append("\n")
            total_rules += 1
    
    out.append(f"// Total return dot rules: {total_rules}\n\n")
    return "".join(out)

def generate_assignment_arrow_rules(fp_data: List[Dict], removed_functions: Set[str]) -> str:
    """Generate rules for: E1 = E2->fp_name(args);"""
    out = []
    out.append("// ===== ASSIGNMENT ARROW TRANSFORMATION RULES =====\n")
    out.append("// Pattern: E1 = E2->fp_name(args);\n\n")

    total_rules = 0
    
    for entry in fp_data:
        fp_name = entry.get('fp_name')
        assigned_fn_list = entry.get('assigned_fn', [])
        
        if not fp_name:
            continue
        
        processed_funcs = []
        for func in assigned_fn_list:
            if should_skip_func(func, removed_functions):
                continue
            processed = process_assigned_fn(func, fp_name)
            processed_funcs.append(processed)
        
        if not processed_funcs:
            continue
        
        out.append(f"\n// FP: {fp_name}\n")
        
        rule_name = f"transform_assign_{fp_name}_arrow"
        
        if len(processed_funcs) == 1:
            func = processed_funcs[0]
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E1, E2;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E1 = E2->FP_NAME(args);\n")
            out.append(f"+ // E1 = E2->FP_NAME(args);\n")
            if func == '0' :
                out.append(f"+ E1 = 0;\n\n")
            else : 
                out.append(f"+ E1 = {func}(args);\n\n")
            total_rules += 1
            
        else:
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E1, E2;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E1 = E2->FP_NAME(args);\n")
            out.append(f"+ // E1 = E2->FP_NAME(args);\n")
            
            first = True
            for func in processed_funcs:
                if first:
                    out.append(f"+ if (memcmp(E2->{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E2->{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ E1 = 0;\n")
                    else : 
                        out.append(f"+ E1 = {func}(args);\n")
                    out.append(f"+ }}\n")
                    first = False
                else:
                    out.append(f"+ else if (memcmp(E2->{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E2->{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ E1 = 0;\n")
                    else : 
                        out.append(f"+ E1 = {func}(args);\n")
                    out.append(f"+ }}\n")
            
            out.append("\n")
            total_rules += 1
    
    out.append(f"// Total assignment arrow rules: {total_rules}\n\n")
    return "".join(out)

def generate_assignment_dot_rules(fp_data: List[Dict], removed_functions: Set[str]) -> str:
    """Generate rules for: E1 = E2.fp_name(args);"""
    out = []
    out.append("// ===== ASSIGNMENT DOT TRANSFORMATION RULES =====\n")
    out.append("// Pattern: E1 = E2.fp_name(args);\n\n")

    total_rules = 0
    
    for entry in fp_data:
        fp_name = entry.get('fp_name')
        assigned_fn_list = entry.get('assigned_fn', [])
        
        if not fp_name:
            continue
        
        processed_funcs = []
        for func in assigned_fn_list:
            if should_skip_func(func, removed_functions):
                continue
            processed = process_assigned_fn(func, fp_name)
            processed_funcs.append(processed)
        
        if not processed_funcs:
            continue
        
        out.append(f"\n// FP: {fp_name}\n")
        
        rule_name = f"transform_assign_{fp_name}_dot"
        
        if len(processed_funcs) == 1:
            func = processed_funcs[0]
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E1, E2;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E1 = E2.FP_NAME(args);\n")
            out.append(f"+ // E1 = E2.FP_NAME(args);\n")
            if func == '0' :
                out.append(f"+ E1 = 0;\n\n")
            else : 
                out.append(f"+ E1 = {func}(args);\n\n")
            total_rules += 1
            
        else:
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E1, E2;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E1 = E2.FP_NAME(args);\n")
            out.append(f"+ // E1 = E2.FP_NAME(args);\n")
            
            first = True
            for func in processed_funcs:
                if first:
                    out.append(f"+ if (memcmp(E2.{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E2.{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ E1 = 0;\n")
                    else : 
                        out.append(f"+ E1 = {func}(args);\n")
                    out.append(f"+ }}\n")
                    first = False
                else:
                    out.append(f"+ else if (memcmp(E2.{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E2.{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ E1 = 0;\n")
                    else : 
                        out.append(f"+ E1 = {func}(args);\n")
                    out.append(f"+ }}\n")
            
            out.append("\n")
            total_rules += 1
    
    out.append(f"// Total assignment dot rules: {total_rules}\n\n")
    return "".join(out)

def generate_standalone_arrow_rules(fp_data: List[Dict], removed_functions: Set[str]) -> str:
    """Generate rules for: E->fp_name(args);"""
    out = []
    out.append("// ===== STANDALONE ARROW CALL TRANSFORMATION RULES =====\n")
    out.append("// Pattern: E->fp_name(args);\n\n")

    total_rules = 0
    
    for entry in fp_data:
        fp_name = entry.get('fp_name')
        assigned_fn_list = entry.get('assigned_fn', [])
        
        if not fp_name:
            continue
        
        processed_funcs = []
        for func in assigned_fn_list:
            if should_skip_func(func, removed_functions):
                continue
            processed = process_assigned_fn(func, fp_name)
            processed_funcs.append(processed)
        
        if not processed_funcs:
            continue
        
        out.append(f"\n// FP: {fp_name}\n")
        
        rule_name = f"transform_standalone_{fp_name}_arrow"
        
        if len(processed_funcs) == 1:
            func = processed_funcs[0]
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E->FP_NAME(args);\n")
            out.append(f"+ // E->FP_NAME(args);\n")
            if func == '0' :
                out.append(f"+ 0;\n\n")
            else : 
                out.append(f"+ {func}(args);\n\n")
            total_rules += 1
            
        else:
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E->FP_NAME(args);\n")
            out.append(f"+ // E->FP_NAME(args);\n")
            
            first = True
            for func in processed_funcs:
                if first:
                    out.append(f"+ if (memcmp(E->{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E->{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ 0;\n")
                    else : 
                        out.append(f"+ {func}(args);\n")
                    out.append(f"+ }}\n")
                    first = False
                else:
                    out.append(f"+ else if (memcmp(E->{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E->{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ 0;\n")
                    else : 
                        out.append(f"+ {func}(args);\n")
                    out.append(f"+ }}\n")
            
            out.append("\n")
            total_rules += 1
    
    out.append(f"// Total standalone arrow rules: {total_rules}\n\n")
    return "".join(out)

def generate_standalone_dot_rules(fp_data: List[Dict], removed_functions: Set[str]) -> str:
    """Generate rules for: E.fp_name(args);"""
    out = []
    out.append("// ===== STANDALONE DOT CALL TRANSFORMATION RULES =====\n")
    out.append("// Pattern: E.fp_name(args);\n\n")

    total_rules = 0
    
    for entry in fp_data:
        fp_name = entry.get('fp_name')
        assigned_fn_list = entry.get('assigned_fn', [])
        
        if not fp_name:
            continue
        
        processed_funcs = []
        for func in assigned_fn_list:
            if should_skip_func(func, removed_functions):
                continue
            processed = process_assigned_fn(func, fp_name)
            processed_funcs.append(processed)
        
        if not processed_funcs:
            continue
        
        out.append(f"\n// FP: {fp_name}\n")
        
        rule_name = f"transform_standalone_{fp_name}_dot"
        
        if len(processed_funcs) == 1:
            func = processed_funcs[0]
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E.FP_NAME(args);\n")
            out.append(f"+ // E.FP_NAME(args);\n")
            if func == '0' :
                out.append(f"+ 0;\n\n")
            else : 
                out.append(f"+ {func}(args);\n\n")
            total_rules += 1
            
        else:
            out.append(f"\n@{rule_name}@\n")
            out.append(f"expression E;\n")
            out.append(f"identifier FP_NAME = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"- E.FP_NAME(args);\n")
            out.append(f"+ // E.FP_NAME(args);\n")
            
            first = True
            for func in processed_funcs:
                if first:
                    out.append(f"+ if (memcmp(E.{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E.{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ 0;\n")
                    else : 
                        out.append(f"+ {func}(args);\n")
                    out.append(f"+ }}\n")
                    first = False
                else:
                    out.append(f"+ else if (memcmp(E.{fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof(E.{fp_name}_signature)) == 0) {{\n")
                    if func == '0' :
                        out.append(f"+ 0;\n")
                    else : 
                        out.append(f"+ {func}(args);\n")
                    out.append(f"+ }}\n")
            
            out.append("\n")
            total_rules += 1
    
    out.append(f"// Total standalone dot rules: {total_rules}\n\n")
    return "".join(out)

def generate_cocci_script(fp_data: List[Dict], removed_functions: Set[str]) -> str:
    """Generate complete Coccinelle script"""
    
    script_parts = []
    
    # Header
    script_parts.append("""// Auto-generated Coccinelle script for function pointer call transformation
// Generated from JSON input
// 
// Special handling:
//   - Functions starting with 'x' are replaced with fp_name itself
//   - Functions in remove list are excluded
//
// Patterns:
//   1. return E->fp_name(args);
//   2. return E.fp_name(args);
//   3. E1 = E2->fp_name(args);
//   4. E1 = E2.fp_name(args);
//   5. E->fp_name(args);
//   6. E.fp_name(args);
//
// Usage: spatch --sp-file transform.cocci --dir <source_dir> --in-place

""")
    
    if not fp_data:
        script_parts.append("// No function pointer data found\n")
        return "".join(script_parts)
    
    script_parts.append(generate_return_arrow_rules(fp_data, removed_functions))
    script_parts.append(generate_return_dot_rules(fp_data, removed_functions))
    script_parts.append(generate_assignment_arrow_rules(fp_data, removed_functions))
    script_parts.append(generate_assignment_dot_rules(fp_data, removed_functions))
    script_parts.append(generate_standalone_arrow_rules(fp_data, removed_functions))
    script_parts.append(generate_standalone_dot_rules(fp_data, removed_functions))
    
    return "".join(script_parts)

def main():
    parser = argparse.ArgumentParser(
        description="Generate Coccinelle script from JSON input"
    )
    parser.add_argument("--json", required=True, help="JSON file with fp_name and assigned_fn")
    parser.add_argument("--output", default="transform_callsites.cocci", help="Output file")
    parser.add_argument("--remove-list", default="remove_fn_list.txt", help="Exclusion list")
    parser.add_argument("--verbose", "-v", action="store_true", help="Verbose output")
    
    args = parser.parse_args()
    
    if not os.path.exists(args.json):
        print(f"[ERROR] JSON file not found: {args.json}")
        sys.exit(1)
    
    print(f"[INFO] Loading data from: {args.json}")
    
    # Load data
    removed_functions = read_remove_list(args.remove_list)
    fp_data = load_fp_data_from_json(args.json)
    
    if not fp_data:
        print("[ERROR] No data found")
        sys.exit(1)
    
    # Statistics
    total_fps = len(fp_data)
    valid_fps = 0
    single_fp = 0
    multi_fp = 0
    x_replaced = 0
    
    for entry in fp_data:
        assigned_fn_list = entry.get('assigned_fn', [])
        fp_name = entry.get('fp_name', '')
        
        processed_funcs = []
        for func in assigned_fn_list:
            if should_skip_func(func, removed_functions):
                continue
            if func.startswith('x'):
                x_replaced += 1
            processed = process_assigned_fn(func, fp_name)
            processed_funcs.append(processed)
        
        if processed_funcs:
            valid_fps += 1
            if len(processed_funcs) == 1:
                single_fp += 1
            else:
                multi_fp += 1
    
    print(f"\n[SUMMARY]")
    print(f"  Total FPs: {total_fps}")
    print(f"  Valid FPs: {valid_fps}")
    print(f"    - Single function: {single_fp}")
    print(f"    - Multiple functions: {multi_fp}")
    print(f"  Functions starting with 'x' replaced with fp_name: {x_replaced}")
    
    # Generate script
    print(f"\n[INFO] Generating Coccinelle script...")
    script_content = generate_cocci_script(fp_data, removed_functions)
    
    # Write output
    output_path = args.output
    if not output_path.endswith('.cocci'):
        output_path += '.cocci'
    
    try:
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(script_content)
        
        print(f"[SUCCESS] Generated: {output_path}")
        print(f"\n[USAGE]")
        print(f"  spatch --sp-file {output_path} --dir <source_dir> --in-place")
        
    except Exception as e:
        print(f"[ERROR] Failed to write: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()