#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
함수 포인터 참조 확장 스크립트 (개선 버전)

기능:
- filled_parsing.json에 있는 모든 fp_name을 대상으로 처리
- fp_name이 assigned_fn에 있을 경우 재귀적으로 확장
- 중복 제거 및 정렬

예시:
입력:
[
  {"fn_name": "func1", "fp_name": "xDestroy", "assigned_fn": ["realFunc", "xCleanup"]},
  {"fn_name": "func2", "fp_name": "xCleanup", "assigned_fn": ["cleanup1", "cleanup2"]}
]

출력:
[
  {"fn_name": "func1", "fp_name": "xDestroy", "assigned_fn": ["cleanup1", "cleanup2", "realFunc"]},
  {"fn_name": "func2", "fp_name": "xCleanup", "assigned_fn": ["cleanup1", "cleanup2"]}
]

xCleanup이 확장되어 cleanup1, cleanup2로 대체됨
"""

import json
import argparse
from pathlib import Path
from typing import Dict, List, Set

# ==========================================================
# 유틸리티 함수
# ==========================================================

def is_identifier(tok: str) -> bool:
    """유효한 C 식별자인지 확인"""
    if not tok:
        return False
    if not (tok[0].isalpha() or tok[0] == '_'):
        return False
    return all(c.isalnum() or c == '_' for c in tok)


def normalize_token(tok: str) -> str:
    """
    토큰 정규화
    
    유지:
    - 식별자 (함수명, 매크로)
    - NULL, 0 (2_fill에서 수집한 값)
    
    제외:
    - 빈 문자열
    """
    tok = tok.strip()
    
    # NULL, 0 보존
    if tok in ('0', 'NULL'):
        return tok
    
    # 식별자 확인
    if is_identifier(tok):
        return tok
    
    # 그 외 제외
    return ""


# ==========================================================
# Step 0: 모든 fp_name 수집
# ==========================================================

def collect_all_fp_names(records: List[Dict]) -> Set[str]:
    """
    filled_parsing.json에 있는 모든 고유한 fp_name 수집
    
    Returns:
        모든 fp_name의 집합
    """
    fp_names: Set[str] = set()
    
    for rec in records:
        fp_name = rec.get("fp_name", "")
        if fp_name:
            fp_names.add(fp_name)
    
    return fp_names


# ==========================================================
# Step 1: fp_name별 집계
# ==========================================================

def build_fp_to_assigned_map(records: List[Dict]) -> Dict[str, Set[str]]:
    """
    fp_name -> assigned_fn 집계
    
    예:
    [
      {"fp_name": "xDestroy", "assigned_fn": ["func1", "func2"]},
      {"fp_name": "xDestroy", "assigned_fn": ["func2", "func3"]},
      {"fp_name": "xCleanup", "assigned_fn": ["cleanup1"]}
    ]
    
    결과:
    {
      "xDestroy": {"func1", "func2", "func3"},
      "xCleanup": {"cleanup1"}
    }
    """
    fp_map: Dict[str, Set[str]] = {}
    
    for rec in records:
        fp_name = rec.get("fp_name", "")
        if not fp_name:
            continue
        
        # assigned_fn 수집
        for tok in rec.get("assigned_fn", []):
            normalized = normalize_token(tok)
            if normalized:
                fp_map.setdefault(fp_name, set()).add(normalized)
    
    return fp_map


# ==========================================================
# Step 2: 재귀적 확장
# ==========================================================

def resolve_fp_recursive(
    fp_name: str,
    fp_map: Dict[str, Set[str]],
    all_fp_names: Set[str],
    cache: Dict[str, Set[str]],
    visiting: Set[str]
) -> Set[str]:
    """
    fp_name의 assigned_fn을 재귀적으로 확장
    
    예:
    - xDestroy -> ["realFunc", "xCleanup"]
    - xCleanup -> ["cleanup1", "cleanup2"]
    
    결과:
    - xDestroy -> ["realFunc", "cleanup1", "cleanup2"]
    
    Args:
        fp_name: 확장할 함수 포인터 이름
        fp_map: fp_name -> assigned_fn 맵
        all_fp_names: filled_parsing.json의 모든 fp_name 집합
        cache: 메모이제이션 캐시
        visiting: 순환 참조 감지용 스택
    
    Returns:
        확장된 함수 집합
    """
    # 캐시 확인
    if fp_name in cache:
        return cache[fp_name]
    
    # 순환 참조 감지
    if fp_name in visiting:
        print(f"  ⚠️  Circular reference detected: {fp_name}")
        cache[fp_name] = set()
        return set()
    
    # 방문 표시
    visiting.add(fp_name)
    
    result: Set[str] = set()
    assigned = fp_map.get(fp_name, set())
    
    for tok in assigned:
        # filled_parsing.json에 있는 fp_name인지 확인
        if tok in all_fp_names:
            # 재귀 확장
            expanded = resolve_fp_recursive(tok, fp_map, all_fp_names, cache, visiting)
            result.update(expanded)
        else:
            # 일반 함수 또는 NULL/0
            result.add(tok)
    
    # 방문 완료
    visiting.remove(fp_name)
    
    # 캐시 저장
    cache[fp_name] = result
    return result


def build_expanded_fp_map(records: List[Dict]) -> Dict[str, List[str]]:
    """
    모든 fp_name에 대해 재귀 확장 수행
    
    Returns:
        fp_name -> 확장된 assigned_fn 리스트
    """
    # Step 0: 모든 fp_name 수집
    all_fp_names = collect_all_fp_names(records)
    
    print(f"\n📊 Collecting all fp_names:")
    print(f"   Found {len(all_fp_names)} unique fp_names")
    if len(all_fp_names) <= 20:
        print(f"   fp_names: {sorted(all_fp_names)}")
    else:
        sample = sorted(all_fp_names)[:10]
        print(f"   Sample: {sample} ... ({len(all_fp_names)-10} more)")
    
    # Step 1: 원시 집계
    fp_map = build_fp_to_assigned_map(records)
    
    print(f"\n📊 Initial aggregation:")
    print(f"   fp_names with assigned_fn: {len(fp_map)}")
    
    # Step 2: 재귀 확장
    cache: Dict[str, Set[str]] = {}
    expanded: Dict[str, List[str]] = {}
    
    print(f"\n🔄 Resolving recursive references...")
    
    expansion_count = 0
    
    for fp_name, assigned in fp_map.items():
        result_set: Set[str] = set()
        
        for tok in assigned:
            # all_fp_names에 있는지 확인 (x로 시작하지 않아도 됨)
            if tok in all_fp_names:
                # 재귀 확장
                expanded_tokens = resolve_fp_recursive(tok, fp_map, all_fp_names, cache, set())
                result_set.update(expanded_tokens)
                
                if expanded_tokens:
                    expansion_count += 1
                    print(f"   {tok} -> {sorted(expanded_tokens)}")
            else:
                result_set.add(tok)
        
        # 정렬하여 저장
        expanded[fp_name] = sorted(result_set)
    
    print(f"\n   Total expansions: {expansion_count}")
    
    return expanded


# ==========================================================
# Step 3: 레코드별 확장
# ==========================================================

def expand_records(
    records: List[Dict],
    expanded_map: Dict[str, List[str]],
    all_fp_names: Set[str]
) -> List[Dict]:
    """
    각 레코드의 assigned_fn에서 fp_name을 확장된 값으로 대체
    
    입력:
    {
      "fn_name": "func1",
      "fp_name": "xDestroy",
      "assigned_fn": ["realFunc", "xCleanup", "NULL"]
    }
    
    출력:
    {
      "fn_name": "func1",
      "fp_name": "xDestroy",
      "assigned_fn": ["NULL", "cleanup1", "cleanup2", "realFunc"]
    }
    """
    expanded_records: List[Dict] = []
    
    for rec in records:
        # 원본 레코드 복사 (line, file 등 보존)
        new_rec = dict(rec)
        
        result_set: Set[str] = set()
        
        for tok in rec.get("assigned_fn", []):
            normalized = normalize_token(tok)
            if not normalized:
                continue
            
            # all_fp_names에 있는 fp_name인지 확인
            if normalized in all_fp_names and normalized in expanded_map:
                # fp_name이면 확장
                result_set.update(expanded_map[normalized])
            else:
                # 일반 함수 또는 NULL/0
                result_set.add(normalized)
        
        # 정렬하여 저장
        new_rec["assigned_fn"] = sorted(result_set)
        expanded_records.append(new_rec)
    
    return expanded_records


# ==========================================================
# 메인
# ==========================================================

def main():
    parser = argparse.ArgumentParser(
        description="Expand function pointer references in assigned_fn (all fp_names)",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  python3 0_parsing_3_full_parsing.py --in filled_parsing.json
  python3 0_parsing_3_full_parsing.py --in filled.json --out-map fp_map.json --out-records resolved.json

Input format (from 2_fill_assigned_fn.py):
  [
    {
      "fn_name": "closureAvlDestroy",
      "fp_name": "xDestroy",
      "fp_sequence": 2,
      "assigned_fn": ["closureMemFree", "xCleanup", "NULL"],
      "line": [...],
      "file": "sqlite3.c"
    }
  ]

Output format:
  - out-map: fp_name -> expanded list (all fp_names, not just x-prefixed)
  - out-records: original records with expanded assigned_fn

Changes from original:
  - Processes ALL fp_names found in filled_parsing.json
  - No longer restricted to fp_names starting with 'x'
  - Recursively expands any fp_name that appears in assigned_fn
        """
    )
    
    parser.add_argument(
        "--in",
        default="filled_parsing.json",
        dest="in_path",
        required=True,
        help="Input JSON file (from 2_fill_assigned_fn.py)"
    )
    parser.add_argument(
        "--out-map",
        default="fp_aggregated_map.json",
        help="Output: fp_name -> expanded assigned_fn map (default: fp_aggregated_map.json)"
    )
    parser.add_argument(
        "--out-records",
        default="filled_parsing_resolved.json",
        help="Output: records with expanded assigned_fn (default: filled_parsing_resolved.json)"
    )
    
    args = parser.parse_args()
    
    # 입력 파일 확인
    in_path = Path(args.in_path)
    if not in_path.exists():
        print(f"❌ Error: Input file not found: {in_path}")
        return 1
    
    # JSON 로드
    print(f"📖 Loading: {in_path}")
    with open(in_path, "r", encoding="utf-8") as f:
        records = json.load(f)
    
    print(f"   Total records: {len(records)}")
    
    # Step 0: 모든 fp_name 수집
    all_fp_names = collect_all_fp_names(records)
    
    # Step 1: fp_name별 집계 및 확장
    expanded_map = build_expanded_fp_map(records)
    
    # Step 2: 레코드별 확장
    print(f"\n📝 Expanding records...")
    expanded_records = expand_records(records, expanded_map, all_fp_names)
    
    # 통계
    original_count = sum(len(rec.get("assigned_fn", [])) for rec in records)
    expanded_count = sum(len(rec.get("assigned_fn", [])) for rec in expanded_records)
    
    print(f"\n📊 Statistics:")
    print(f"   Original assigned_fn count: {original_count}")
    print(f"   Expanded assigned_fn count: {expanded_count}")
    print(f"   Expansion ratio: {expanded_count/max(original_count,1):.2f}x")
    
    # 확장된 레코드 예시
    print(f"\n📋 Sample expanded records:")
    for rec in expanded_records[:3]:
        if len(rec.get("assigned_fn", [])) > 1:
            print(f"   {rec['fn_name']}.{rec['fp_name']}:")
            print(f"      {rec['assigned_fn']}")
    
    # 저장
    print(f"\n💾 Saving results...")
    
    with open(args.out_map, "w", encoding="utf-8") as f:
        json.dump(expanded_map, f, indent=2, ensure_ascii=False)
    print(f"   ✓ Saved fp_map to: {args.out_map}")
    
    with open(args.out_records, "w", encoding="utf-8") as f:
        json.dump(expanded_records, f, indent=2, ensure_ascii=False)
    print(f"   ✓ Saved records to: {args.out_records}")
    
    print(f"\n✅ Complete!")
    print(f"\nℹ️  Note: Processed ALL fp_names from filled_parsing.json")
    print(f"   (not limited to x-prefixed names)")
    
    return 0


if __name__ == "__main__":
    exit(main())