#!/usr/bin/env python3
"""
Nginx File Cleanup Script
빌드에 필요한 파일 목록을 제외한 모든 .c, .h, .cc 파일만 삭제 (다른 확장자는 보존)
"""

import os
import sys
import argparse
from pathlib import Path
from typing import Set, List

class NginxFileCleanup:
    def __init__(self, file_list: str, nginx_root: str, dry_run: bool = True):
        self.file_list = file_list
        self.nginx_root = Path(nginx_root).resolve()
        self.dry_run = dry_run
        self.required_files: Set[Path] = set()
        self.files_to_delete: List[Path] = []
        
    def load_required_files(self):
        """필요한 파일 목록 로드"""
        print(f"Loading required files from: {self.file_list}")
        
        with open(self.file_list, 'r') as f:
            for line in f:
                line = line.strip()
                
                # 주석이나 빈 줄 무시
                if not line or line.startswith('#'):
                    continue
                
                # 절대 경로 또는 상대 경로 처리
                if line.startswith('/'):
                    # 절대 경로인 경우 nginx_root 기준으로 변환
                    line = line.lstrip('/')
                
                file_path = (self.nginx_root / line).resolve()
                self.required_files.add(file_path)
        
        print(f"Loaded {len(self.required_files)} required files")
        
        # 파일 타입별 통계
        c_count = sum(1 for f in self.required_files if f.suffix == '.c')
        h_count = sum(1 for f in self.required_files if f.suffix == '.h')
        cc_count = sum(1 for f in self.required_files if f.suffix == '.cc')
        other_count = len(self.required_files) - c_count - h_count - cc_count
        
        print(f"  - .c files: {c_count}")
        print(f"  - .h files: {h_count}")
        print(f"  - .cc files: {cc_count}")
        if other_count > 0:
            print(f"  - other files: {other_count}")
    
    def find_all_source_files(self) -> List[Path]:
        """Nginx 루트 디렉토리에서 모든 .c, .h, .cc 파일 찾기 (다른 확장자는 제외)"""
        print(f"\nScanning for .c, .h, and .cc files in: {self.nginx_root}")
        
        all_files = []
        
        # .c, .h, .cc 파일만 찾기 (다른 확장자는 무시)
        for ext in ['*.c', '*.h', '*.cc']:
            all_files.extend(self.nginx_root.rglob(ext))
        
        print(f"Found {len(all_files)} total .c, .h, and .cc files")
        
        # 타입별 통계
        c_count = sum(1 for f in all_files if f.suffix == '.c')
        h_count = sum(1 for f in all_files if f.suffix == '.h')
        cc_count = sum(1 for f in all_files if f.suffix == '.cc')
        print(f"  - .c files: {c_count}")
        print(f"  - .h files: {h_count}")
        print(f"  - .cc files: {cc_count}")
        
        return all_files
    
    def identify_files_to_delete(self):
        """삭제할 파일 목록 생성 (.c, .h, .cc 파일만 대상)"""
        print("\nIdentifying files to delete...")
        
        all_files = self.find_all_source_files()
        
        for file_path in all_files:
            resolved_path = file_path.resolve()
            
            # 필요한 파일 목록에 없으면 삭제 대상
            if resolved_path not in self.required_files:
                self.files_to_delete.append(resolved_path)
        
        print(f"Found {len(self.files_to_delete)} files to delete")
        
        # 삭제 대상 타입별 통계
        c_count = sum(1 for f in self.files_to_delete if f.suffix == '.c')
        h_count = sum(1 for f in self.files_to_delete if f.suffix == '.h')
        cc_count = sum(1 for f in self.files_to_delete if f.suffix == '.cc')
        print(f"  - .c files to delete: {c_count}")
        print(f"  - .h files to delete: {h_count}")
        print(f"  - .cc files to delete: {cc_count}")
    
    def group_by_directory(self) -> dict:
        """디렉토리별로 삭제할 파일 그룹화"""
        dir_groups = {}
        
        for file_path in self.files_to_delete:
            try:
                rel_path = file_path.relative_to(self.nginx_root)
                dir_name = str(rel_path.parent)
                
                if dir_name not in dir_groups:
                    dir_groups[dir_name] = []
                
                dir_groups[dir_name].append(rel_path)
            except ValueError:
                pass
        
        return dir_groups
    
    def group_by_extension(self) -> dict:
        """확장자별로 삭제할 파일 그룹화"""
        ext_groups = {}
        
        for file_path in self.files_to_delete:
            ext = file_path.suffix
            if ext not in ext_groups:
                ext_groups[ext] = []
            ext_groups[ext].append(file_path)
        
        return ext_groups
    
    def print_summary(self):
        """삭제할 파일 요약 출력"""
        print("\n" + "="*70)
        print("DELETION SUMMARY")
        print("="*70)
        
        dir_groups = self.group_by_directory()
        ext_groups = self.group_by_extension()
        
        print(f"\nTotal files to delete: {len(self.files_to_delete)}")
        print(f"Directories affected: {len(dir_groups)}")
        
        print("\n--- Files by Extension ---")
        for ext, files in sorted(ext_groups.items()):
            print(f"{ext}: {len(files)} files")
        
        print("\n--- Files by Directory ---")
        for dir_name, files in sorted(dir_groups.items()):
            c_files = [f for f in files if f.suffix == '.c']
            h_files = [f for f in files if f.suffix == '.h']
            cc_files = [f for f in files if f.suffix == '.cc']
            
            print(f"\n{dir_name}/ ({len(files)} files: {len(c_files)} .c, {len(h_files)} .h, {len(cc_files)} .cc)")
            for file_path in sorted(files):
                print(f"  - {file_path.name}")
    
    def save_deletion_list(self, output_file: str = "files_to_delete.txt"):
        """삭제할 파일 목록을 파일로 저장"""
        with open(output_file, 'w') as f:
            f.write("# Files to be deleted (.c, .h, and .cc only)\n")
            f.write(f"# Total: {len(self.files_to_delete)}\n\n")
            
            # 확장자별로 그룹화해서 저장
            ext_groups = self.group_by_extension()
            
            for ext in sorted(ext_groups.keys()):
                f.write(f"\n# {ext} files ({len(ext_groups[ext])})\n")
                for file_path in sorted(ext_groups[ext]):
                    try:
                        rel_path = file_path.relative_to(self.nginx_root)
                        f.write(f"{rel_path}\n")
                    except ValueError:
                        f.write(f"{file_path}\n")
        
        print(f"\nDeletion list saved to: {output_file}")
    
    def delete_files(self):
        """실제로 파일 삭제 수행"""
        if self.dry_run:
            print("\n" + "="*70)
            print("DRY RUN MODE - No files will be deleted")
            print("="*70)
            print("\nNOTE: Only .c, .h, and .cc files will be deleted.")
            print("      All other file types (.o, .so, Makefile, etc.) will be preserved.")
            self.print_summary()
            self.save_deletion_list()
            print("\nTo actually delete files, run with --execute flag")
            return
        
        print("\n" + "="*70)
        print("DELETING FILES (.c, .h, and .cc only)")
        print("="*70)
        
        deleted_count = 0
        error_count = 0
        
        for file_path in self.files_to_delete:
            try:
                rel_path = file_path.relative_to(self.nginx_root)
                print(f"Deleting: {rel_path}")
                file_path.unlink()
                deleted_count += 1
            except Exception as e:
                print(f"ERROR deleting {file_path}: {e}")
                error_count += 1
        
        print("\n" + "="*70)
        print("DELETION COMPLETE")
        print("="*70)
        print(f"Successfully deleted: {deleted_count} files")
        print(f"Errors: {error_count}")
        
        # 빈 디렉토리 정리 (선택사항)
        if not self.dry_run:
            self.cleanup_empty_directories()
    
    def cleanup_empty_directories(self):
        """빈 디렉토리 삭제"""
        print("\nCleaning up empty directories...")
        
        empty_dirs = []
        
        for root, dirs, files in os.walk(self.nginx_root, topdown=False):
            root_path = Path(root)
            
            # 디렉토리가 비어있는지 확인
            try:
                if not any(root_path.iterdir()):
                    # 특정 디렉토리는 보존 (.git 등)
                    if '.git' not in root_path.parts:
                        empty_dirs.append(root_path)
            except Exception:
                pass
        
        if empty_dirs:
            print(f"Found {len(empty_dirs)} empty directories")
            for dir_path in empty_dirs:
                try:
                    rel_path = dir_path.relative_to(self.nginx_root)
                    print(f"Removing empty directory: {rel_path}")
                    dir_path.rmdir()
                except Exception as e:
                    print(f"Could not remove {dir_path}: {e}")
        else:
            print("No empty directories found")
    
    def run(self):
        """전체 프로세스 실행"""
        print("="*70)
        print("Nginx File Cleanup Tool")
        print("="*70)
        print(f"Nginx root: {self.nginx_root}")
        print(f"Mode: {'DRY RUN' if self.dry_run else 'EXECUTE'}")
        print(f"Target: .c, .h, and .cc files ONLY (other files preserved)")
        print()
        
        # 1. 필요한 파일 목록 로드
        self.load_required_files()
        
        # 2. 삭제할 파일 식별
        self.identify_files_to_delete()
        
        if not self.files_to_delete:
            print("\nNo files to delete. All .c, .h, and .cc files are required.")
            return
        
        # 3. 파일 삭제 (또는 dry run)
        self.delete_files()


