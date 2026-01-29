#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
함수 포인터 참조 해결 스크립트

기능:
- new_extract 결과의 assigned_fn에서 fp_name 참조를 fp_aggregated_map.json을 사용해 확장
- 재귀적으로 확장하여 최종 함수 목록 생성
- 중복 제거 및 정렬

예시:
입력 (struct_fp_parsing.json):
[
  {"fp_name": "xDestroy", "assigned_fn": ["realFunc", "xCleanup"]},
  {"fp_name": "xCleanup", "assigned_fn": ["cleanup1", "cleanup2"]}
]

입력 (fp_aggregated_map.json):
{
  "xCleanup": ["cleanup1", "cleanup2"]
}

출력 (resolved.json):
[
  {"fp_name": "xDestroy", "assigned_fn": ["cleanup1", "cleanup2", "realFunc"]},
  {"fp_name": "xCleanup", "assigned_fn": ["cleanup1", "cleanup2"]}
]
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
    - NULL, 0
    
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
# Step 1: fp_aggregated_map 로드
# ==========================================================

def load_fp_map(fp_map_path: Path) -> Dict[str, List[str]]:
    """
    fp_aggregated_map.json 로드
    
    Returns:
        {fp_name: [assigned_fn_list]}
    """
    if not fp_map_path.exists():
        print(f"⚠️  Warning: {fp_map_path} not found, proceeding without expansion")
        return {}
    
    with open(fp_map_path, 'r', encoding='utf-8') as f:
        fp_map = json.load(f)
    
    # 값을 set으로 변환하여 중복 제거
    normalized_map = {}
    for fp_name, funcs in fp_map.items():
        normalized_set = set()
        for func in funcs:
            normalized = normalize_token(func)
            if normalized:
                normalized_set.add(normalized)
        normalized_map[fp_name] = sorted(normalized_set)
    
    return normalized_map


# ==========================================================
# Step 2: 재귀적 확장
# ==========================================================

def resolve_fp_recursive(
    fp_name: str,
    current_func: str,
    fp_map: Dict[str, List[str]],
    all_fp_names: Set[str],
    cache: Dict[str, Set[str]],
    visiting: Set[str]
) -> Set[str]:
    """
    특정 함수를 재귀적으로 확장
    
    Args:
        fp_name: 현재 처리 중인 fp_name (로깅용)
        current_func: 확장할 함수 이름
        fp_map: fp_name -> assigned_fn 맵
        all_fp_names: 모든 fp_name의 집합
        cache: 메모이제이션 캐시
        visiting: 순환 참조 감지용 스택
    
    Returns:
        확장된 함수 집합
    """
    # 캐시 확인
    cache_key = current_func
    if cache_key in cache:
        return cache[cache_key]
    
    # 순환 참조 감지
    if cache_key in visiting:
        print(f"  ⚠️  Circular reference detected: {current_func}")
        cache[cache_key] = set()
        return set()
    
    # fp_name이 아니면 그대로 반환
    if current_func not in all_fp_names:
        cache[cache_key] = {current_func}
        return {current_func}
    
    # fp_name인 경우 확장
    visiting.add(cache_key)
    result: Set[str] = set()
    
    if current_func in fp_map:
        for func in fp_map[current_func]:
            normalized = normalize_token(func)
            if not normalized:
                continue
            
            # 재귀 확장
            expanded = resolve_fp_recursive(
                fp_name, func, fp_map, all_fp_names, cache, visiting
            )
            result.update(expanded)
    
    # 방문 완료
    visiting.remove(cache_key)
    
    # 캐시 저장
    cache[cache_key] = result
    return result


def expand_record(
    record: Dict,
    fp_map: Dict[str, List[str]],
    all_fp_names: Set[str],
    verbose: bool = False
) -> Dict:
    """
    단일 레코드의 assigned_fn 확장
    
    Args:
        record: {"fp_name": ..., "assigned_fn": [...]}
        fp_map: fp_aggregated_map
        all_fp_names: 모든 fp_name 집합
        verbose: 상세 출력
    
    Returns:
        확장된 레코드
    """
    fp_name = record.get("fp_name", "")
    assigned_fn = record.get("assigned_fn", [])
    
    result_set: Set[str] = set()
    cache: Dict[str, Set[str]] = {}
    
    for func in assigned_fn:
        normalized = normalize_token(func)
        if not normalized:
            continue
        
        # 재귀 확장
        expanded = resolve_fp_recursive(
            fp_name, normalized, fp_map, all_fp_names, cache, set()
        )
        
        if expanded:
            result_set.update(expanded)
            
            if verbose and normalized in all_fp_names and len(expanded) > 1:
                print(f"   {fp_name}: {normalized} -> {sorted(expanded)}")
    
    # 확장된 레코드 생성
    new_record = dict(record)
    new_record["assigned_fn"] = sorted(result_set)
    
    return new_record


# ==========================================================
# Step 3: 전체 레코드 확장
# ==========================================================

