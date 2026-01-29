#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Coccinelle Rule Generator using Parameter Lists and Identifier Constraints

JSON 파일에서 함수 포인터 정보를 읽어 Coccinelle 규칙을 생성합니다.
parameter list와 identifier를 사용하여 정확한 매칭을 수행합니다.

각 함수 호출에서 assigned_fn 다음에 signature 인자를 추가합니다.
"""

import json
import argparse
from pathlib import Path
from typing import List, Dict, Set
from collections import defaultdict


def sanitize_rule_name(fn_name: str, fp_name: str, assigned_fn: str, rule_type: str) -> str:
    """
    룰 이름을 생성 (Coccinelle에서 사용 가능한 형태)
    
    Args:
        fn_name: 함수 이름
        fp_name: 함수 포인터 파라미터 이름
        assigned_fn: 할당된 함수 이름
        rule_type: 룰 타입 (standalone, return, assign)
    
    Returns:
        sanitized rule name
    """
    # 특수 문자를 언더스코어로 변경
    safe_fn = fn_name.replace(".", "_").replace("-", "_")
    safe_fp = fp_name.replace(".", "_").replace("-", "_")
    safe_assigned = assigned_fn.replace(".", "_").replace("-", "_")
    
    return f"rule_{safe_fn}_{safe_fp}_{safe_assigned}_{rule_type}"


def generate_standalone_rule(fn_name: str, fp_name: str, assigned_fn: str, 
                             fp_sequence: int) -> str:
    """
    Standalone call 규칙 생성
    
    Args:
        fn_name: 함수 이름
        fp_name: 함수 포인터 파라미터 이름
        assigned_fn: 할당된 함수 이름
        fp_sequence: 함수 포인터의 위치 (1-based)
    
    Returns:
        Coccinelle 규칙 문자열
    """
    if fn_name == "sqlite3_exec" :
        return ""

    rule_name = sanitize_rule_name(fn_name, fp_name, assigned_fn, "standalone")
    sig_param = f"{fp_name}_signatures[{fp_name}_{assigned_fn}]"
    
    # 0, NULL 같은 리터럴은 직접 패턴에 삽입
    if assigned_fn in ['0', 'NULL', 'null']:
        rule = f"""@{rule_name}@
expression list pl1, pl2;
identifier FN_NAME = {{{fn_name}}};
@@
- FN_NAME(pl1, {assigned_fn}, pl2);
+ FN_NAME(pl1, {assigned_fn}, {sig_param}, pl2);
"""
    else:
        # 일반 identifier 처리
        rule = f"""@{rule_name}@
expression list pl1, pl2;
identifier ASSIGNED_FN = {{{assigned_fn}}};
identifier FN_NAME = {{{fn_name}}};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, {sig_param}, pl2);
"""
    
    return rule


def generate_return_rule(fn_name: str, fp_name: str, assigned_fn: str, 
                        fp_sequence: int) -> str:
    """
    Return statement 규칙 생성
    
    Args:
        fn_name: 함수 이름
        fp_name: 함수 포인터 파라미터 이름
        assigned_fn: 할당된 함수 이름
        fp_sequence: 함수 포인터의 위치 (1-based)
    
    Returns:
        Coccinelle 규칙 문자열
    """

    if fn_name == "sqlite3_exec" :
        return ""
    
    rule_name = sanitize_rule_name(fn_name, fp_name, assigned_fn, "return")
    sig_param = f"{fp_name}_signatures[{fp_name}_{assigned_fn}]"
    
    # 0, NULL 같은 리터럴은 직접 패턴에 삽입
    if assigned_fn in ['0', 'NULL', 'null']:
        rule = f"""@{rule_name}@
expression list pl1, pl2;
identifier FN_NAME = {{{fn_name}}};
@@
- return FN_NAME(pl1, {assigned_fn}, pl2);
+ return FN_NAME(pl1, {assigned_fn}, {sig_param}, pl2);
"""
    else:
        # 일반 identifier 처리
        rule = f"""@{rule_name}@
