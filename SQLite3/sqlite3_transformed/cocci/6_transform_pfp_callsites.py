# #!/usr/bin/env python3
# # -*- coding: utf-8 -*-

# """
# Generate Coccinelle script to transform function pointer parameter calls.
# Only processes: fp_name(args) - NOT obj->fp_name() or obj.fp_name()

# Patterns transformed:
# 1. fp_name(args);              -> if-else chain
# 2. rc = fp_name(args);         -> if-else chain  
# 3. return fp_name(args);       -> if-else chain with temp variable

# Usage:
#   python3 6_transform_pfp_callsites.py --json data.json --output transform.cocci
# """

# import argparse
# import os
# import sys
# import re
# import json
# from typing import Set, Dict, List

# def read_remove_list(file_path: str = "remove_fn_list.txt") -> Set[str]:
#     """Read functions to exclude"""
#     removed_functions = set()
    
#     if not os.path.exists(file_path):
#         print(f"[WARNING] Remove list file not found: {file_path}")
#         return removed_functions
    
#     try:
#         with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
#             for line in f:
#                 line = line.strip()
#                 if line and not line.startswith('#') and not line.startswith('//'):
#                     func_name = re.sub(r'[^\w]', '', line)
#                     if func_name:
#                         removed_functions.add(func_name)
        
#         print(f"[INFO] Loaded {len(removed_functions)} functions to exclude")
#         return removed_functions
        
#     except Exception as e:
#         print(f"[ERROR] Failed to read {file_path}: {e}")
#         return removed_functions

# def load_fp_data_from_json(json_path: str) -> Dict[str, Dict]:
#     """Load function pointer data from JSON"""
#     try:
#         with open(json_path, 'r', encoding='utf-8') as f:
#             data = json.load(f)
        
#         fp_data = {}
        
#         for entry in data:
#             fn_name = entry.get('fn_name')
#             fp_name = entry.get('fp_name')
#             assigned_fn = entry.get('assigned_fn', [])
#             fp_sequence = entry.get('fp_sequence')
            
#             if fn_name and fp_name:
#                 key = (fn_name, fp_name)
#                 fp_data[key] = {
#                     'assigned_fn': assigned_fn,
#                     'fp_sequence': fp_sequence
#                 }
        
#         print(f"[INFO] Loaded {len(fp_data)} function/fp combinations")
#         return fp_data
        
#     except Exception as e:
#         print(f"[ERROR] Failed to load JSON: {e}")
#         sys.exit(1)

# SKIP_SUBSTRS = ("quota", "fts5", "multiplex")

# def should_skip_func(func_name: str, removed_functions: Set[str]) -> bool:
#     """Check if function should be skipped"""
#     # if not func_name or func_name in ('0', 'NULL'):
#     #     return True
#     # if func_name.startswith('x'):
#     #     return True
#     if func_name in removed_functions:
#         return True
#     return any(s in func_name.lower() for s in SKIP_SUBSTRS)

# def generate_transformation_rules(fp_data: Dict, removed_functions: Set[str]) -> str:
#     """Generate Coccinelle rules for fp parameter calls (fp_name only, not obj->fp_name)"""
#     out = []
#     out.append("// ===== FUNCTION POINTER PARAMETER CALL TRANSFORMATION =====\n")
#     out.append("// Transform fp_name(args) calls within fn_name (parameter FP only)\n")
#     out.append("// Does NOT transform obj->fp_name() or obj.fp_name()\n\n")

#     total_rules = 0
    
#     for (fn_name, fp_name), info in sorted(fp_data.items()):
#         candi_funcs = info['assigned_fn']
#         fp_sequence = info.get('fp_sequence', 'unknown')
        
#         valid_funcs = [f for f in candi_funcs 
#                       if not should_skip_func(f, removed_functions)]
        
#         if not valid_funcs:
#             continue
        
#         out.append(f"\n// Function: {fn_name}, FP param: {fp_name} (seq: {fp_sequence})\n")
#         out.append(f"// Candidates: {', '.join(valid_funcs)}\n")
        
