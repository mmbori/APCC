# #!/usr/bin/env python3
# # -*- coding: utf-8 -*-

# """
# Coccinelle Rule Generator for Function Pointer Signature Assignment

# JSON 파일에서 함수 포인터 정보를 읽어 Coccinelle 규칙을 생성합니다.
# expression E1, E2를 사용하여 멤버 할당 패턴을 매칭합니다.

# 패턴:
#   E1.fp_name = fp_name;       -> E1.fp_name_signature = fp_name_signature; 추가
#   E1->fp_name = fp_name;      -> E1->fp_name_signature = fp_name_signature; 추가
# """

# import json
# import argparse
# from pathlib import Path
# from typing import List, Dict, Set
# from collections import defaultdict


# def generate_fp_signature_rule(fp_name: str) -> str:
#     """
#     함수 포인터에 대한 signature 할당 규칙 생성
    
#     Args:
#         fp_name: 함수 포인터 이름
    
#     Returns:
#         Coccinelle 규칙 문자열
#     """
#     sig_name = f"{fp_name}_signature"
#     rule_name = f"add_sig_{fp_name}"
    
#     rule = f"""@{rule_name}@
# expression E1;
# identifier E2;
# identifier FP = {{{fp_name}}};
# identifier SIG = {{{sig_name}}};
# @@
# (
# E1.E2 = FP;
# + E1.E2_signature = {{fp_name}}_signature;
# |
# E1->E2 = FP;
# + E1->E2_signature = {{fp_name}}_signature;
# )
# """
    
#     return rule


# def generate_coccinelle_script(json_data: List[Dict]) -> str:
#     """
#     전체 Coccinelle 스크립트 생성
    
#     Args:
#         json_data: JSON 데이터
    
#     Returns:
#         Coccinelle 스크립트 문자열
#     """
#     script = """// Auto-generated Coccinelle script
# // Adds signature assignments for function pointer assignments
# // Pattern: E1.fp = fp; -> E1.fp_signature = fp_signature;
# //          E1->fp = fp; -> E1->fp_signature = fp_signature;

# """
    
#     # 모든 fp_name 수집
#     fp_names = set()
#     for entry in json_data:
#         fp_name = entry.get('fp_name')
#         if fp_name:
#             fp_names.add(fp_name)
    
#     if not fp_names:
#         print("❌ No fp_name found in JSON data", file=__import__('sys').stderr)
#         return script
    
#     print(f"   Found {len(fp_names)} unique function pointers", 
#           file=__import__('sys').stderr)
    
#     script += "// ============================================================\n"
#     script += "// Function Pointer Signature Rules\n"
#     script += "// ============================================================\n\n"
    
#     # 각 fp_name에 대해 규칙 생성
#     for fp_name in sorted(fp_names):
#         script += f"// Function pointer: {fp_name}\n"
#         script += generate_fp_signature_rule(fp_name)
#         script += "\n"
    
#     return script


# def main():
#     parser = argparse.ArgumentParser(
#         description="Generate Coccinelle rules for function pointer signature assignment",
#         formatter_class=argparse.RawDescriptionHelpFormatter,
#         epilog="""
# Examples:
#   python 5_2_add_sig_to_reassign_by_cocci.py --json fill_fp_resolved.json --output rules.cocci
#   python 5_2_add_sig_to_reassign_by_cocci.py --json fill_fp_resolved.json > output.cocci
  
# Generated pattern:
#   E1.fp_name = fp_name;       -> E1.fp_name_signature = fp_name_signature;
#   E1->fp_name = fp_name;      -> E1->fp_name_signature = fp_name_signature;
#         """
#     )
    
#     parser.add_argument('--json', '-j', required=True,
#                         help='Input JSON file (fill_fp_resolved.json)')
#     parser.add_argument('--output', '-o',
#                         help='Output Coccinelle file (default: stdout)')
    
#     args = parser.parse_args()
    
