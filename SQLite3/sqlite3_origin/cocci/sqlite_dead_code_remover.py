#!/usr/bin/env python3
"""
SQLite3 Conservative Dead Code Commenter
매우 보수적으로 안전한 코드만 주석 처리하는 버전
"""

import re
import sys
import os
from pathlib import Path
from typing import Set, Dict, List, Tuple
import argparse


class MacroEvaluator:
    """매크로 정의를 관리하고 조건식을 평가하는 클래스"""
    
    def __init__(self):
        self.defined_macros: Set[str] = set()
        self.macro_values: Dict[str, str] = {}
    
    def add_define(self, macro: str, value: str = "1"):
        """매크로 정의 추가"""
        self.defined_macros.add(macro)
        self.macro_values[macro] = value
    
    def is_defined(self, macro: str) -> bool:
        """매크로가 정의되어 있는지 확인"""
        return macro in self.defined_macros
    
    def evaluate_condition(self, condition: str) -> tuple[bool, bool]:
        """
        전처리기 조건식 평가
        Returns: (is_active, is_certain)
            - is_active: 조건이 참인지 거짓인지
            - is_certain: 확실하게 판단 가능한지 (불확실하면 보수적으로 유지)
        """
        condition = condition.strip()
        original_condition = condition
        
        # 복잡한 조건식은 보수적으로 처리
        if any(op in condition for op in ['>', '<', '>=', '<=', '==', '!=']):
            # 산술 비교가 포함된 경우 - 보수적으로 유지
            return (True, False)
        
        if '||' in condition and '&&' in condition:
            # 복잡한 논리식 - 보수적으로 유지
            return (True, False)
        
        # defined(MACRO) 형태 처리
        defined_pattern = r'defined\s*\(\s*(\w+)\s*\)|defined\s+(\w+)'
        defined_macros_in_condition = re.findall(defined_pattern, condition)
        
        # 조건에 정의되지 않은 매크로가 있는지 확인
        uncertain = False
        for match in defined_macros_in_condition:
            macro = match[0] or match[1]
            if not self.is_defined(macro) and macro not in ['__linux__', '__unix__', '__GNUC__']:
                # 알려진 매크로가 아니면 불확실
                uncertain = True
        
        if uncertain:
            return (True, False)
        
        # defined() 치환
        condition = re.sub(r'defined\s*\(\s*(\w+)\s*\)', 
                          lambda m: '1' if self.is_defined(m.group(1)) else '0', 
                          condition)
        condition = re.sub(r'defined\s+(\w+)', 
                          lambda m: '1' if self.is_defined(m.group(1)) else '0', 
                          condition)
        
        # 매크로 이름을 값으로 치환
        for macro, value in self.macro_values.items():
            condition = re.sub(r'\b' + macro + r'\b', value, condition)
        
        # 정의되지 않은 매크로는 0으로 처리
        condition = re.sub(r'\b([A-Z_][A-Z0-9_]*)\b', '0', condition)
        
        # 논리 연산자 처리
        condition = condition.replace('&&', ' and ')
        condition = condition.replace('||', ' or ')
        condition = condition.replace('!', ' not ')
        
        try:
            result = bool(eval(condition, {"__builtins__": {}}, {}))
            return (result, True)  # 확실하게 판단 가능
        except:
            return (True, False)  # 평가 실패 시 보수적으로 유지