#         # Single function case: direct replacement
#         if len(valid_funcs) == 1:
#             func = valid_funcs[0]
            
#             # Rule 1: Assignment - rc = fp_name(args);
#             rule_name = f"transform_{fn_name}_{fp_name}_assign"
#             out.append(f"\n// Multi-candidate: assignment\n")
#             out.append(f"@{rule_name}@\n")
#             out.append(f"identifier fn = {fn_name};\n")
#             out.append(f"identifier fp = {fp_name};\n")
#             out.append(f"expression E;\n")
#             out.append(f"expression list args;\n")
#             out.append(f"@@\n")
#             out.append(f"fn(...) {{\n")
#             out.append(f"- E = fp(args);\n")
#             out.append(f"+ // E = fp(args);\n")

#             if func == "0" :
#                 out.append(f"+ E = 0;\n")
#             else :
#                 out.append(f"+ E = {func}(args);\n")
            
#             out.append(f"}}\n")
#             total_rules += 1
            
#             # Rule 2: Standalone call - fp_name(args);
#             rule_name = f"transform_{fn_name}_{fp_name}_standalone"
#             out.append(f"\n// Multi-candidate: standalone call\n")
#             out.append(f"@{rule_name}@\n")
#             out.append(f"identifier fn = {fn_name};\n")
#             out.append(f"identifier fp = {fp_name};\n")
#             out.append(f"expression list args;\n")
#             out.append(f"@@\n")
#             out.append(f"fn(...) {{\n")
#             out.append(f"- fp(args);\n")
#             out.append(f"+ // fp(args);\n")
            
#             if func == "0" :
#                 out.append(f"+ 0;\n")
#             else :
#                 out.append(f"+ {func}(args);\n")

#             out.append(f"}}\n")
#             total_rules += 1
            
#             # Rule 3: Return statement - return fp_name(args);
#             rule_name = f"transform_{fn_name}_{fp_name}_return"
#             out.append(f"\n// Multi-candidate: return statement\n")
#             out.append(f"@{rule_name}@\n")
#             out.append(f"identifier fn = {fn_name};\n")
#             out.append(f"identifier fp = {fp_name};\n")
#             out.append(f"expression list args;\n")
#             out.append(f"@@\n")
#             out.append(f"fn(...) {{\n")
#             out.append(f"- return fp(args);\n")
#             out.append(f"+ // return fp(args);\n")
            
#             if func == "0" :
#                 out.append(f"+ return 0;\n")
#             else :
#                 out.append(f"+ return {func}(args);\n")

#             out.append(f"}}\n")
#             total_rules += 1
    
#             out.append(f"\n// Total transformation rules: {total_rules}\n")
#             return "".join(out)
            
#         else:
#             # Multiple functions: if-else chain
            
#             # Rule 1: Assignment - rc = fp_name(args);
#             rule_name = f"transform_{fn_name}_{fp_name}_assign"
#             out.append(f"\n// Multi-candidate: assignment\n")
#             out.append(f"@{rule_name}@\n")
#             out.append(f"identifier fn = {fn_name};\n")
#             out.append(f"identifier fp = {fp_name};\n")
#             out.append(f"expression E;\n")
#             out.append(f"expression list args;\n")
#             out.append(f"@@\n")
#             out.append(f"fn(...) {{\n")
#             out.append(f"- E = fp(args);\n")
#             out.append(f"+ // E = fp(args);\n")
            
#             first = True
#             for func in valid_funcs:
#                 if first:
#                     out.append(f"+ if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
#                     first = False
#                 else:
#                     out.append(f"+ }}\n")
#                     out.append(f"+ else if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
#                 if func == "0" :
#                     out.append(f"+     E = 0;\n")
#                 else :
#                     out.append(f"+     E = {func}(args);\n")
            
#             out.append(f"+ }}\n")
#             out.append(f"}}\n")
#             total_rules += 1
            