#     # JSON 로드
#     print(f"📖 Loading {args.json}...", file=__import__('sys').stderr)
#     try:
#         with open(args.json, 'r', encoding='utf-8') as f:
#             json_data = json.load(f)
#     except Exception as e:
#         print(f"❌ Error loading JSON: {e}", file=__import__('sys').stderr)
#         return 1
    
#     print(f"   Loaded {len(json_data)} entries", file=__import__('sys').stderr)
    
#     # Coccinelle 스크립트 생성
#     print(f"🔧 Generating Coccinelle rules...", file=__import__('sys').stderr)
#     script = generate_coccinelle_script(json_data)
    
#     # 출력
#     if args.output:
#         try:
#             with open(args.output, 'w', encoding='utf-8') as f:
#                 f.write(script)
#             print(f"✅ Saved to {args.output}", file=__import__('sys').stderr)
#             rule_count = script.count('@add_sig_')
#             print(f"   Generated {rule_count} rules", file=__import__('sys').stderr)
#         except Exception as e:
#             print(f"❌ Error writing output: {e}", file=__import__('sys').stderr)
#             return 1
#     else:
#         print(script)
    
#     print(file=__import__('sys').stderr)
#     print("💡 Usage:", file=__import__('sys').stderr)
#     print(f"   spatch --sp-file {args.output or 'rules.cocci'} --in-place <source_files>", 
#           file=__import__('sys').stderr)
#     print(f"   spatch --sp-file {args.output or 'rules.cocci'} --dir /path/to/source --in-place", 
#           file=__import__('sys').stderr)
    
#     return 0


# if __name__ == "__main__":
#     exit(main())

#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Coccinelle Rule Generator for Function Pointer Signature Assignment

JSON 파일에서 함수 포인터 정보를 읽어 Coccinelle 규칙을 생성합니다.
모든 (멤버, 파라미터) 조합에 대해 규칙을 생성합니다.

패턴:
  E1.xFunc = func;       -> E1.xFunc_signature = func_signature; 추가
  E1->xFunc = func;      -> E1->xFunc_signature = func_signature; 추가
"""

import json
import argparse
from pathlib import Path
from typing import List, Dict, Set
from collections import defaultdict


def collect_all_fp_members(json_data: List[Dict]) -> Set[str]:
    """
    JSON에서 구조체 멤버로 사용될 수 있는 모든 함수 포인터 이름 수집
    
    Returns:
        함수 포인터 멤버 이름 집합
    """
    fp_members = set()
    
    # 일반적인 SQLite 함수 포인터 멤버 패턴
    # JSON에서 struct_name과 fp_name을 보고 추출
    for entry in json_data:
        # 구조체에 정의된 함수 포인터가 멤버가 됨
        fp_name = entry.get('fp_name')
        if fp_name:
            fp_members.add(fp_name)
    
    return fp_members


def generate_fp_signature_rules(fp_param: str, fp_members: Set[str]) -> str:
    """
    하나의 함수 포인터 파라미터에 대해 모든 멤버 조합 규칙 생성
    
    Args:
        fp_param: 함수 포인터 파라미터 이름 (할당 값)
        fp_members: 가능한 함수 포인터 멤버 이름들
    
    Returns:
        Coccinelle 규칙 문자열
    """
    sig_param = f"{fp_param}_signature"
    rule_name = f"add_sig_{fp_param}"
    
    # 모든 멤버에 대한 disjunction 생성
    rules_parts = []
    
    for member in sorted(fp_members):
        sig_member = f"{member}_signature"
        rules_parts.append(f"""E1.{member} = FP;
+ E1.{sig_member} = SIG;""")
        rules_parts.append(f"""E1->{member} = FP;
+ E1->{sig_member} = SIG;""")
    
    # 전체 규칙
    rule = f"""@{rule_name}@
expression E1;
identifier FP = {{{fp_param}}};
@@
(
E1.FP = FP;
+ E1.{sig_param} = {sig_param};
|
E1->FP = FP;
+ E1->{sig_param} = {sig_param};
)
"""
    
    return rule


def generate_coccinelle_script(json_data: List[Dict]) -> str:
    """
    전체 Coccinelle 스크립트 생성
    
    Args:
        json_data: JSON 데이터
    
    Returns:
        Coccinelle 스크립트 문자열
    """
    script = """// Auto-generated Coccinelle script