def expand_all_records(
    records: List[Dict],
    fp_map: Dict[str, List[str]],
    verbose: bool = False
) -> List[Dict]:
    """
    모든 레코드의 assigned_fn 확장
    
    Args:
        records: 입력 레코드 리스트
        fp_map: fp_aggregated_map
        verbose: 상세 출력
    
    Returns:
        확장된 레코드 리스트
    """
    # 모든 fp_name 수집
    all_fp_names: Set[str] = set()
    for rec in records:
        fp_name = rec.get("fp_name", "")
        if fp_name:
            all_fp_names.add(fp_name)
    
    # fp_map에 있는 fp_name도 추가
    all_fp_names.update(fp_map.keys())
    
    if verbose:
        print(f"\n📊 Total fp_names to consider: {len(all_fp_names)}")
    
    # 각 레코드 확장
    expanded_records = []
    expansion_count = 0
    
    for rec in records:
        fp_name = rec.get("fp_name", "")
        original_funcs = rec.get("assigned_fn", [])
        
        expanded_rec = expand_record(rec, fp_map, all_fp_names, verbose)
        expanded_funcs = expanded_rec.get("assigned_fn", [])
        
        # 확장 여부 확인
        if set(original_funcs) != set(expanded_funcs):
            expansion_count += 1
            if verbose:
                print(f"   ✓ {fp_name}: {len(original_funcs)} -> {len(expanded_funcs)} functions")
        
        expanded_records.append(expanded_rec)
    
    print(f"\n   Expanded {expansion_count} records")
    
    return expanded_records


# ==========================================================
# 메인
# ==========================================================

def main():
    parser = argparse.ArgumentParser(
        description="Resolve function pointer references using fp_aggregated_map.json",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Basic usage
  python3 resolve_fp_references.py --in struct_fp_parsing.json --map fp_aggregated_map.json
  
  # Custom output
  python3 resolve_fp_references.py --in parsing.json --map map.json --out resolved.json
  
  # Verbose mode
  python3 resolve_fp_references.py --in parsing.json --map map.json --verbose

Input format (struct_fp_parsing.json):
  [
    {
      "fp_name": "xDestroy",
      "assigned_fn": ["realFunc", "xCleanup"]
    }
  ]

Input format (fp_aggregated_map.json):
  {
    "xCleanup": ["cleanup1", "cleanup2"]
  }

Output format (resolved.json):
  [
    {
      "fp_name": "xDestroy",
      "assigned_fn": ["cleanup1", "cleanup2", "realFunc"]
    }
  ]
        """
    )
    
    parser.add_argument(
        "--in",
        dest="in_path",
        required=True,
        help="Input JSON file (from new_extract_fp_in_struct.py)"
    )
    parser.add_argument(
        "--map",
        dest="map_path",
        required=True,
        help="fp_aggregated_map.json file"
    )
    parser.add_argument(
        "--out",
        default="struct_fp_resolved.json",
        help="Output JSON file (default: struct_fp_resolved.json)"
    )
    parser.add_argument(
        "--verbose", "-v",
        action="store_true",
        help="상세 출력"
    )
    
    args = parser.parse_args()
    
    # 입력 파일 확인
    in_path = Path(args.in_path)
    if not in_path.exists():
        print(f"❌ Error: Input file not found: {in_path}")
        return 1
    
    map_path = Path(args.map_path)
    
    # JSON 로드
    print(f"📖 Loading input: {in_path}")
    with open(in_path, "r", encoding="utf-8") as f:
        records = json.load(f)
    
    print(f"   Total records: {len(records)}")
    
    print(f"\n📖 Loading fp_map: {map_path}")
    fp_map = load_fp_map(map_path)
    print(f"   Total fp_names in map: {len(fp_map)}")
    
    # 확장
    print(f"\n🔄 Resolving function pointer references...")
    expanded_records = expand_all_records(records, fp_map, args.verbose)
    
    # 통계
    original_count = sum(len(rec.get("assigned_fn", [])) for rec in records)
    expanded_count = sum(len(rec.get("assigned_fn", [])) for rec in expanded_records)
    
    print(f"\n📊 Statistics:")
    print(f"   Original assigned_fn count: {original_count}")
    print(f"   Expanded assigned_fn count: {expanded_count}")
    print(f"   Expansion ratio: {expanded_count/max(original_count,1):.2f}x")
    
    # 확장된 레코드 예시
    if args.verbose:
        print(f"\n📋 Sample expanded records:")
        for rec in expanded_records[:5]:
            if len(rec.get("assigned_fn", [])) > 1:
                print(f"   {rec['fp_name']}:")
                print(f"      {rec['assigned_fn']}")
    
    # 저장
    print(f"\n💾 Saving results...")
    with open(args.out, "w", encoding="utf-8") as f:
        json.dump(expanded_records, f, indent=2, ensure_ascii=False)
    print(f"   ✓ Saved to: {args.out}")
    
    print(f"\n✅ Complete!")
    
    return 0


if __name__ == "__main__":
    exit(main())