expression list pl1, pl2;
identifier ASSIGNED_FN = {{{assigned_fn}}};
identifier FN_NAME = {{{fn_name}}};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, {sig_param}, pl2);
"""
    
    return rule


def generate_assign_rule(fn_name: str, fp_name: str, assigned_fn: str, 
                        fp_sequence: int) -> str:
    """
    Assignment 규칙 생성
    
    Args:
        fn_name: 함수 이름
        fp_name: 함수 포인터 파라미터 이름
        assigned_fn: 할당된 함수 이름
        fp_sequence: 함수 포인터의 위치 (1-based)
    
    Returns:
        Coccinelle 규칙 문자열
    """

    if fn_name == "sqlite3_exec" :
        return ""
    
    rule_name = sanitize_rule_name(fn_name, fp_name, assigned_fn, "assign")
    sig_param = f"{fp_name}_signatures[{fp_name}_{assigned_fn}]"
    
    # 0, NULL 같은 리터럴은 직접 패턴에 삽입
    if assigned_fn in ['0', 'NULL', 'null']:
        rule = f"""@{rule_name}@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {{{fn_name}}};
@@
- rc = FN_NAME(pl1, {assigned_fn}, pl2);
+ rc = FN_NAME(pl1, {assigned_fn}, {sig_param}, pl2);
"""
    else:
        # 일반 identifier 처리
        rule = f"""@{rule_name}@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {{{assigned_fn}}};
identifier FN_NAME = {{{fn_name}}};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, {sig_param}, pl2);
"""
    
    return rule

def generate_rules_for_entry(entry: Dict) -> str:
    """
    하나의 JSON 엔트리에 대한 모든 규칙 생성
    
    Args:
        entry: JSON 엔트리
            - fn_name: 함수 이름
            - fp_name: 함수 포인터 이름
            - fp_sequence: 함수 포인터 위치
            - assigned_fn: 할당된 함수 리스트
    
    Returns:
        생성된 모든 규칙 문자열
    """
    fn_name = entry.get('fn_name')
    fp_name = entry.get('fp_name')
    fp_sequence = entry.get('fp_sequence')
    assigned_fns = entry.get('assigned_fn', [])
    
    if not fn_name or not fp_name or fp_sequence is None:
        return ""
    
    rules = []
    
    for assigned_fn in assigned_fns:
        rules.append(f"// {fn_name} - {fp_name} - {assigned_fn}")
        rules.append(f"// fp_sequence: {fp_sequence}")
        rules.append("")
        
        # Standalone call 규칙
        rules.append(generate_standalone_rule(fn_name, fp_name, assigned_fn, fp_sequence))
        
        # Return statement 규칙
        rules.append(generate_return_rule(fn_name, fp_name, assigned_fn, fp_sequence))
        
        # Assignment 규칙
        rules.append(generate_assign_rule(fn_name, fp_name, assigned_fn, fp_sequence))
        
        rules.append("")
    
    # # 구조체 멤버 할당 규칙 추가 (assigned_fn과 무관하게 한 번만 생성)
    # rules.append(f"// Struct member assignment for {fn_name} - {fp_name}")
    # rules.append("")
    # rules.append(generate_struct_member_assign_rule(fn_name, fp_name))
    # rules.append("")
    
    return "\n".join(rules)


def group_by_function(json_data: List[Dict]) -> Dict[str, List[Dict]]:
    """
    fn_name으로 그룹화
    
    Returns:
        {fn_name: [entry1, entry2, ...]}
    """
    grouped = defaultdict(list)
    for entry in json_data:
        fn_name = entry.get('fn_name')
        if fn_name:
            grouped[fn_name].append(entry)
    return dict(grouped)


def generate_coccinelle_script(json_data: List[Dict]) -> str:
    """
    전체 Coccinelle 스크립트 생성
    
    Args:
        json_data: JSON 데이터
    
    Returns:
        Coccinelle 스크립트 문자열
    """
    script = """// Auto-generated Coccinelle script
// Adds signature arguments to function pointer calls
// Uses parameter lists and identifier constraints for precise matching

