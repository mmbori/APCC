#!/usr/bin/env python3
"""
0_1_extract_build_scope.py
빌드 로그로부터 실제 빌드에 사용되는 모든 소스 파일을 추출하고,
재귀적으로 include된 헤더 파일까지 탐색하여 파일 목록 출력
"""

import os
import sys
import re
from typing import Set, List

def iter_target_files(source_dir: str):
    """
    프로젝트 트리를 순회하여 .c, .h, .in 파일 선택
    """
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in", ".cc")):
                yield os.path.join(dirpath, fn)

def extract_sources_from_build_log(log_file: str) -> Set[str]:
    """
    빌드 로그에서 컴파일되는 소스 파일 추출
    """
    sources = set()
    
    with open(log_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
        
    # 먼저 로그 내용 샘플 출력
    print("\n=== Build log sample (first 1000 chars) ===")
    print(content[:1000])
    print("=" * 50)
    
    lines = content.split('\n')
    for line in lines:
        # .c, .cc, .cpp 파일 경로 패턴 추출 (다양한 형식 지원)
        # 예: src/core/nginx.c, objs/ngx_modules.c 등
        matches = re.findall(r'[\w/.\-]+\.c(?:c|pp)?', line)
        if matches:
            print(f"Found in line: {line[:100]}")
            print(f"  Matches: {matches}")
            sources.update(matches)
    
    return sources

def find_file_in_tree(filename: str, source_dir: str) -> str:
    """
    프로젝트 트리에서 파일명으로 실제 경로 찾기
    """
    # 절대 경로인 경우
    if os.path.isabs(filename) and os.path.exists(filename):
        return filename
    
    # 상대 경로 그대로 시도
    candidate = os.path.join(source_dir, filename)
    if os.path.exists(candidate):
        return candidate
    
    # 파일명만으로 검색
    basename = os.path.basename(filename)
    for filepath in iter_target_files(source_dir):
        if os.path.basename(filepath) == basename:
            return filepath
    
    return None

def extract_includes(filepath: str) -> List[str]:
    """
    소스 파일에서 #include 지시자 추출
    """
    includes = []
    include_pattern = re.compile(r'^\s*#\s*include\s*["<]([^">]+)[">]')
    
    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            for line in f:
                match = include_pattern.match(line)
                if match:
                    includes.append(match.group(1))
    except Exception as e:
        print(f"Warning: Failed to read {filepath}: {e}", file=sys.stderr)
    
    return includes

def resolve_all_dependencies(sources: Set[str], source_dir: str) -> Set[str]:
    """
    소스 파일들로부터 재귀적으로 모든 include된 파일 탐색
    """
    all_files = set()
    to_process = list(sources)
    processed = set()
    
    print("\n=== Resolving dependencies ===")
    
    while to_process:
        current = to_process.pop(0)
        
        if current in processed:
            continue
        
        processed.add(current)
        
        # 파일 경로 해석
        filepath = find_file_in_tree(current, source_dir)
        
        if not filepath or not os.path.exists(filepath):
            print(f"Warning: Could not find file: {current}")
            continue
        
        abs_path = os.path.abspath(filepath)
        all_files.add(abs_path)
        print(f"Processing: {abs_path}")
        
        # include된 파일들 추출
        includes = extract_includes(filepath)
        
        for inc in includes:
            # 프로젝트 트리에서 include 파일 찾기
            inc_path = find_file_in_tree(inc, source_dir)
            if inc_path and inc_path not in processed:
                to_process.append(inc_path)
    
    return all_files

def main():
    if len(sys.argv) < 3:
        print(f"Usage: {sys.argv[0]} <build_log_file> <source_directory> [output_file]")
        sys.exit(1)
    
    log_file = sys.argv[1]
    source_dir = sys.argv[2]
    output_file = sys.argv[3] if len(sys.argv) > 3 else "build_files.txt"
    
    if not os.path.isfile(log_file):
        print(f"Error: {log_file} is not a file")
        sys.exit(1)
    
    if not os.path.isdir(source_dir):
        print(f"Error: {source_dir} is not a directory")
        sys.exit(1)
    
    print(f"Extracting sources from build log: {log_file}")
    sources = extract_sources_from_build_log(log_file)
    print(f"\nFound {len(sources)} source files in build log:")
    for src in sorted(sources):
        print(f"  - {src}")
    
    if not sources:
        print("\nNo source files found. Please check the build log format.")
        sys.exit(1)
    
    print(f"\nResolving dependencies in: {source_dir}")
    all_files = resolve_all_dependencies(sources, source_dir)
    print(f"\nTotal files (including dependencies): {len(all_files)}")
    
    # 결과 파일로 저장
    with open(output_file, 'w', encoding='utf-8') as f:
        for filepath in sorted(all_files):
            f.write(filepath + '\n')
    
    print(f"\nFile list saved to: {output_file}")
    
    # 통계 출력
    c_files = [f for f in all_files if f.endswith(('.c', '.cc', '.cpp'))]
    h_files = [f for f in all_files if f.endswith('.h')]
    other_files = [f for f in all_files if not (f.endswith(('.c', '.cc', '.cpp', '.h')))]
    
    print("\nStatistics:")
    print(f"  Source files (.c/.cc/.cpp): {len(c_files)}")
    print(f"  Header files (.h): {len(h_files)}")
    print(f"  Other files: {len(other_files)}")

if __name__ == "__main__":
    main()