def main():
    parser = argparse.ArgumentParser(
        description='Delete unnecessary .c, .h, and .cc files from Nginx directory (preserves all other file types)',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
Examples:
  # Dry run (default - no files deleted)
  python 0_2_only_necessary.py nginx_build_files.txt /path/to/nginx
  
  # Actually delete files
  python 0_2_only_necessary.py nginx_build_files.txt /path/to/nginx --execute
  
  # With custom output file
  python 0_2_only_necessary.py nginx_build_files.txt /path/to/nginx --output my_list.txt

Note:
  - Only .c, .h, and .cc files will be deleted
  - All other files (.o, .so, Makefile, etc.) are preserved
  - Files listed in the input file are always kept
        '''
    )
    
    parser.add_argument('file_list', 
                       help='Path to file containing required files list')
    parser.add_argument('nginx_root', 
                       help='Path to Nginx root directory')
    parser.add_argument('--execute', 
                       action='store_true',
                       help='Actually delete files (default is dry run)')
    parser.add_argument('--output', 
                       default='files_to_delete.txt',
                       help='Output file for deletion list (default: files_to_delete.txt)')
    parser.add_argument('--keep-empty-dirs',
                       action='store_true',
                       help='Keep empty directories after deletion')
    
    args = parser.parse_args()
    
    # 입력 검증
    if not os.path.exists(args.file_list):
        print(f"Error: File list '{args.file_list}' not found")
        sys.exit(1)
    
    if not os.path.isdir(args.nginx_root):
        print(f"Error: Nginx root '{args.nginx_root}' is not a directory")
        sys.exit(1)
    
    # 실행 확인
    if args.execute:
        print("\n" + "!"*70)
        print("WARNING: This will permanently delete .c, .h, and .cc files!")
        print("         (Other file types will be preserved)")
        print("!"*70)
        response = input("\nAre you sure you want to continue? (yes/no): ")
        if response.lower() != 'yes':
            print("Aborted.")
            sys.exit(0)
    
    # 클린업 실행
    cleanup = NginxFileCleanup(
        args.file_list, 
        args.nginx_root, 
        dry_run=not args.execute
    )
    cleanup.run()


if __name__ == "__main__":
    main()