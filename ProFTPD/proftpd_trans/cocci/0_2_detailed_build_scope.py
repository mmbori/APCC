#!/usr/bin/env python3
"""
ProFTPD 빌드 스코프 확장 스크립트
- proftpd_scope.txt에서 초기 소스 파일 목록을 읽음
- 각 .c 파일에서 #include로 참조하는 헤더 파일을 재귀적으로 탐색
- 최종적으로 빌드에 필요한 모든 소스/헤더 파일 목록 생성
"""

import os
import re
import sys
from pathlib import Path
from typing import Set, List, Optional

class ProFTPDBuildScopeExpander:
    def __init__(self, proftpd_root: str, scope_file: str):
        self.proftpd_root = Path(proftpd_root).resolve()
        self.scope_file = scope_file
        self.source_files: Set[Path] = set()
        self.header_files: Set[Path] = set()
        self.processed_files: Set[Path] = set()
        
    def read_scope_file(self) -> List[str]:
        """scope 파일에서 초기 소스 파일 목록 읽기 (각 줄이 파일 경로)"""
        source_files = []
        
        with open(self.scope_file, 'r') as f:
            for line in f:
                line = line.strip()
                # 빈 줄이나 주석 무시
                if line and not line.startswith("#"):
                    source_files.append(line)
        
        return source_files
    
    def extract_includes(self, file_path: Path) -> List[str]:
        """파일에서 #include "..." 패턴의 헤더 파일 추출"""
        if not file_path.exists():
            return []
        
        includes = []
        include_pattern = re.compile(r'^\s*#\s*include\s+"([^"]+)"')
        
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                for line in f:
                    match = include_pattern.match(line)
                    if match:
                        includes.append(match.group(1))
        except Exception as e:
            print(f"Warning: Failed to read {file_path}: {e}", file=sys.stderr)
        
        return includes
    
    def resolve_header_path(self, header: str, current_file: Path) -> Optional[Path]:
        """헤더 파일의 실제 경로 해석"""
        # 1. 현재 파일과 같은 디렉토리에서 찾기
        same_dir = current_file.parent / header
        if same_dir.exists():
            return same_dir.resolve()
        
        # 2. proftpd_root 기준 상대 경로로 찾기
        root_relative = self.proftpd_root / header
        if root_relative.exists():
            return root_relative.resolve()
        
        # 3. include/ 디렉토리에서 찾기
        include_dir = self.proftpd_root / "include" / header
        if include_dir.exists():
            return include_dir.resolve()
        
        # 4. src/ 디렉토리에서 찾기
        src_dir = self.proftpd_root / "src" / header
        if src_dir.exists():
            return src_dir.resolve()
        
        # 5. modules/ 디렉토리에서 찾기
        modules_dir = self.proftpd_root / "modules" / header
        if modules_dir.exists():
            return modules_dir.resolve()
        
        return None
    
    def process_file_recursive(self, file_path: Path):
        """파일과 그 파일이 포함하는 모든 헤더를 재귀적으로 처리"""
        if file_path in self.processed_files:
            return
        
        self.processed_files.add(file_path)
        
        # 현재 파일이 .c 파일이면 source_files에 추가
        if file_path.suffix == '.c':
            self.source_files.add(file_path)
        # .h 파일이면 header_files에 추가
        elif file_path.suffix == '.h':
            self.header_files.add(file_path)
        
        # 파일 내 #include 추출
        includes = self.extract_includes(file_path)
        
        for header in includes:
            header_path = self.resolve_header_path(header, file_path)
            if header_path and header_path not in self.processed_files:
                # proftpd 디렉토리 내부의 헤더만 처리
                try:
                    header_path.relative_to(self.proftpd_root)
                    self.process_file_recursive(header_path)
                except ValueError:
                    # proftpd_root 외부의 시스템 헤더는 무시
                    pass
    
    def expand_scope(self):
        """스코프 확장 실행"""
        initial_sources = self.read_scope_file()
        print(f"Initial source files: {len(initial_sources)}")
        
        # 초기 소스 파일들 처리
        for source in initial_sources:
            source_path = self.proftpd_root / source
            if source_path.exists():
                self.process_file_recursive(source_path)
            else:
                print(f"Warning: Source file not found: {source}", file=sys.stderr)
        
        print(f"\nProcessing complete!")
        print(f"Total source files (.c): {len(self.source_files)}")
        print(f"Total header files (.h): {len(self.header_files)}")
    
    def get_relative_path(self, file_path: Path) -> str:
        """proftpd_root 기준 상대 경로 반환"""
        return str(file_path.relative_to(self.proftpd_root))
    
    def write_output(self, output_file: str):
        """결과를 파일로 저장 (모든 파일을 단순 리스트로)"""
        all_files = sorted(self.source_files | self.header_files, 
                          key=lambda x: self.get_relative_path(x))
        
        with open(output_file, 'w') as f:
            for file_path in all_files:
                f.write(f"{self.get_relative_path(file_path)}\n")
    

def main():
    if len(sys.argv) < 3:
        print("Usage: python final_build_scope.py <proftpd_root> <scope_file> <output_file>")
        print("\nExample:")
        print("  python final_build_scope.py /path/to/proftpd source_list.txt final_sources.txt")
        sys.exit(1)
    
    proftpd_root = sys.argv[1]
    scope_file = sys.argv[2]
    output_file = sys.argv[3]
    
    if not os.path.exists(proftpd_root):
        print(f"Error: ProFTPD root directory not found: {proftpd_root}", file=sys.stderr)
        sys.exit(1)
    
    if not os.path.exists(scope_file):
        print(f"Error: Scope file not found: {scope_file}", file=sys.stderr)
        sys.exit(1)
    
    expander = ProFTPDBuildScopeExpander(proftpd_root, scope_file)
    expander.expand_scope()
    expander.write_output(output_file)
    
    print(f"\n✓ Total files: {len(expander.source_files) + len(expander.header_files)}")
    print(f"  - Source files (.c): {len(expander.source_files)}")
    print(f"  - Header files (.h): {len(expander.header_files)}")
    print(f"✓ Results saved to: {output_file}")

if __name__ == "__main__":
    main()