"""
    
    script += "// ============================================================\n"
    script += "// Transformation Rules\n"
    script += "// ============================================================\n\n"
    
    # 함수별로 그룹화
    grouped = group_by_function(json_data)
    
    # 각 함수에 대해 규칙 생성
    for fn_name in sorted(grouped.keys()):
        script += f"// {'='*60}\n"
        script += f"// Function: {fn_name}\n"
        script += f"// {'='*60}\n\n"
        
        entries = grouped[fn_name]
        for entry in entries:
            rule = generate_rules_for_entry(entry)
            if rule:
                script += rule
                script += "\n"
    
    return script


def main():
    parser = argparse.ArgumentParser(
        description="Generate Coccinelle rules from function pointer JSON using parameter lists",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python generate_cocci_rules.py --json input.json --output rules.cocci
  python generate_cocci_rules.py --json input.json > output.cocci
  python generate_cocci_rules.py --json input.json --filter-fn sqlite3_create_collation_v2
  
Features:
  - Uses parameter list (pl1, pl2) for flexible argument matching
  - Uses identifier constraints for precise matching
  - Generates rules for standalone, return, and assignment cases
  - Handles both first parameter and middle parameter cases
        """
    )
    
    parser.add_argument('--json', '-j', required=True,
                        help='Input JSON file')
    parser.add_argument('--output', '-o',
                        help='Output Coccinelle file (default: stdout)')
    parser.add_argument('--filter-fn', 
                        help='Only generate rules for specific function')
    parser.add_argument('--filter-fp',
                        help='Only generate rules for specific function pointer')
    parser.add_argument('--filter-assigned',
                        help='Only generate rules for specific assigned function')
    
    args = parser.parse_args()
    
    # JSON 로드
    print(f"📖 Loading {args.json}...", file=__import__('sys').stderr)
    try:
        with open(args.json, 'r', encoding='utf-8') as f:
            json_data = json.load(f)
    except Exception as e:
        print(f"❌ Error loading JSON: {e}", file=__import__('sys').stderr)
        return 1
    
    # 필터링
    if args.filter_fn:
        json_data = [e for e in json_data if e.get('fn_name') == args.filter_fn]
        print(f"   Filtered by fn_name={args.filter_fn}: {len(json_data)} entries", 
              file=__import__('sys').stderr)
    
    if args.filter_fp:
        json_data = [e for e in json_data if e.get('fp_name') == args.filter_fp]
        print(f"   Filtered by fp_name={args.filter_fp}: {len(json_data)} entries", 
              file=__import__('sys').stderr)
    
    if args.filter_assigned:
        json_data = [e for e in json_data 
                     if args.filter_assigned in e.get('assigned_fn', [])]
        print(f"   Filtered by assigned_fn={args.filter_assigned}: {len(json_data)} entries", 
              file=__import__('sys').stderr)
    
    # 통계
    fn_names = set(e.get('fn_name') for e in json_data if e.get('fn_name'))
    fp_names = set(e.get('fp_name') for e in json_data if e.get('fp_name'))
    total_assigned = sum(len(e.get('assigned_fn', [])) for e in json_data)
    non_null_assigned = sum(
        len([fn for fn in e.get('assigned_fn', []) if fn not in ['0', 'NULL', 'null']])
        for e in json_data
    )
    
    print(f"📊 Statistics:", file=__import__('sys').stderr)
    print(f"   Total entries: {len(json_data)}", file=__import__('sys').stderr)
    print(f"   Unique functions: {len(fn_names)}", file=__import__('sys').stderr)
    print(f"   Unique function pointers: {len(fp_names)}", file=__import__('sys').stderr)
    print(f"   Total assigned_fn: {total_assigned}", file=__import__('sys').stderr)
    print(f"   Non-NULL assigned_fn: {non_null_assigned}", file=__import__('sys').stderr)
    print(file=__import__('sys').stderr)
    
    # Coccinelle 스크립트 생성
    print(f"🔧 Generating Coccinelle rules...", file=__import__('sys').stderr)
    script = generate_coccinelle_script(json_data)
    
    # 출력
    if args.output:
        try:
            with open(args.output, 'w', encoding='utf-8') as f:
                f.write(script)
            print(f"✅ Saved to {args.output}", file=__import__('sys').stderr)
            print(f"   Generated {script.count('@rule_')} rules", file=__import__('sys').stderr)
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