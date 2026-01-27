#!/usr/bin/env python3
"""
typedef_inline.py
nginx 프로젝트 전체를 순회하면서 함수 포인터 typedef만 인라인으로 치환
일반 typedef는 건드리지 않음
"""

import os
import sys
import re
import json
from typing import Dict
from pathlib import Path

def iter_target_files(source_dir: str):
    """
    프로젝트 트리를 순회하여 .c, .h, .in 파일 선택
    """
    for dirpath, _, filenames in os.walk(source_dir):
        for fn in filenames:
            if fn.endswith((".c", ".h", ".in", ".cc")):
                yield os.path.join(dirpath, fn)

class TypedefResolver:
    def __init__(self, source_dir: str, dry_run: bool = True):
        self.source_dir = source_dir
        self.dry_run = dry_run
        
        # 함수 포인터 typedef 매핑
        # key: typedef 이름, value: 전체 함수 포인터 선언 (typedef 제외)
        # 예: "ngx_output_chain_filter_pt" -> "ngx_int_t (*ngx_output_chain_filter_pt)(void *ctx, ngx_chain_t *in)"
        self.function_pointer_templates: Dict[str, str] = {}
        
        self.files_modified = 0
        self.replacements_made = 0
    
    def parse_typedef_function_pointer(self, content: str):
        """
        함수 포인터 typedef 파싱하고 템플릿 저장
        - typedef return_type (*name)(params); 형식 파싱
        """
        # 패턴: typedef return_type (*name)(params);
        pattern = r'typedef\s+([\w\s\*]+?\s*\(\s*\*\s*\w+\s*\)\s*\([^)]*\))\s*;'
        
        for match in re.finditer(pattern, content, re.DOTALL):
            full_declaration = match.group(1).strip()
            
            # typedef 이름 추출
            name_pattern = r'\(\s*\*\s*(\w+)\s*\)'
            name_match = re.search(name_pattern, full_declaration)
            
            if name_match:
                typedef_name = name_match.group(1)
                
                # 템플릿 저장 (typedef를 제외한 전체 선언)
                self.function_pointer_templates[typedef_name] = full_declaration
                
                print(f"  Function pointer typedef: {typedef_name}")
                print(f"    Template: {full_declaration}")
    
    def save_typedefs_to_json(self, output_file: str = "typedefs.json"):
        """
        수집한 typedef를 JSON 파일로 저장
        """
        typedefs_data = {
            "function_pointer_templates": self.function_pointer_templates
        }
        
        # JSON 파일로 저장
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(typedefs_data, f, indent=2, ensure_ascii=False)
        
        print(f"\nTypedefs saved to: {output_file}")
    
    def collect_all_typedefs(self):
        """
        모든 파일을 순회하며 typedef 수집
        """
        print("=" * 70)
        print("Step 1: Collecting function pointer typedefs")
        print("=" * 70)
        
        for filepath in iter_target_files(self.source_dir):
            try:
                with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                
                # 주석 제거 (간단한 버전)
                content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
                content = re.sub(r'//.*?$', '', content, flags=re.MULTILINE)
                
                # 함수 포인터 typedef 파싱
                self.parse_typedef_function_pointer(content)
                
            except Exception as e:
                print(f"Warning: Failed to parse {filepath}: {e}")
        
        print(f"\nCollected {len(self.function_pointer_templates)} function pointer typedefs")
        
        # JSON 파일로 저장
        self.save_typedefs_to_json("typedefs.json")
    
    def replace_function_pointer_typedef(self, content: str) -> tuple:
        """
        함수 포인터 typedef 치환
        
        알고리즘:
        1. typedef_name으로 선언된 변수 찾기
        2. 템플릿에서 typedef_name을 변수 이름으로 치환
        3. 해당 위치에 치환된 선언 삽입
        
        예:
        ngx_output_chain_filter_pt output_filter;
        ->
        ngx_int_t (*output_filter)(void *ctx, ngx_chain_t *in);
        """
        modified = content
        local_replacements = 0
        
        for typedef_name, template in self.function_pointer_templates.items():
            # 패턴: typedef_name variable_name; (또는 , 또는 ))
            # 여러 공백도 허용
            pattern = r'\b' + re.escape(typedef_name) + r'\s+(\w+)\s*([;,\)])'
            
            def replace_func(match):
                var_name = match.group(1)
                terminator = match.group(2)
                
                # 템플릿에서 typedef_name을 var_name으로 치환
                new_declaration = template.replace(
                    f"(*{typedef_name})",
                    f"(*{var_name})"
                )
                
                return new_declaration + terminator
            
            # 매칭 확인
            matches = list(re.finditer(pattern, modified))
            if matches:
                print(f"  Replacing {typedef_name}: {len(matches)} occurrences")
                for m in matches:
                    print(f"    Variable: {m.group(1)}")
                
                modified = re.sub(pattern, replace_func, modified)
                local_replacements += len(matches)
        
        return modified, local_replacements
    
    def process_file(self, filepath: str) -> bool:
        """
        파일 하나를 처리
        Returns: True if file was modified
        """
        try:
            with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                original_content = f.read()
            
            modified_content = original_content
            
            # 함수 포인터 typedef만 치환
            modified_content, fp_count = self.replace_function_pointer_typedef(modified_content)
            
            if modified_content != original_content:
                if not self.dry_run:
                    with open(filepath, 'w', encoding='utf-8') as f:
                        f.write(modified_content)
                
                rel_path = os.path.relpath(filepath, self.source_dir)
                print(f"\nModified: {rel_path} ({fp_count} replacements)")
                self.replacements_made += fp_count
                return True
            
            return False
            
        except Exception as e:
            print(f"Error processing {filepath}: {e}")
            return False
    
    def process_all_files(self):
        """
        모든 파일 처리
        """
        print("\n" + "=" * 70)
        print("Step 2: Replacing function pointer typedefs in all files")
        print("=" * 70)
        
        if self.dry_run:
            print("DRY RUN MODE - No files will be modified\n")
        
        for filepath in iter_target_files(self.source_dir):
            if self.process_file(filepath):
                self.files_modified += 1
    
    def remove_typedef_declarations(self):
        """
        Step 3: 함수 포인터 typedef 선언 자체를 제거 (선택사항)
        """
        print("\n" + "=" * 70)
        print("Step 3: Removing function pointer typedef declarations")
        print("=" * 70)
        
        if self.dry_run:
            print("DRY RUN MODE - No files will be modified\n")
            return
        
        for filepath in iter_target_files(self.source_dir):
            try:
                with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                
                original_content = content
                
                # 함수 포인터 typedef 제거
                for typedef_name in self.function_pointer_templates.keys():
                    pattern = r'typedef\s+[\w\s\*]+?\s*\(\s*\*\s*' + re.escape(typedef_name) + r'\s*\)\s*\([^)]*\)\s*;'
                    content = re.sub(pattern, '', content)
                
                if content != original_content:
                    with open(filepath, 'w', encoding='utf-8') as f:
                        f.write(content)
                    
                    rel_path = os.path.relpath(filepath, self.source_dir)
                    print(f"Removed function pointer typedefs from: {rel_path}")
                    
            except Exception as e:
                print(f"Error removing typedefs from {filepath}: {e}")
    
    def run(self, remove_typedefs: bool = False):
        """
        전체 프로세스 실행
        """
        print("=" * 70)
        print("Function Pointer Typedef Inline Replacement Tool")
        print("=" * 70)
        print(f"Source directory: {self.source_dir}")
        print(f"Mode: {'DRY RUN' if self.dry_run else 'EXECUTE'}")
        print(f"Note: Only function pointer typedefs will be replaced")
        print(f"      Simple typedefs (typedef type1 type2) will be preserved")
        print()
        
        # Step 1: typedef 수집
        self.collect_all_typedefs()
        
        # Step 2: 모든 파일에서 함수 포인터 typedef 치환
        self.process_all_files()
        
        # Step 3: typedef 선언 제거 (옵션)
        if remove_typedefs and not self.dry_run:
            self.remove_typedef_declarations()
        
        # 결과 출력
        print("\n" + "=" * 70)
        print("Summary")
        print("=" * 70)
        print(f"Files modified: {self.files_modified}")
        print(f"Total replacements: {self.replacements_made}")
        print(f"Function pointer typedefs found: {len(self.function_pointer_templates)}")
        
        if self.dry_run:
            print("\nTo apply changes, run with --execute flag")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='Replace function pointer typedef usage with original types inline (preserves simple typedefs)',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
