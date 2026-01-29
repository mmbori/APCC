#!/usr/bin/env python3
"""
ProFTPD 최소/기본 옵션 컴파일 시 포함되는 실제 코드 파일 추출

실제로 존재하는 파일만 식별합니다.
"""

import re
import json
import sys
from pathlib import Path
from typing import Dict, List, Set

# ProFTPD 기본 내장 모듈 (INSTALL 파일 기준)
DEFAULT_BUILTIN_MODULES = [
    'mod_core',
    'mod_xfer',
    'mod_auth',
    'mod_auth_unix',
    'mod_auth_file',
    'mod_log',
    'mod_ls',
    'mod_site',
    'mod_delay',
    'mod_facts',
]

# --enable-devel 옵션 추가 모듈
DEVEL_MODULES = [
    'mod_rlimit',
]

def parse_configure_options(config_line: str) -> Dict[str, any]:
    """Configure 명령어 라인 파싱"""
    options = {
        'enable_devel': False,
        'enable_static': False,
        'with_modules': [],
        'with_shared': [],
        'cflags': '',
        'ldflags': ''
    }
    
    # CFLAGS 추출
    cflags_match = re.search(r'CFLAGS="([^"]+)"', config_line)
    if cflags_match:
        options['cflags'] = cflags_match.group(1)
    
    # LDFLAGS 추출
    ldflags_match = re.search(r'LDFLAGS="([^"]+)"', config_line)
    if ldflags_match:
        options['ldflags'] = ldflags_match.group(1)
    
    # --enable-devel
    if '--enable-devel' in config_line:
        options['enable_devel'] = True
    
    # --enable-static
    if '--enable-static' in config_line or '-static' in options['ldflags']:
        options['enable_static'] = True
    
    # --with-modules=...
    modules_match = re.search(r'--with-modules=([^\s]+)', config_line)
    if modules_match:
        modules = modules_match.group(1).split(':')
        options['with_modules'] = modules
    
    # --with-shared=...
    shared_match = re.search(r'--with-shared=([^\s]+)', config_line)
    if shared_match:
        shared = shared_match.group(1).split(':')
        options['with_shared'] = shared
    
    return options

def get_included_modules(options: Dict) -> List[str]:
    """빌드에 포함될 모듈 목록 반환"""
    modules = DEFAULT_BUILTIN_MODULES.copy()
    
    # --enable-devel 추가 모듈
    if options['enable_devel']:
        modules.extend(DEVEL_MODULES)
    
    # --with-modules로 추가된 모듈
    modules.extend(options['with_modules'])
    
    # PAM 자동 감지 (기본적으로 포함된다고 가정)
    if 'mod_auth_pam' not in modules:
        modules.append('mod_auth_pam')
    
    return sorted(list(set(modules)))

def find_actual_core_files(proftpd_dir: Path) -> List[str]:
    """
    src/ 디렉토리에서 실제 존재하는 .c 파일 찾기
    """
    src_dir = proftpd_dir / 'src'
    
    if not src_dir.exists():
        print(f"Warning: {src_dir} does not exist", file=sys.stderr)
        return []
    
    # 실제 .c 파일만 추출
    c_files = []
    for c_file in sorted(src_dir.glob('*.c')):
        relative_path = f"src/{c_file.name}"
        c_files.append(relative_path)
    
    return c_files

def find_actual_module_files(proftpd_dir: Path, modules: List[str]) -> List[str]:
    """
    modules/ 또는 contrib/ 디렉토리에서 실제 존재하는 모듈 파일 찾기
    """
    module_files = []
    
    for module in modules:
        # modules/ 디렉토리 확인
        module_path = proftpd_dir / 'modules' / f'{module}.c'
        if module_path.exists():
            module_files.append(f'modules/{module}.c')
            continue
        
        # contrib/ 디렉토리 확인
        contrib_path = proftpd_dir / 'contrib' / f'{module}.c'
        if contrib_path.exists():
            module_files.append(f'contrib/{module}.c')
            continue
        
        # 못 찾은 경우 경고
        print(f"Warning: Module file not found: {module}", file=sys.stderr)
    
    return sorted(module_files)

