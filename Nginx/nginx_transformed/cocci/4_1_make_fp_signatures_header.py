#!/usr/bin/env python3
"""
JSON 파일에서 함수 포인터별 할당 정보를 읽어 signature와 enum 테이블 생성

Usage: python3 generate_fp_signatures.py <json_file> <output_header> <output_source>
"""

import json
import sys
import os
import random
import time
from typing import List, Dict, Set
from collections import defaultdict

# 제외할 함수명 패턴

class FPSignatureGenerator:
    def __init__(self, json_file: str, output_header: str,
                 remove_list_file: str = None):
        self.json_file = json_file
        self.output_header = output_header
        self.remove_list_file = remove_list_file
        
        # fp_name -> List[assigned_fn]
        self.fp_functions_map: Dict[str, List[str]] = defaultdict(list)
        self.removed_functions: Set[str] = set()
        
        # 통계
        self.stats = {
            'total_fps': 0,
            'total_functions': 0,
            'excluded_functions': 0
        }
        
        # remove list 로드
        if remove_list_file and os.path.exists(remove_list_file):
            self.load_remove_list()
    
    def load_remove_list(self):
        """제외할 함수 목록 로드"""
        try:
            with open(self.remove_list_file, 'r', encoding='utf-8') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#') and not line.startswith('//'):
                        self.removed_functions.add(line)
            print(f"제외 목록 로드: {len(self.removed_functions)}개 함수")
        except Exception as e:
            print(f"제외 목록 로드 실패: {e}")
    
    def should_skip_function(self, func_name: str) -> bool:
        """함수를 스킵해야 하는지 확인"""
        
        # remove list
        if func_name in self.removed_functions:
            return True
        
        return False
    
    def load_json_data(self):
        """
        JSON 파일에서 함수 포인터 할당 정보 로드
        
        지원 형식:
        [
          {
            "fp_name": "callback",
            "assigned_fn": ["func1", "func2", "NULL"]
          },
          ...
        ]
        """
        try:
            with open(self.json_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            if not isinstance(data, list):
                print("Error: JSON은 list 형식이어야 합니다")
                sys.exit(1)
            
            print(f"\nJSON 데이터 로드: {len(data)}개 엔트리")
            
            for entry in data:
                fp_name = entry.get("fp_name")
                assigned_fn = entry.get("assigned_fn", [])
                
                if not fp_name:
                    continue
                
                # 함수 필터링 및 추가
                for func_name in assigned_fn:
                    func_name = func_name.strip()
                    
                    if self.should_skip_function(func_name):
                        self.stats['excluded_functions'] += 1
                        continue
                    
                    # 중복 방지
                    if func_name not in self.fp_functions_map[fp_name]:
                        self.fp_functions_map[fp_name].append(func_name)
            
            # 통계 업데이트
            self.stats['total_fps'] = len(self.fp_functions_map)
            self.stats['total_functions'] = sum(len(funcs) for funcs in self.fp_functions_map.values())
            
            print(f"로드된 함수 포인터: {self.stats['total_fps']}개")
            print(f"총 함수: {self.stats['total_functions']}개")
            print(f"제외된 함수: {self.stats['excluded_functions']}개")
            
        except Exception as e:
            print(f"JSON 로드 실패: {e}")
            sys.exit(1)
    
    def generate_header_content(self) -> str:
        """헤더 파일 내용 생성"""
        lines = []
        
        # Header guard
        guard_name = os.path.basename(self.output_header).upper().replace('.', '_')
        lines.append(f"#ifndef {guard_name}")
        lines.append(f"#define {guard_name}")
        lines.append("")
        
        # Comment
        lines.append("/*")
        lines.append(" * Function Pointer Signatures - Auto-generated")
        lines.append(f" * Total function pointers: {self.stats['total_fps']}")
        lines.append(f" * Total functions: {self.stats['total_functions']}")
        lines.append(" * Signature type: int")
        lines.append(" */")
        lines.append("")
        
        lines.append("#include <stdlib.h>")
        lines.append("#include <stdbool.h>")
        lines.append("")
        lines.append("""
typedef struct ngx_event_pipe_s  ngx_event_pipe_t;
typedef struct ngx_http_request_s     ngx_http_request_t;
typedef struct ngx_http_header_val_s  ngx_http_header_val_t;
typedef struct ngx_http_phase_handler_s  ngx_http_phase_handler_t;
typedef struct ngx_http_upstream_s    ngx_http_upstream_t;
typedef struct ngx_peer_connection_s  ngx_peer_connection_t;
typedef struct ngx_http_proxy_rewrite_s  ngx_http_proxy_rewrite_t;
typedef struct ngx_http_upstream_srv_conf_s  ngx_http_upstream_srv_conf_t;
""")

        lines.append("")
        
        # 각 FP별 코드 생성
        for fp_name in sorted(self.fp_functions_map.keys()):
            functions = self.fp_functions_map[fp_name]
            
            if not functions:
                continue
            
            lines.append(f"// =============== {fp_name} ===============")
            lines.append("")
            
            # 1. Enum 정의 (무작위 값 할당)
            lines.append(f"// {fp_name} function enumeration")
            lines.append(f"typedef enum {{")
            
            # 무작위 값 생성 (중복 방지)
            used_values = set()
            func_values = []
            for func in functions:
                while True:
                    # 큰 범위의 무작위 값 생성 (1000 ~ 999999)
                    rand_val = random.randint(1000, 999999)
                    if rand_val not in used_values:
                        used_values.add(rand_val)
                        func_values.append(rand_val)
                        break
            
            for i, func in enumerate(functions):
                comma = "," if i < len(functions) - 1 else ""
                lines.append(f"    {fp_name}_{func} = {func_values[i]}{comma}")
            lines.append(f"}} {fp_name}_enum;")
            lines.append("")
        
        # Header guard 종료
        lines.append(f"#endif /* {guard_name} */")
        lines.append("")
        
        return '\n'.join(lines)
    
    
    def generate_files(self):
        """헤더와 소스 파일 생성"""
        print("\n파일 생성 시작...")
        
        # JSON 데이터 로드
        self.load_json_data()
        
        if not self.fp_functions_map:
            print("Error: 생성할 함수 포인터가 없습니다")
            return
        
        try:
            # 헤더 파일 생성
            header_content = self.generate_header_content()
            with open(self.output_header, 'w', encoding='utf-8') as f:
                f.write(header_content)
            print(f"✓ 헤더 파일 생성: {self.output_header}")
            
            # 통계 출력
            self.print_statistics()
            
        except Exception as e:
            print(f"파일 생성 실패: {e}")
    
    def print_statistics(self):
        """생성 통계 출력"""
        print("\n=== 생성 통계 ===")
        print(f"함수 포인터 타입: {self.stats['total_fps']}개")
        print(f"총 함수: {self.stats['total_functions']}개")
        print(f"제외된 함수: {self.stats['excluded_functions']}개")
        print("")
        
        print("함수 포인터별 함수 개수:")
        for fp_name in sorted(self.fp_functions_map.keys()):
            func_count = len(self.fp_functions_map[fp_name])
            print(f"  {fp_name}: {func_count}개")
        print("")
        
        print(f"출력 파일:")
        print(f"  헤더: {self.output_header}")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='JSON에서 함수 포인터별 signature와 enum 테이블 생성',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
예제:
  python3 generate_fp_signatures.py functions.json fp_sigs.h fp_sigs.c
  python3 generate_fp_signatures.py functions.json fp_sigs.h fp_sigs.c -r remove_list.txt

JSON 형식:
  [
    {
      "fp_name": "callback",
      "assigned_fn": ["func1", "func2", "NULL"]
    },
    ...
  ]

생성되는 코드:
  - {fp}_enum: 각 함수에 대한 enum (예: callback_func1 = 0)
  - {fp}_signatures: int 배열
  - init_{fp}_signatures(): 초기화 함수
        """
    )
    
    parser.add_argument('json_file', help='함수 포인터 할당 정보 JSON 파일')
    parser.add_argument('output_header', help='출력 헤더 파일')
    parser.add_argument('-r', '--remove-list', help='제외할 함수 목록 파일')
    parser.add_argument('--seed', type=int, help='랜덤 시드 (테스트용)')
    
    args = parser.parse_args()
    
    # 입력 파일 확인
    if not os.path.exists(args.json_file):
        print(f"Error: JSON 파일을 찾을 수 없습니다: {args.json_file}")
        sys.exit(1)
    
    # 랜덤 시드 설정 (선택적)
    if args.seed:
        random.seed(args.seed)
        print(f"랜덤 시드 설정: {args.seed}")
    
    # 생성기 실행
    generator = FPSignatureGenerator(
        args.json_file,
        args.output_header,
        args.remove_list
    )
    
    generator.generate_files()
    
    print("\n✅ 완료!")


if __name__ == "__main__":
    main()