// Adds signature assignments for function pointer assignments
// Generates rules for all (member, parameter) combinations
//
// Pattern: E1.xFunc = func; -> E1.xFunc_signature = func_signature;
//          E1->xFunc = func; -> E1->xFunc_signature = func_signature;

"""
    
    # 모든 fp_name (파라미터) 수집
    fp_params = set()
    for entry in json_data:
        fp_name = entry.get('fp_name')
        if fp_name:
            fp_params.add(fp_name)
    
    if not fp_params:
        print("❌ No fp_name found in JSON data", file=__import__('sys').stderr)
        return script
    
    # 가능한 모든 멤버 이름 수집
    fp_members = collect_all_fp_members(json_data)
    
    print(f"   Found {len(fp_params)} unique function pointer parameters", 
          file=__import__('sys').stderr)
    print(f"   Found {len(fp_members)} unique function pointer members", 
          file=__import__('sys').stderr)
    print(f"   Will generate {len(fp_params) * len(fp_members) * 2} patterns", 
          file=__import__('sys').stderr)
    
    script += "// ============================================================\n"
    script += "// Function Pointer Signature Rules\n"
    script += f"// Parameters: {len(fp_params)}, Members: {len(fp_members)}\n"
    script += "// ============================================================\n\n"
    
    # 각 파라미터에 대해 규칙 생성
    for fp_param in sorted(fp_params):
        script += f"// Parameter: {fp_param}\n"
        script += generate_fp_signature_rules(fp_param, fp_members)
        script += "\n"
    
    return script


def main():
    parser = argparse.ArgumentParser(
        description="Generate Coccinelle rules for function pointer signature assignment",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python 5_2_add_sig_to_reassign_by_cocci.py --json fill_fp_resolved.json --output rules.cocci
  python 5_2_add_sig_to_reassign_by_cocci.py --json fill_fp_resolved.json > output.cocci
  
Generated pattern (all combinations):
  E1.xFunc = func;       -> E1.xFunc_signature = func_signature;
  E1->xFunc = func;      -> E1->xFunc_signature = func_signature;
  
Note: Generates rules for all (member, parameter) combinations
        """
    )
    
    parser.add_argument('--json', '-j', required=True,
                        help='Input JSON file (fill_fp_resolved.json)')
    parser.add_argument('--output', '-o',
                        help='Output Coccinelle file (default: stdout)')
    
    args = parser.parse_args()
    
    # JSON 로드
    print(f"📖 Loading {args.json}...", file=__import__('sys').stderr)
    try:
        with open(args.json, 'r', encoding='utf-8') as f:
            json_data = json.load(f)
    except Exception as e:
        print(f"❌ Error loading JSON: {e}", file=__import__('sys').stderr)
        return 1
    
    print(f"   Loaded {len(json_data)} entries", file=__import__('sys').stderr)
    
    # Coccinelle 스크립트 생성
    print(f"🔧 Generating Coccinelle rules...", file=__import__('sys').stderr)
    script = generate_coccinelle_script(json_data)
    
    # 출력
    if args.output:
        try:
            with open(args.output, 'w', encoding='utf-8') as f:
                f.write(script)
            print(f"✅ Saved to {args.output}", file=__import__('sys').stderr)
            rule_count = script.count('@add_sig_')
            print(f"   Generated {rule_count} rules", file=__import__('sys').stderr)
        except Exception as e:
            print(f"❌ Error writing output: {e}", file=__import__('sys').stderr)
            return 1
    else:
        print(script)
    
    print(file=__import__('sys').stderr)
    print("💡 Usage:", file=__import__('sys').stderr)
    print(f"   spatch --sp-file {args.output or 'rules.cocci'} --in-place <source_files>", 
          file=__import__('sys').stderr)
    print(f"   spatch --sp-file {args.output or 'rules.cocci'} --dir /path/to/source --in-place", 
          file=__import__('sys').stderr)
    
    return 0


if __name__ == "__main__":
    exit(main())