class ConservativePreprocessorParser:
    """보수적으로 전처리기 지시문을 파싱하는 클래스"""
    
    def __init__(self, evaluator: MacroEvaluator):
        self.evaluator = evaluator
        self.condition_stack: List[Tuple[bool, bool, int, str]] = []  # (활성화, 확실성, 라인, 조건)
    
    def parse_line(self, line: str, line_num: int) -> Tuple[str, bool, bool]:
        """
        한 줄을 파싱하여 활성 상태를 반환
        Returns: (directive_type, is_active, is_certain)
        """
        stripped = line.strip()
        
        # #if
        if stripped.startswith('#if '):
            condition = stripped[4:].strip()
            is_active, is_certain = self.evaluator.evaluate_condition(condition)
            self.condition_stack.append((is_active, is_certain, line_num, condition))
            return ('if', is_active, is_certain)
        
        # #ifdef
        elif stripped.startswith('#ifdef '):
            macro = stripped[7:].strip()
            is_active = self.evaluator.is_defined(macro)
            # ifdef는 명확하게 판단 가능
            is_certain = True
            self.condition_stack.append((is_active, is_certain, line_num, f"defined({macro})"))
            return ('ifdef', is_active, is_certain)
        
        # #ifndef
        elif stripped.startswith('#ifndef '):
            macro = stripped[8:].strip()
            is_active = not self.evaluator.is_defined(macro)
            is_certain = True
            self.condition_stack.append((is_active, is_certain, line_num, f"!defined({macro})"))
            return ('ifndef', is_active, is_certain)
        
        # #elif
        elif stripped.startswith('#elif '):
            condition = stripped[6:].strip()
            if self.condition_stack:
                prev_active, prev_certain, prev_line, prev_cond = self.condition_stack.pop()
                
                # 이전 조건이 불확실하면 elif도 불확실
                if not prev_certain:
                    is_active = True
                    is_certain = False
                elif prev_active:
                    # 이전 조건이 참이면 elif는 무조건 거짓
                    is_active = False
                    is_certain = True
                else:
                    is_active, is_certain = self.evaluator.evaluate_condition(condition)
                
                self.condition_stack.append((is_active, is_certain, line_num, condition))
                return ('elif', is_active, is_certain)
        
        # #else
        elif stripped.startswith('#else'):
            if self.condition_stack:
                prev_active, prev_certain, prev_line, prev_cond = self.condition_stack.pop()
                
                # 이전 조건이 불확실하면 else도 불확실
                if not prev_certain:
                    is_active = True
                    is_certain = False
                else:
                    is_active = not prev_active
                    is_certain = True
                
                self.condition_stack.append((is_active, is_certain, line_num, f"!({prev_cond})"))
                return ('else', is_active, is_certain)
        
        # #endif
        elif stripped.startswith('#endif'):
            if self.condition_stack:
                self.condition_stack.pop()
            return ('endif', True, True)
        
        # 현재 활성 상태 반환
        if self.condition_stack:
            is_active, is_certain = self.is_block_active()
            return ('code', is_active, is_certain)
        
        return ('code', True, True)
    
    def is_block_active(self) -> Tuple[bool, bool]:
        """
        현재 코드 블록이 활성 상태인지, 그리고 확실한지 반환
        Returns: (is_active, is_certain)
        """
        if not self.condition_stack:
            return (True, True)
        
        # 모든 스택의 조건이 참이어야 활성
        all_active = True
        all_certain = True
        
        for active, certain, _, _ in self.condition_stack:
            if not certain:
                # 하나라도 불확실하면 전체가 불확실
                all_certain = False
            if not active:
                all_active = False
        
        return (all_active, all_certain)


