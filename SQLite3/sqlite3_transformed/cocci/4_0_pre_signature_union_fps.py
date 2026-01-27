#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
JSON 병합 유틸리티 (간단 버전)

사용법:
    from merge_json_simple import merge_json_files
    
    result = merge_json_files('file1.json', 'file2.json', 'output.json')
"""

import json
from collections import defaultdict


def merge_json_files(file1, file2, output_file=None):
    """
    두 JSON 파일을 병합하여 같은 fp_name의 assigned_fn을 통합
    
    Args:
        file1: 첫 번째 JSON 파일 경로
        file2: 두 번째 JSON 파일 경로
        output_file: 출력 파일 경로 (None이면 저장 안 함)
    
    Returns:
        병합된 데이터 (리스트)
    """
    # JSON 파일 로드
    with open(file1, 'r', encoding='utf-8') as f:
        data1 = json.load(f)
    
    with open(file2, 'r', encoding='utf-8') as f:
        data2 = json.load(f)
    
    # fp_name을 키로 하는 딕셔너리 생성
    merged = defaultdict(lambda: {'fp_name': '', 'assigned_fn': []})
    
    # 데이터 병합 (fp_name과 assigned_fn만 포함)
    for entry in data1 + data2:
        fp_name = entry['fp_name']
        merged[fp_name]['fp_name'] = fp_name
        merged[fp_name]['assigned_fn'].extend(entry.get('assigned_fn', []))
    
    # 중복 제거 (순서 유지)
    for fp_name in merged:
        seen = set()
        unique = []
        for fn in merged[fp_name]['assigned_fn']:
            if fn not in seen:
                seen.add(fn)
                unique.append(fn)
        merged[fp_name]['assigned_fn'] = unique
    
    # 리스트로 변환 (정렬)
    result = [merged[fp_name] for fp_name in sorted(merged.keys())]
    
    # 파일 저장
    if output_file:
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(result, f, indent=2, ensure_ascii=False)
        print(f"✅ 병합 완료: {len(result)}개 항목 → {output_file}")
    
    return result


if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 3:
        print("사용법: python merge_json_simple.py <file1.json> <file2.json> [output.json]")
        sys.exit(1)
    
    file1 = sys.argv[1]
    file2 = sys.argv[2]
    output = sys.argv[3] if len(sys.argv) > 3 else 'merged.json'
    
    merge_json_files(file1, file2, output)