def extract_functions_from_file(filepath: Path) -> Set[str]:
    """C 파일에서 함수 정의 추출"""
    functions = set()
    
    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # 주석 제거
        content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
        content = re.sub(r'//.*?$', '', content, flags=re.MULTILINE)
        
        # 함수 정의 패턴
        pattern = r'(?:^|\n)\s*(?:static\s+|extern\s+)?(?:\w+\s+\**)+(\w+)\s*\([^)]*\)\s*\{'
        
        for match in re.finditer(pattern, content, re.MULTILINE):
            func_name = match.group(1)
            if func_name not in ['if', 'for', 'while', 'switch', 'return']:
                functions.add(func_name)
    
    except Exception as e:
        print(f"Error reading {filepath}: {e}", file=sys.stderr)
    
    return functions

def identify_actual_build_scope(proftpd_dir: Path, config_line: str) -> Dict:
    """
    실제 존재하는 파일만 식별
    """
    # Configure 옵션 파싱
    options = parse_configure_options(config_line)
    
    # 포함될 모듈 식별
    modules = get_included_modules(options)
    
    # 실제 존재하는 파일만 찾기
    print("Finding actual core source files...", file=sys.stderr)
    core_files = find_actual_core_files(proftpd_dir)
    
    print("Finding actual module files...", file=sys.stderr)
    module_files = find_actual_module_files(proftpd_dir, modules)
    
    # 모든 소스 파일을 단일 리스트로 결합
    all_source_files = sorted(core_files + module_files)
    
    # 각 파일에서 함수 추출
    functions_by_file = {}
    
    print("Extracting functions from all source files...", file=sys.stderr)
    for file_path in all_source_files:
        full_path = proftpd_dir / file_path
        if full_path.exists():
            file_functions = extract_functions_from_file(full_path)
            functions_by_file[file_path] = sorted(list(file_functions))
    
    # 통계 계산
    total_functions = sum(len(v) for v in functions_by_file.values())
    
    # 결과 구성
    result = {
        'configure_line': config_line,
        'configure_options': options,
        'included_modules': modules,
        'source_files': all_source_files,
        'functions_by_file': functions_by_file,
        'statistics': {
            'total_modules': len(modules),
            'total_source_files': len(all_source_files),
            'total_functions': total_functions
        }
    }
    
    return result

def main():
    if len(sys.argv) < 3:
        print("Usage: python identify_build_scope.py <proftpd_source_dir> <output_file> [configure_line]")
        print("\nExample:")
        print('  python identify_build_scope.py /path/to/proftpd proftpd_scope.txt \\')
        print('    \'CFLAGS="-g -O0" LDFLAGS="-static" ./configure --enable-devel --enable-static\'')
        print("\nDefault configure line:")
        print('  CFLAGS="-g -O0 -fno-omit-frame-pointer" LDFLAGS="-static" ./configure --enable-devel --enable-static')
        sys.exit(1)
    
    proftpd_dir = Path(sys.argv[1])
    output_file = sys.argv[2]
    
    if not proftpd_dir.exists():
        print(f"Error: {proftpd_dir} does not exist", file=sys.stderr)
        sys.exit(1)
    
    # Configure 라인 (기본값 또는 인자로 받음)
    if len(sys.argv) >= 4:
        config_line = sys.argv[3]
    else:
        config_line = 'CFLAGS="-g -O0 -fno-omit-frame-pointer" LDFLAGS="-static" ./configure --enable-devel --enable-static'
    
    print(f"ProFTPD source directory: {proftpd_dir}", file=sys.stderr)
    print(f"Output file: {output_file}", file=sys.stderr)
    print(f"Configure line: {config_line}", file=sys.stderr)
    print("", file=sys.stderr)
    
    # 빌드 범위 식별
    result = identify_actual_build_scope(proftpd_dir, config_line)
    
    # 파일 목록만 출력 파일에 저장
    with open(output_file, 'w') as f:
        # f.write("# ProFTPD Build Source Files\n")
        # f.write(f"# Configure: {config_line}\n")
        f.write(f"# Total: {len(result['source_files'])} files\n\n")
        for source_file in result['source_files']:
            f.write(f"{source_file}\n")
    
    # 통계 출력 (stderr)
    print("\n=== Build Scope Statistics ===", file=sys.stderr)
    stats = result['statistics']
    print(f"Included Modules: {stats['total_modules']}", file=sys.stderr)
    print(f"Total Source Files: {stats['total_source_files']}", file=sys.stderr)
    print(f"Total Functions: {stats['total_functions']}", file=sys.stderr)
    
    # 파일 목록 출력 (stderr)
    print("\n=== Source Files ===", file=sys.stderr)
    for f in result['source_files']:
        print(f"  {f}", file=sys.stderr)
    
    print(f"\n✓ Source files saved to: {output_file}", file=sys.stderr)


if __name__ == '__main__':
    main()