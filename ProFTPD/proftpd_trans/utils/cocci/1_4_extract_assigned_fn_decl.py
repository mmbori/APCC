#!/usr/bin/env python3
"""
Generate Coccinelle script with separate rules for each target function.
Each function gets its own rule for better performance and clarity.

Usage: python3 1_4_extract_assigned_fn_decl.py <json_file> <scope_file> <output_cocci>
"""

import json
import sys
import os

def load_target_functions(json_file):
    """Load target functions from hashtable JSON."""
    with open(json_file, 'r') as f:
        hashtable_data = json.load(f)
    
    target_functions = set()
    for entry in hashtable_data:
        if 'assigned_fn' in entry and entry['assigned_fn']:
            target_functions.update(entry['assigned_fn'])
    
    return sorted(target_functions)

def load_scope_files(scope_file):
    """Load list of files to search from scope file."""
    with open(scope_file, 'r') as f:
        return [line.strip() for line in f if line.strip()]

def generate_cocci_script(target_functions, scope_files):
    """Generate Coccinelle script with separate rule for each function."""
    
    lines = []
    
    # Header
    lines.append("// Auto-generated Coccinelle script for extracting function declarations")
    lines.append("// Target functions from hashtable JSON")
    lines.append("// Each function has its own rule for better performance")
    lines.append("// Note: Matches both static and non-static functions, removes 'static' from output")
    lines.append("")
    
    # Generate a separate rule for each function
    for i, func in enumerate(target_functions):
        rule_name = f"find_{func}"
        script_name = f"print_{func}"
        
        # Pattern matching rule (matches both static and non-static functions)
        lines.append(f"@{rule_name}@")
        lines.append(f"identifier func = {func};")
        lines.append("type T;")
        lines.append("parameter list[n] P;")
        lines.append("@@")
        lines.append("")
        lines.append("(")
        lines.append("T func(P) { ... }")
        lines.append("|")
        lines.append("static T func(P) { ... }")
        lines.append(")")
        lines.append("")
        
        # Python script to print declaration
        lines.append(f"@script:python {script_name}@")
        lines.append(f"func << {rule_name}.func;")
        lines.append(f"T << {rule_name}.T;")
        lines.append(f"P << {rule_name}.P;")
        lines.append("@@")
        lines.append("")
        lines.append("# Convert parameter list to clean format")
        lines.append("params = P")
        lines.append("if ',' in params:")
        lines.append("    # Clean up parameter formatting")
        lines.append("    param_list = [p.strip() for p in params.split(',')]")
        lines.append("    params = ', '.join(param_list)")
        lines.append("")
        lines.append("# Remove 'static' keyword from type if present")
        lines.append("type_str = T")
        lines.append("if type_str.startswith('static '):")
        lines.append("    type_str = type_str[7:]  # Remove 'static '")
        lines.append("type_str = type_str.strip()")
        lines.append("")
        lines.append("# Print declaration (definition with { replaced by ;, static removed)")
        lines.append("print(f\"{type_str} {func}({params});\")")
        lines.append("")
        
        # Add separator between rules (except after last one)
        if i < len(target_functions) - 1:
            lines.append("// " + "-" * 70)
            lines.append("")
    
    return '\n'.join(lines)

def main():
    # Parse command line arguments
    if len(sys.argv) != 4:
        print("Usage: python3 1_4_extract_assigned_fn_decl.py <json_file> <scope_file> <output_cocci>")
        print()
        print("Arguments:")
        print("  json_file    : JSON file containing hashtable data (e.g., proftpd_hashtable.json)")
        print("  scope_file   : Text file containing list of source files to process (e.g., proftpd_scope.txt)")
        print("  output_cocci : Output Coccinelle script file (e.g., extract_decl.cocci)")
        print()
        print("Example:")
        print("  python3 1_4_extract_assigned_fn_decl.py proftpd_hashtable.json proftpd_scope.txt extract_decl.cocci")
        sys.exit(1)
    
    json_file = sys.argv[1]
    scope_file = sys.argv[2]
    output_cocci = sys.argv[3]
    
    # Check if input files exist
    if not os.path.exists(json_file):
        print(f"Error: JSON file not found: {json_file}", file=sys.stderr)
        sys.exit(1)
    
    if not os.path.exists(scope_file):
        print(f"Error: Scope file not found: {scope_file}", file=sys.stderr)
        sys.exit(1)
    
    # Load data
    print(f"Loading target functions from {json_file}...", file=sys.stderr)
    target_functions = load_target_functions(json_file)
    
    print(f"Loading scope files from {scope_file}...", file=sys.stderr)
    scope_files = load_scope_files(scope_file)
    
    print(f"Found {len(target_functions)} target functions", file=sys.stderr)
    print(f"Found {len(scope_files)} scope files", file=sys.stderr)
    
    # Generate Coccinelle script
    print(f"Generating Coccinelle script with {len(target_functions)} rules...", file=sys.stderr)
    cocci_script = generate_cocci_script(target_functions, scope_files)
    
    # Write to output file
    with open(output_cocci, 'w') as f:
        f.write(cocci_script)
    
    print(f"Coccinelle script written to {output_cocci}", file=sys.stderr)
    print(f"", file=sys.stderr)
    print(f"To run the script:", file=sys.stderr)
    print(f"  spatch --sp-file {output_cocci} $(cat {scope_file})", file=sys.stderr)
    print(f"", file=sys.stderr)
    print(f"Or use the wrapper script:", file=sys.stderr)
    print(f"  python3 run_cocci_on_scope.py {output_cocci} {scope_file} [proftpd_root]", file=sys.stderr)

if __name__ == '__main__':
    main()