Examples:
  # Dry run (preview changes)
  python typedef_inline.py /path/to/nginx
  
  # Apply changes
  python typedef_inline.py /path/to/nginx --execute
  
  # Apply changes and remove function pointer typedef declarations
  python typedef_inline.py /path/to/nginx --execute --remove-typedefs

Note:
  - Only function pointer typedefs will be replaced
  - Simple typedefs (typedef type1 type2) are preserved
        '''
    )
    
    parser.add_argument('source_dir',
                       help='Path to source directory (e.g., nginx root)')
    parser.add_argument('--execute',
                       action='store_true',
                       help='Actually modify files (default is dry run)')
    parser.add_argument('--remove-typedefs',
                       action='store_true',
                       help='Also remove function pointer typedef declarations after replacement')
    
    args = parser.parse_args()
    
    if not os.path.isdir(args.source_dir):
        print(f"Error: {args.source_dir} is not a directory")
        sys.exit(1)
    
    # 실행 확인
    if args.execute:
        print("\n" + "!" * 70)
        print("WARNING: This will modify source files!")
        print("!" * 70)
        response = input("\nAre you sure you want to continue? (yes/no): ")
        if response.lower() != 'yes':
            print("Aborted.")
            sys.exit(0)
    
    resolver = TypedefResolver(args.source_dir, dry_run=not args.execute)
    resolver.run(remove_typedefs=args.remove_typedefs)

if __name__ == "__main__":
    main()