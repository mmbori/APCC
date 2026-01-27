
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Generate a Coccinelle .cocci file that removes the `static` keyword
from definitions/declarations of functions listed in function pointer JSON (assigned_fn[]).

This script processes function pointer assignment data and:
- Removes static keywords from all assigned_fn functions
- Extracts function signatures and saves them as declarations
- Combines all declarations into a single header file
- Tracks which functions are assigned to which function pointers

Usage:
    python3 2_remove_static_fp.py --json fp_assignments.json -o remove_static_fp.cocci
"""

import argparse
import json
import re
import sys
from typing import List, Set, Dict

VALID_IDENT = re.compile(r'^[A-Za-z_]\w*$')

def load_assigned_functions(json_path: str, verbose: bool = False) -> tuple[List[str], Dict[str, List[str]]]:
    """
    Load and extract unique function names from assigned_fn arrays in JSON.
    Also returns mapping of fp_name -> assigned_fn list for reference.
    """
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"[ERROR] JSON file not found: {json_path}", file=sys.stderr)
        sys.exit(1)
    except json.JSONDecodeError as e:
        print(f"[ERROR] Invalid JSON format: {e}", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"[ERROR] Failed to read JSON file: {e}", file=sys.stderr)
        sys.exit(1)

    names: Set[str] = set()
    fp_mapping: Dict[str, List[str]] = {}
    
    if not isinstance(data, list):
        print("[ERROR] JSON root must be an array", file=sys.stderr)
        sys.exit(1)

    for i, entry in enumerate(data):
        if not isinstance(entry, dict):
            print(f"[WARN] Skipping non-object entry at index {i}", file=sys.stderr)
            continue
        
        fp_name = entry.get("fp_name", f"unknown_{i}")
        assigned_fn_list = entry.get("assigned_fn", [])
        
        if not isinstance(assigned_fn_list, list):
            print(f"[WARN] Skipping invalid assigned_fn field at index {i}", file=sys.stderr)
            continue
        
        valid_functions = []
        for func in assigned_fn_list:
            if isinstance(func, str):
                func = func.strip()
                # Skip "0" which represents NULL pointer
                if func == "0":
                    if verbose:
                        print(f"[INFO] Skipping NULL assignment (0) for {fp_name}")
                    continue
                # Only add valid identifiers
                if func and VALID_IDENT.match(func):
                    names.add(func)
                    valid_functions.append(func)
                elif func:
                    print(f"[WARN] Skipping invalid identifier: {func} (from {fp_name})", file=sys.stderr)
        
        if valid_functions:
            fp_mapping[fp_name] = valid_functions
    
    return sorted(names), fp_mapping

def clean_function_signature(signature: str) -> str:
    """
    Clean up function signature formatting with improved pointer handling
    """
    if not signature:
        return signature
    
    # Normalize all whitespace to single spaces
    signature = re.sub(r'\s+', ' ', signature.strip())
    
    # Handle parameter pointers
    signature = re.sub(r'(\w)(\*+)(\w)', r'\1 \2\3', signature)
    
    # Handle return type pointers
    signature = re.sub(r'^(\w+)(\*+)', r'\1 \2', signature)
    
    # Fix function pointer return types
    signature = re.sub(r'(\w)(\*+)(\w+\s*\()', r'\1 \2\3', signature)
    
    # Clean up any double spaces
    signature = re.sub(r'\s+', ' ', signature)
    
    # Ensure no space between consecutive asterisks
    signature = re.sub(r'\*\s+\*', '**', signature)
    signature = re.sub(r'\*\s+\*\s+\*', '***', signature)
    
    return signature.strip()

def generate_signature_extraction_script(rule_name: str, has_type: bool = True) -> str:
    """Generate Python script for signature extraction (uses shared function)"""
    type_vars = "T << {0}.T;\n".format(rule_name) if has_type else ""
    type_in_signature = "{T} " if has_type else "void "
    
    return f"""
@script:python depends on {rule_name}@
F << {rule_name}.F;
{type_vars}P << {rule_name}.P;
@@
extract_and_save_signature("{type_in_signature}{{F}}({{P}});", "{{F}}")
"""

def generate_cocci_rules(func: str) -> str:
    """Generate Coccinelle rules for a specific function with position tracking"""
    return f"""
// Rules for function: {func}

// Rule 1: Remove static from function definitions with explicit return type
@remove_static_{func}_def@
position p;
type T;
identifier F = {func};
parameter list P;
@@
- static@p T F(P)
+ T F(P)
{{
  ...
}}
{generate_signature_extraction_script(f'remove_static_{func}_def', has_type=True)}

// Rule 2: Remove static from function definitions with void return
@remove_static_{func}_def_void@
position p;
identifier F = {func};
parameter list P;
@@
- static@p void F(P)
+ void F(P)
{{
  ...
}}
{generate_signature_extraction_script(f'remove_static_{func}_def_void', has_type=False)}