#             # Rule 2: Standalone call - fp_name(args);
#             rule_name = f"transform_{fn_name}_{fp_name}_standalone"
#             out.append(f"\n// Multi-candidate: standalone call\n")
#             out.append(f"@{rule_name}@\n")
#             out.append(f"identifier fn = {fn_name};\n")
#             out.append(f"identifier fp = {fp_name};\n")
#             out.append(f"expression list args;\n")
#             out.append(f"@@\n")
#             out.append(f"fn(...) {{\n")
#             out.append(f"- fp(args);\n")
#             out.append(f"+ // fp(args);\n")
            
#             first = True
#             for func in valid_funcs:
#                 if first:
#                     out.append(f"+ if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
#                     first = False
#                 else:
#                     out.append(f"+ }}\n")
#                     out.append(f"+ else if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
#                 if func == "0" :
#                     out.append(f"+     0;\n")
#                 else :
#                     out.append(f"+     {func}(args);\n")
            
#             out.append(f"+ }}\n")
#             out.append(f"}}\n")
#             total_rules += 1
            
#             # Rule 3: Return statement - return fp_name(args);
#             rule_name = f"transform_{fn_name}_{fp_name}_return"
#             out.append(f"\n// Multi-candidate: return statement\n")
#             out.append(f"@{rule_name}@\n")
#             out.append(f"identifier fn = {fn_name};\n")
#             out.append(f"identifier fp = {fp_name};\n")
#             out.append(f"expression list args;\n")
#             out.append(f"@@\n")
#             out.append(f"fn(...) {{\n")
#             out.append(f"- return fp(args);\n")
#             out.append(f"+ // return fp(args);\n")
#             # out.append(f"+ int ret;\n")
            
#             first = True
#             for func in valid_funcs:
#                 if first:
#                     out.append(f"+ if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
#                     first = False
#                 else:
#                     out.append(f"+ }}\n")
#                     out.append(f"+ else if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
#                 # out.append(f"+     ret = {func}(args);\n")
#                 if func == "0" :
#                     out.append(f"+     return 0;\n")
#                 else :
#                     out.append(f"+     return {func}(args);\n")

#             out.append(f"+ }}\n")
#             out.append(f"}}\n")
#             total_rules += 1
    
#     out.append(f"\n// Total transformation rules: {total_rules}\n")
#     return "".join(out)

# def generate_cocci_script(fp_data: Dict, removed_functions: Set[str]) -> str:
#     """Generate complete Coccinelle script"""
    
#     script_parts = []
    
#     # Header
#     script_parts.append("""// Auto-generated Coccinelle script for function pointer parameter calls
# // Only transforms: fp_name(args)
# // Does NOT transform: obj->fp_name(args) or obj.fp_name(args)
# //
# // Patterns:
# //   1. fp_name(args);           -> if-else chain
# //   2. rc = fp_name(args);      -> if-else chain
# //   3. return fp_name(args);    -> if-else chain + temp variable
# //
# // Usage: spatch --sp-file transform.cocci --dir <source_dir> --in-place

# """)
    
#     if not fp_data:
#         script_parts.append("// No function pointer data found\n")
#         return "".join(script_parts)
    
#     script_parts.append(generate_transformation_rules(fp_data, removed_functions))
    
#     # Footer
#     script_parts.append("""
# // ===== TRANSFORMATION EXAMPLES =====
# /*
# Single candidate:
#   Before: fn() { ... fp(x, y); ... }
#   After:  fn() { ... direct_func(x, y); ... }

# Multiple candidates (assignment):
#   Before: fn() { ... rc = fp(x, y); ... }
#   After:  fn() {
#             ...
#             if (memcmp(fp_signature, fp_signatures[fp_func1_enum], sizeof(fp_signature)) == 0) {
#                 rc = func1(x, y);
#             }
#             else if (memcmp(fp_signature, fp_signatures[fp_func2_enum], sizeof(fp_signature)) == 0) {
#                 rc = func2(x, y);
#             }
#             ...
#           }

# Multiple candidates (return):
#   Before: fn() { ... return fp(x, y); }
#   After:  fn() {
#             ...
#             int ret;
#             if (memcmp(fp_signature, fp_signatures[fp_func1_enum], sizeof(fp_signature)) == 0) {
#                 ret = func1(x, y);
#             }
#             else if (memcmp(fp_signature, fp_signatures[fp_func2_enum], sizeof(fp_signature)) == 0) {
#                 ret = func2(x, y);
#             }
#             return ret;
#           }
# */