class ConservativeSourceCodeCommenter:
    """보수적으로 소스 코드의 비활성 부분을 주석 처리하는 클래스"""
    
    def __init__(self, evaluator: MacroEvaluator, verbose: bool = False):
        self.evaluator = evaluator
        self.verbose = verbose
    
    def has_important_definitions(self, lines: List[str], start: int, end: int) -> bool:
        """
        주어진 범위에 중요한 정의(typedef, struct, enum, 함수 선언 등)가 있는지 확인
        """
        important_keywords = [
            r'\btypedef\b',
            r'\bstruct\s+\w+',
            r'\benum\s+\w+',
            r'\bextern\b',
            r'#\s*define\s+[A-Z_][A-Z0-9_]*',  # 매크로 정의
        ]
        
        for i in range(start, min(end, len(lines))):
            line = lines[i].strip()
            for keyword in important_keywords:
                if re.search(keyword, line):
                    return True
        return False
    
    def process_file(self, filepath: Path, output_path: Path = None) -> bool:
        """파일을 처리하여 비활성 코드를 주석 처리"""
        if self.verbose:
            print(f"Processing: {filepath}")
        
        parser = ConservativePreprocessorParser(self.evaluator)
        
        try:
            with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                lines = f.readlines()
        except Exception as e:
            print(f"Error reading {filepath}: {e}")
            return False
        
        modified_lines = []
        dead_code_count = 0
        skipped_uncertain = 0
        
        i = 0
        while i < len(lines):
            line = lines[i]
            directive_type, is_active, is_certain = parser.parse_line(line, i + 1)
            
            # 전처리기 지시문은 그대로 유지
            if directive_type in ('if', 'ifdef', 'ifndef', 'elif', 'else', 'endif'):
                modified_lines.append(line)
                i += 1
                continue
            
            # 일반 코드
            current_active, current_certain = parser.is_block_active()
            
            # 보수적 판단: 확실하지 않으면 유지
            if not current_certain:
                modified_lines.append(line)
                if not current_active:
                    skipped_uncertain += 1
                i += 1
                continue
            
            # 확실하게 비활성이고, 중요한 정의가 없는 경우만 주석 처리
            if not current_active:
                # 현재 블록의 범위 찾기
                block_start = i
                block_end = i + 1
                
                # 블록 끝까지 탐색
                temp_i = i + 1
                temp_parser_stack_len = len(parser.condition_stack)
                while temp_i < len(lines):
                    temp_line = lines[temp_i]
                    temp_directive, _, _ = parser.parse_line(temp_line, temp_i + 1)
                    
                    # 조건 블록이 끝나면 중단
                    if temp_directive in ('elif', 'else', 'endif'):
                        if len(parser.condition_stack) < temp_parser_stack_len:
                            break
                    
                    block_end = temp_i
                    temp_i += 1
                
                # 재파싱 (parser 상태가 망가졌을 수 있음)
                parser = ConservativePreprocessorParser(self.evaluator)
                for j in range(i + 1):
                    parser.parse_line(lines[j], j + 1)
                
                # 중요한 정의가 있으면 주석 처리 안함
                if self.has_important_definitions(lines, block_start, block_end):
                    if self.verbose:
                        print(f"  Skipping line {i+1}: contains important definitions")
                    modified_lines.append(line)
                else:
                    # 안전하게 주석 처리
                    if not line.strip().startswith('//') and not line.strip().startswith('/*'):
                        modified_lines.append(f"/* DEAD_CODE: {line.rstrip()} */\n")
                        dead_code_count += 1
                    else:
                        modified_lines.append(line)
            else:
                modified_lines.append(line)
            
            i += 1
        
        # 결과 저장
        output_file = output_path if output_path else filepath
        
        try:
            with open(output_file, 'w', encoding='utf-8') as f:
                f.writelines(modified_lines)
            
            if self.verbose:
                if dead_code_count > 0:
                    print(f"  Commented {dead_code_count} lines of dead code")
                if skipped_uncertain > 0:
                    print(f"  Skipped {skipped_uncertain} uncertain lines (kept for safety)")
                if dead_code_count == 0 and skipped_uncertain == 0:
                    print(f"  No dead code found")
            
            return True
        
        except Exception as e:
            print(f"Error writing {output_file}: {e}")
            return False