// Rule 3: Remove static from function declarations with explicit return type
@remove_static_{func}_decl@
position p;
type T;
identifier F = {func};
parameter list P;
@@
- static@p T F(P);
+ T F(P);
{generate_signature_extraction_script(f'remove_static_{func}_decl', has_type=True)}

// Rule 4: Remove static from function declarations with void return
@remove_static_{func}_decl_void@
position p;
identifier F = {func};
parameter list P;
@@
- static@p void F(P);
+ void F(P);
{generate_signature_extraction_script(f'remove_static_{func}_decl_void', has_type=False)}
"""

def generate_header() -> str:
    """Generate the header for the Coccinelle file with shared Python functions"""
    return """//
// Coccinelle script to remove 'static' keyword from function pointer assigned functions
//
// Generated by: 2_remove_static_fp.py
// Purpose: Remove static from functions assigned to function pointers (assigned_fn)
//
// This script processes functions that are assigned to function pointers and:
// 1. Removes the static keyword from their definitions and declarations
// 2. Extracts function signatures to individual files in definitions/ folder
// 3. Combines all declarations into a single header file
//
// Usage: spatch --sp-file remove_static_fp.cocci --dir <source_directory> --in-place

// Shared Python functions
@initialize:python@
@@
import os
import re

def clean_function_signature(signature):
    '''Clean up function signature formatting'''
    if not signature:
        return signature
    
    # Normalize all whitespace
    signature = re.sub(r'\\s+', ' ', signature.strip())
    
    # Remove all spaces around asterisks first
    signature = re.sub(r'\\s*\\*\\s*', '*', signature)
    
    # Add space before asterisk groups
    signature = re.sub(r'(\\w)(\\*+)', r'\\1 \\2', signature)
    
    # Clean up double spaces
    signature = re.sub(r'\\s+', ' ', signature)
    
    return signature.strip()

def extract_and_save_signature(signature, func_name):
    '''Extract and save function signature to file'''
    os.makedirs("definitions", exist_ok=True)
    clean_signature = clean_function_signature(signature)
    with open(f"definitions/{func_name}.txt", "w") as f:
        f.write(f"{clean_signature}\\n")
    print(f"[EXTRACTED] {func_name} definition saved to definitions/{func_name}.txt")

"""

def generate_consolidation_script(fp_mapping: Dict[str, List[str]]) -> str:
    """Generate script to consolidate all function declarations into one header file"""
    # Generate mapping information as Python dict literal
    mapping_lines = []
    for fp_name, functions in fp_mapping.items():
        func_list = ", ".join(f'"{f}"' for f in functions)
        mapping_lines.append(f'    "{fp_name}": [{func_list}]')
    
    mapping_str = "{\n" + ",\n".join(mapping_lines) + "\n}"
    
    return f"""
@script:python@
@@
import os
import glob

print("\\n>>> CONSOLIDATING FUNCTION DECLARATIONS")

# Mapping of function pointers to their assigned functions
fp_mapping = {mapping_str}

def_files = glob.glob("definitions/*.txt")
if not def_files:
    print(">>> No function declarations found to consolidate")
else:
    print(f">>> Found {{len(def_files)}} function declarations")
    
    # Read all declarations
    declarations = {{}}
    for def_file in sorted(def_files):
        func_name = os.path.basename(def_file).replace('.txt', '')
        try:
            with open(def_file, 'r') as f:
                signature = f.read().strip()
            declarations[func_name] = signature
        except Exception as e:
            print(f">>> [ERROR] Failed to read {{def_file}}: {{e}}")
    
    # Write consolidated header file
    header_path = "fp_function_declarations.h"
    try:
        with open(header_path, 'w') as f:
            f.write("/* Function declarations for function pointer assignments */\\n")
            f.write("/* Generated by Coccinelle script */\\n")
            f.write("/* This file contains declarations of all functions assigned to function pointers */\\n\\n")
            f.write("#ifndef FP_FUNCTION_DECLARATIONS_H\\n")
            f.write("#define FP_FUNCTION_DECLARATIONS_H\\n\\n")
            
            # Group by function pointer
            for fp_name, functions in fp_mapping.items():
                f.write(f"/* Functions assigned to {{fp_name}} */\\n")
                for func in functions:
                    if func in declarations:
                        f.write(f"{{declarations[func]}}\\n")
                    else:
                        f.write(f"/* Declaration not found: {{func}} */\\n")
                f.write("\\n")
            
            f.write("#endif /* FP_FUNCTION_DECLARATIONS_H */\\n")
        
        print(f">>> Successfully created consolidated header: {{header_path}}")
        print(f">>> Total declarations: {{len(declarations)}}")
        
        # Print summary by function pointer
        print("\\n>>> ASSIGNMENT SUMMARY:")
        for fp_name, functions in fp_mapping.items():
            found_count = sum(1 for f in functions if f in declarations)
            print(f">>>   {{fp_name}}: {{found_count}}/{{len(functions)}} declarations found")
            
    except Exception as e:
        print(f">>> [ERROR] Failed to create consolidated header: {{e}}")