# """)
    
#     return "".join(script_parts)

# def main():
#     parser = argparse.ArgumentParser(
#         description="Generate Coccinelle script for function pointer parameter calls"
#     )
#     parser.add_argument("--json", required=True, help="JSON file with fp data")
#     parser.add_argument("--output", default="transform_pfp_callsites.cocci", help="Output file")
#     parser.add_argument("--remove-list", default="remove_fn_list.txt", help="Exclusion list")
#     parser.add_argument("--verbose", "-v", action="store_true", help="Verbose output")
    
#     args = parser.parse_args()
    
#     if not os.path.exists(args.json):
#         print(f"[ERROR] JSON file not found: {args.json}")
#         sys.exit(1)
    
#     print(f"[INFO] Loading data from: {args.json}")
    
#     # Load data
#     removed_functions = read_remove_list(args.remove_list)
#     fp_data = load_fp_data_from_json(args.json)
    
#     if not fp_data:
#         print("[ERROR] No data found")
#         sys.exit(1)
    
#     # Statistics
#     total = len(fp_data)
#     valid = 0
#     single = 0
#     multi = 0
    
#     for (fn_name, fp_name), info in fp_data.items():
#         candi_funcs = info['assigned_fn']
#         valid_funcs = [f for f in candi_funcs if not should_skip_func(f, removed_functions)]
        
#         if valid_funcs:
#             valid += 1
#             if len(valid_funcs) == 1:
#                 single += 1
#             else:
#                 multi += 1
    
#     print(f"\n[SUMMARY]")
#     print(f"  Total combinations: {total}")
#     print(f"  Valid combinations: {valid}")
#     print(f"    - Single function: {single}")
#     print(f"    - Multiple functions: {multi}")
    
#     # Generate script
#     print(f"\n[INFO] Generating Coccinelle script...")
#     script_content = generate_cocci_script(fp_data, removed_functions)
    
#     # Write output
#     output_path = args.output
#     if not output_path.endswith('.cocci'):
#         output_path += '.cocci'
    
#     try:
#         with open(output_path, 'w', encoding='utf-8') as f:
#             f.write(script_content)
        
#         print(f"[SUCCESS] Generated: {output_path}")
#         print(f"\n[USAGE]")
#         print(f"  spatch --sp-file {output_path} --dir <source_dir> --in-place")
        
#     except Exception as e:
#         print(f"[ERROR] Failed to write: {e}")
#         sys.exit(1)

# if __name__ == "__main__":
#     main()

#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Generate Coccinelle script to transform function pointer parameter calls.
Only processes: fp_name(args) - NOT obj->fp_name() or obj.fp_name()

Patterns transformed:
1. fp_name(args);              -> if-else chain
2. rc = fp_name(args);         -> if-else chain  
3. return fp_name(args);       -> if-else chain

Usage:
  python3 6_transform_pfp_callsites.py --json data.json --output transform.cocci
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

def load_fp_data_from_json(json_path: str) -> Dict[str, Dict]:
    """Load function pointer data from JSON"""
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        fp_data = {}
        
        for entry in data:
            fn_name = entry.get('fn_name')
            fp_name = entry.get('fp_name')
            assigned_fn = entry.get('assigned_fn', [])
            fp_sequence = entry.get('fp_sequence')
            
            if fn_name and fp_name:
                key = (fn_name, fp_name)
                fp_data[key] = {
                    'assigned_fn': assigned_fn,
                    'fp_sequence': fp_sequence
                }
        
        print(f"[INFO] Loaded {len(fp_data)} function/fp combinations")
        return fp_data
        
    except Exception as e:
        print(f"[ERROR] Failed to load JSON: {e}")
        sys.exit(1)

SKIP_SUBSTRS = ("quota", "fts5", "multiplex")