class SQLiteConservativeDeadCodeRemover:
    """SQLite 프로젝트의 dead code를 보수적으로 제거하는 메인 클래스"""
    
    def __init__(self, sqlite_dir: Path, verbose: bool = False):
        self.sqlite_dir = sqlite_dir
        self.evaluator = MacroEvaluator()
        self.verbose = verbose
    
    def extract_cflags_defines(self, cflags: str):
        """CFLAGS에서 -D 옵션 추출"""
        if self.verbose:
            print("\n=== Extracting defines from CFLAGS ===")
        
        defines = re.findall(r'-D\s*(\w+)(?:=(\S+))?', cflags)
        
        for macro, value in defines:
            if value:
                self.evaluator.add_define(macro, value)
                if self.verbose:
                    print(f"  Defined: {macro} = {value}")
            else:
                self.evaluator.add_define(macro)
                if self.verbose:
                    print(f"  Defined: {macro}")
    
    def extract_configure_defines(self):
        """config.h에서 정의된 매크로 추출"""
        config_h = self.sqlite_dir / 'config.h'
        
        if not config_h.exists():
            if self.verbose:
                print("\n=== config.h not found ===")
            return
        
        if self.verbose:
            print("\n=== Extracting defines from config.h ===")
        
        try:
            with open(config_h, 'r', encoding='utf-8') as f:
                for line in f:
                    match = re.match(r'#define\s+(\w+)(?:\s+(.+))?', line.strip())
                    if match:
                        macro = match.group(1)
                        value = match.group(2) if match.group(2) else "1"
                        # 주석 제거
                        value = re.sub(r'/\*.*?\*/', '', value).strip()
                        self.evaluator.add_define(macro, value)
                        if self.verbose:
                            print(f"  Defined: {macro}")
        except Exception as e:
            print(f"Error reading config.h: {e}")
    
    def add_common_defines(self):
        """일반적으로 정의되는 매크로들 추가"""
        if self.verbose:
            print("\n=== Adding common defines ===")
        
        common = [
            '__linux__', '__unix__', '__GNUC__',
            'SQLITE_THREADSAFE'
        ]
        
        for macro in common:
            if not self.evaluator.is_defined(macro):
                self.evaluator.add_define(macro)
                if self.verbose:
                    print(f"  Defined: {macro}")
    
    def find_source_files(self) -> List[Path]:
        """처리할 소스 파일 찾기"""
        source_files = []
        
        for ext in ['*.c', '*.h']:
            source_files.extend(self.sqlite_dir.glob(ext))
            source_files.extend(self.sqlite_dir.glob(f'src/{ext}'))
            source_files.extend(self.sqlite_dir.glob(f'ext/**/{ext}'))
        
        return list(set(source_files))
    
    def process_all_files(self, output_dir: Path = None, backup: bool = True):
        """모든 소스 파일 처리"""
        source_files = self.find_source_files()
        
        if self.verbose:
            print(f"\n=== Found {len(source_files)} source files ===")
            print("=== Conservative mode: Only certainly dead code will be commented ===")
        
        if backup and not output_dir:
            backup_dir = self.sqlite_dir / 'backup'
            backup_dir.mkdir(exist_ok=True)
            if self.verbose:
                print(f"Creating backup in {backup_dir}")
        
        commenter = ConservativeSourceCodeCommenter(self.evaluator, self.verbose)
        
        for src_file in source_files:
            if output_dir:
                rel_path = src_file.relative_to(self.sqlite_dir)
                out_file = output_dir / rel_path
                out_file.parent.mkdir(parents=True, exist_ok=True)
            elif backup:
                import shutil
                backup_file = backup_dir / src_file.name
                shutil.copy2(src_file, backup_file)
                out_file = src_file
            else:
                out_file = src_file
            
            commenter.process_file(src_file, out_file)


def main():
    parser = argparse.ArgumentParser(
        description='SQLite3 Conservative Dead Code Commenter - 보수적 버전',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
이 버전은 매우 보수적으로 작동합니다:
- typedef, struct, enum 등 중요한 정의는 절대 주석 처리하지 않음
- 복잡한 조건식(>, <, ==, != 등)은 평가하지 않고 유지
- 불확실한 경우 항상 코드를 유지
- 확실하게 사용되지 않는 코드만 주석 처리

예제:
  python3 sqlite_conservative_remover.py /path/to/sqlite --cflags="-D_GNU_SOURCE"
        """
    )
    
    parser.add_argument('sqlite_dir', type=str, help='SQLite 소스 디렉토리')
    parser.add_argument('--cflags', type=str, default='', help='CFLAGS')
    parser.add_argument('--output', type=str, default=None, help='출력 디렉토리')
    parser.add_argument('--no-backup', action='store_true', help='백업 안함')
    parser.add_argument('--skip-configure', action='store_true', help='config.h 건너뛰기')
    parser.add_argument('--verbose', '-v', action='store_true', help='상세 출력')
    
    args = parser.parse_args()
    
    sqlite_dir = Path(args.sqlite_dir)
    if not sqlite_dir.exists():
        print(f"Error: Directory not found: {sqlite_dir}")
        sys.exit(1)
    
    output_dir = Path(args.output) if args.output else None
    
    print("=" * 70)
    print("SQLite3 Conservative Dead Code Commenter")
    print("=" * 70)
    print(f"SQLite Directory: {sqlite_dir}")
    print(f"Mode: CONSERVATIVE (only certainly dead code will be removed)")
    print("=" * 70)
    
    remover = SQLiteConservativeDeadCodeRemover(sqlite_dir, args.verbose)
    
    if args.cflags:
        remover.extract_cflags_defines(args.cflags)
    
    if not args.skip_configure:
        remover.extract_configure_defines()
    
    remover.add_common_defines()
    
    remover.process_all_files(output_dir, backup=not args.no_backup)
    
    print("\n" + "=" * 70)
    print("Processing complete!")
    print("Only certainly unused code has been commented.")
    print("=" * 70)


if __name__ == '__main__':
    main()