print(">>> Consolidation complete")
"""

def generate_footer(func_count: int, fp_count: int) -> str:
    """Generate the footer for the Coccinelle file"""
    return f"""
@finalize:python@
@@
print("\\n>>> PROCESSING COMPLETE")
print(">>> Total functions processed: {func_count}")
print(">>> Function pointers with assignments: {fp_count}")
print(">>> Function declarations extracted to definitions/ folder")
print(">>> Consolidated declarations saved to fp_function_declarations.h")
"""

def validate_functions(functions: List[str]) -> List[str]:
    """Validate and filter function names"""
    valid_functions = []
    for func in functions:
        if not func:
            continue
        if not VALID_IDENT.match(func):
            print(f"[WARN] Skipping invalid function name: {func}", file=sys.stderr)
            continue
        if len(func) > 64:  # Reasonable limit for function names
            print(f"[WARN] Skipping very long function name: {func[:32]}...", file=sys.stderr)
            continue
        valid_functions.append(func)
    
    return valid_functions

def main():
    parser = argparse.ArgumentParser(
        description="Generate Coccinelle script to remove 'static' keyword from function pointer assigned functions",
        epilog="Processes assigned_fn arrays from JSON and generates declarations in a single header file"
    )
    parser.add_argument(
        "--json", 
        required=True, 
        help="Path to JSON file containing fp_name and assigned_fn mappings"
    )
    parser.add_argument(
        "-o", "--output", 
        required=True, 
        help="Output path for the generated .cocci file"
    )
    parser.add_argument(
        "--max-functions",
        type=int,
        default=1000,
        help="Maximum number of functions to process (default: 1000)"
    )
    parser.add_argument(
        "--verbose", "-v",
        action="store_true",
        help="Enable verbose output"
    )
    
    args = parser.parse_args()

    # Load functions from JSON
    if args.verbose:
        print(f"[INFO] Loading functions from: {args.json}")
    
    functions, fp_mapping = load_assigned_functions(args.json, args.verbose)
    
    if not functions:
        print("[ERROR] No valid function identifiers found in JSON file", file=sys.stderr)
        sys.exit(1)
    
    if args.verbose:
        print(f"[INFO] Found {len(functions)} unique functions from {len(fp_mapping)} function pointers")
        print(f"[INFO] Function pointer assignments:")
        for fp_name, funcs in fp_mapping.items():
            print(f"[INFO]   {fp_name}: {len(funcs)} functions")
    
    # Validate functions
    valid_functions = validate_functions(functions)
    
    if len(valid_functions) != len(functions):
        print(f"[INFO] Filtered to {len(valid_functions)} valid functions")
    
    # Limit number of functions if requested
    if len(valid_functions) > args.max_functions:
        print(f"[WARN] Too many functions ({len(valid_functions)}), limiting to {args.max_functions}")
        # Filter fp_mapping as well
        limited_funcs = set(valid_functions[:args.max_functions])
        fp_mapping = {
            fp: [f for f in funcs if f in limited_funcs]
            for fp, funcs in fp_mapping.items()
        }
        fp_mapping = {fp: funcs for fp, funcs in fp_mapping.items() if funcs}
        valid_functions = valid_functions[:args.max_functions]
    
    # Generate output filename
    output_path = args.output
    if not output_path.endswith('.cocci'):
        output_path += '.cocci'
    
    # Generate Coccinelle script
    try:
        with open(output_path, 'w', encoding='utf-8') as f:
            # Write header
            f.write(generate_header())
            
            # Write rules for each function
            for func in valid_functions:
                if args.verbose:
                    print(f"[INFO] Generating rules for: {func}")
                f.write(generate_cocci_rules(func))
            
            # Add consolidation script
            f.write(generate_consolidation_script(fp_mapping))
            
            # Write footer
            f.write(generate_footer(len(valid_functions), len(fp_mapping)))
        
        print(f"[SUCCESS] Generated Coccinelle script: {output_path}")
        print(f"[INFO] Functions processed: {len(valid_functions)}")
        print(f"[INFO] Function pointers: {len(fp_mapping)}")
        
        if valid_functions:
            print(f"[INFO] Sample functions: {', '.join(valid_functions[:5])}")
            if len(valid_functions) > 5:
                print(f"[INFO] ... and {len(valid_functions) - 5} more")
        
        # Show mapping summary
        print(f"\n[ASSIGNMENT SUMMARY]")
        for fp_name, funcs in sorted(fp_mapping.items())[:10]:
            print(f"  {fp_name}: {len(funcs)} function(s)")
        if len(fp_mapping) > 10:
            print(f"  ... and {len(fp_mapping) - 10} more function pointers")
        
        print(f"\n[OUTPUT FILES]")
        print(f"✓ Individual declarations: definitions/*.txt")
        print(f"✓ Consolidated header: fp_function_declarations.h")
        
        print(f"\n[USAGE] Apply with: spatch --sp-file {output_path} --dir /path/to/source --in-place")
        
    except IOError as e:
        print(f"[ERROR] Failed to write output file: {e}", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"[ERROR] Unexpected error during file generation: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()