def should_skip_func(func_name: str, removed_functions: Set[str]) -> bool:
    """Check if function should be skipped"""
    if func_name in removed_functions:
        return True
    return any(s in func_name.lower() for s in SKIP_SUBSTRS)

def generate_transformation_rules(fp_data: Dict, removed_functions: Set[str]) -> str:
    """Generate Coccinelle rules for fp parameter calls"""
    out = []
    out.append("// ===== FUNCTION POINTER PARAMETER CALL TRANSFORMATION =====\n")
    out.append("// Transform fp_name(args) calls within fn_name\n")
    out.append("// Does NOT transform obj->fp_name() or obj.fp_name()\n\n")

    total_rules = 0
    
    for (fn_name, fp_name), info in sorted(fp_data.items()):
        candi_funcs = info['assigned_fn']
        fp_sequence = info.get('fp_sequence', 'unknown')
        
        valid_funcs = [f for f in candi_funcs 
                      if not should_skip_func(f, removed_functions)]
        
        if not valid_funcs:
            continue
        
        out.append(f"\n// Function: {fn_name}, FP param: {fp_name} (seq: {fp_sequence})\n")
        out.append(f"// Candidates: {', '.join(valid_funcs)}\n")
        
        # Single function case: direct replacement
        if len(valid_funcs) == 1:
            func = valid_funcs[0]
            
            # Rule 1: Assignment - rc = fp_name(args);
            rule_name = f"transform_{fn_name}_{fp_name}_assign"
            out.append(f"\n@{rule_name}@\n")
            out.append(f"identifier fn = {fn_name};\n")
            out.append(f"identifier fp = {fp_name};\n")
            out.append(f"expression E;\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"fn(...) {{\n")
            out.append(f"<...\n")
            out.append(f"- E = fp(args);\n")
            
            if func == "0":
                out.append(f"+ E = 0;\n")
            else:
                out.append(f"+ E = {func}(args);\n")
            
            out.append(f"...>\n")
            out.append(f"}}\n")
            total_rules += 1
            
            # Rule 2: Standalone call - fp_name(args);
            rule_name = f"transform_{fn_name}_{fp_name}_standalone"
            out.append(f"\n@{rule_name}@\n")
            out.append(f"identifier fn = {fn_name};\n")
            out.append(f"identifier fp = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"fn(...) {{\n")
            out.append(f"<...\n")
            out.append(f"- fp(args);\n")
            
            if func == "0":
                out.append(f"+ 0;\n")
            else:
                out.append(f"+ {func}(args);\n")
            
            out.append(f"...>\n")
            out.append(f"}}\n")
            total_rules += 1
            
            # Rule 3: Return statement - return fp_name(args);
            rule_name = f"transform_{fn_name}_{fp_name}_return"
            out.append(f"\n@{rule_name}@\n")
            out.append(f"identifier fn = {fn_name};\n")
            out.append(f"identifier fp = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"fn(...) {{\n")
            out.append(f"<...\n")
            out.append(f"- return fp(args);\n")
            
            if func == "0":
                out.append(f"+ return 0;\n")
            else:
                out.append(f"+ return {func}(args);\n")
            
            out.append(f"...>\n")
            out.append(f"}}\n")
            total_rules += 1
            
        else:
            # Multiple functions: if-else chain
            
            # Rule 1: Assignment - rc = fp_name(args);
            rule_name = f"transform_{fn_name}_{fp_name}_assign"
            out.append(f"\n// Multi-candidate: assignment\n")
            out.append(f"@{rule_name}@\n")
            out.append(f"identifier fn = {fn_name};\n")
            out.append(f"identifier fp = {fp_name};\n")
            out.append(f"expression E;\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"fn(...) {{\n")
            out.append(f"<...\n")
            out.append(f"- E = fp(args);\n")
            
            first = True
            for func in valid_funcs:
                if first:
                    out.append(f"+ if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
                    first = False
                else:
                    out.append(f"+ }}\n")
                    out.append(f"+ else if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
                
                if func == "0":
                    out.append(f"+     E = 0;\n")
                else:
                    out.append(f"+     E = {func}(args);\n")
            
            out.append(f"+ }}\n")
            out.append(f"...>\n")
            out.append(f"}}\n")
            total_rules += 1
            
            # Rule 2: Standalone call - fp_name(args);
            rule_name = f"transform_{fn_name}_{fp_name}_standalone"
            out.append(f"\n// Multi-candidate: standalone call\n")
            out.append(f"@{rule_name}@\n")
            out.append(f"identifier fn = {fn_name};\n")
            out.append(f"identifier fp = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"fn(...) {{\n")
            out.append(f"<...\n")
            out.append(f"- fp(args);\n")
            
            first = True
            for func in valid_funcs:
                if first:
                    out.append(f"+ if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
                    first = False
                else:
                    out.append(f"+ }}\n")
                    out.append(f"+ else if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
                
                if func == "0":
                    out.append(f"+     0;\n")
                else:
                    out.append(f"+     {func}(args);\n")
            
            out.append(f"+ }}\n")
            out.append(f"...>\n")
            out.append(f"}}\n")
            total_rules += 1
            
            # Rule 3: Return statement - return fp_name(args);
            rule_name = f"transform_{fn_name}_{fp_name}_return"
            out.append(f"\n// Multi-candidate: return statement\n")
            out.append(f"@{rule_name}@\n")
            out.append(f"identifier fn = {fn_name};\n")
            out.append(f"identifier fp = {fp_name};\n")
            out.append(f"expression list args;\n")
            out.append(f"@@\n")
            out.append(f"fn(...) {{\n")
            out.append(f"<...\n")
            out.append(f"- return fp(args);\n")
            
            first = True
            for func in valid_funcs:
                if first:
                    out.append(f"+ if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
                    first = False
                else:
                    out.append(f"+ }}\n")
                    out.append(f"+ else if (memcmp({fp_name}_signature, {fp_name}_signatures[{fp_name}_{func}_enum], sizeof({fp_name}_signature)) == 0) {{\n")
                
                if func == "0":
                    out.append(f"+     return 0;\n")
                else:
                    out.append(f"+     return {func}(args);\n")
            
            out.append(f"+ }}\n")
            out.append(f"...>\n")
            out.append(f"}}\n")
            total_rules += 1
    
    out.append(f"\n// Total transformation rules: {total_rules}\n")
    return "".join(out)

def generate_cocci_script(fp_data: Dict, removed_functions: Set[str]) -> str:
    """Generate complete Coccinelle script"""
    
    script_parts = []
    
    # Header
    script_parts.append("""// Auto-generated Coccinelle script for function pointer parameter calls
// Only transforms: fp_name(args)
// Does NOT transform: obj->fp_name(args) or obj.fp_name(args)
//
// Patterns:
//   1. fp_name(args);           -> direct call or if-else chain
//   2. rc = fp_name(args);      -> direct call or if-else chain
//   3. return fp_name(args);    -> direct call or if-else chain
//
// Usage: spatch --sp-file transform.cocci --dir <source_dir> --in-place

""")
    
    if not fp_data:
        script_parts.append("// No function pointer data found\n")
        return "".join(script_parts)
    
    script_parts.append(generate_transformation_rules(fp_data, removed_functions))
    
    return "".join(script_parts)

def main():
    parser = argparse.ArgumentParser(
        description="Generate Coccinelle script for function pointer parameter calls"
    )
    parser.add_argument("--json", required=True, help="JSON file with fp data")
    parser.add_argument("--output", default="transform_pfp_callsites.cocci", help="Output file")
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
    total = len(fp_data)
    valid = 0
    single = 0
    multi = 0
    
    for (fn_name, fp_name), info in fp_data.items():
        candi_funcs = info['assigned_fn']
        valid_funcs = [f for f in candi_funcs if not should_skip_func(f, removed_functions)]
        
        if valid_funcs:
            valid += 1
            if len(valid_funcs) == 1:
                single += 1
            else:
                multi += 1
    
    print(f"\n[SUMMARY]")
    print(f"  Total combinations: {total}")
    print(f"  Valid combinations: {valid}")
    print(f"    - Single function: {single}")
    print(f"    - Multiple functions: {multi}")
    
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