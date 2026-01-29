import json
import argparse
from pathlib import Path

def parse_functions_from_json(json_file_path):
    """
    JSON 파일에서 assigned_fn을 추출하여 함수 목록 반환
    
    Args:
        json_file_path: 입력 JSON 파일 경로
    
    Returns:
        set: 중복 제거된 함수명 집합
    """
    with open(json_file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    all_functions = set()
    tables = data if isinstance(data, list) else [data]
    
    for table_info in tables:
        if 'assigned_fn' in table_info:
            all_functions.update(table_info['assigned_fn'])
    
    return all_functions


def generate_signature_runtime_code(functions, output_c_path, output_h_path):
    """
    런타임 시그니처 초기화 코드 생성 (signature_table.c/h)
    
    Args:
        functions: 함수명 리스트
        output_c_path: 출력 C 파일 경로
        output_h_path: 출력 헤더 파일 경로
    """
    functions = sorted(functions)
    
    # 헤더 파일 생성
    with open(output_h_path, 'w', encoding='utf-8') as f:
        f.write("#ifndef SIGNATURE_TABLE_H\n")
        f.write("#define SIGNATURE_TABLE_H\n\n")
        f.write("#include <stdint.h>\n\n")
        f.write("/* Runtime signature variables */\n")
        
        for func_name in functions:
            var_name = f"sig_{func_name}"
            f.write(f"#define {var_name};\n")
        
        f.write("\n/* Initialize all signatures at runtime */\n")
        f.write("void signature_init(void);\n\n")
        f.write("#endif /* SIGNATURE_TABLE_H */\n")
    
    print(f"✓ {output_h_path} 생성")
    
    # C 소스 파일 생성
    with open(output_c_path, 'w', encoding='utf-8') as f:
        f.write(f'#include "{Path(output_h_path).name}"\n')
        f.write("#include <stdlib.h>\n")
        f.write("#include <time.h>\n")
        f.write("#include <string.h>\n\n")
        
        f.write("/* Signature variables */\n")
        for func_name in functions:
            var_name = f"sig_{func_name}"
            f.write(f"uint32_t {var_name} = 0;\n")
        
        f.write(f"\n#define HASH_SIZE {max(len(functions) * 2, 256)}\n")
        f.write("static uint32_t used_signatures[HASH_SIZE];\n")
        f.write("static int used_count = 0;\n\n")
        
        f.write("static int is_signature_used(uint32_t sig) {\n")
        f.write("    int i;\n")
        f.write("    for (i = 0; i < used_count; i++) {\n")
        f.write("        if (used_signatures[i] == sig) return 1;\n")
        f.write("    }\n")
        f.write("    return 0;\n")
        f.write("}\n\n")
        
        f.write("static uint32_t generate_unique_signature(void) {\n")
        f.write("    uint32_t sig;\n")
        f.write("    do {\n")
        f.write("        sig = ((uint32_t)rand() << 16) | (rand() & 0xFFFF);\n")
        f.write("    } while (is_signature_used(sig) || sig == 0);\n")
        f.write("    if (used_count < HASH_SIZE) {\n")
        f.write("        used_signatures[used_count++] = sig;\n")
        f.write("    }\n")
        f.write("    return sig;\n")
        f.write("}\n\n")
        
        f.write("void signature_init(void) {\n")
        f.write("    srand((unsigned int)time(NULL));\n")
        f.write("    used_count = 0;\n")
        f.write("    memset(used_signatures, 0, sizeof(used_signatures));\n\n")
        
        for func_name in functions:
            var_name = f"sig_{func_name}"
            f.write(f"    {var_name} = generate_unique_signature();\n")
        
        f.write("}\n")
    
    print(f"✓ {output_c_path} 생성")


def generate_modified_module_code(functions, output_path):
    """
    수정된 pr_module_call 함수가 포함된 코드 생성
    
    Args:
        functions: 함수명 리스트
        output_path: 출력 파일 경로
    """
    functions = sorted(functions)
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write("/* Modified pr_module_call with signature-based dispatch */\n")
        f.write('#include "conf.h"\n')
        f.write('#include "signature_table.h"\n\n')
        
        f.write("modret_t *pr_module_call(module *m, unsigned int signature, modret_t *(*func)(cmd_rec *), \n")
        f.write("    cmd_rec *cmd) {\n")
        f.write("  modret_t *res = NULL;\n")
        f.write("  module *prev_module = curr_module;\n\n")
        
        f.write("  if (m == NULL || cmd == NULL) {\n")
        f.write("    errno = EINVAL;\n")
        f.write("    return NULL;\n")
        f.write("  }\n\n")
        
        f.write("  if (cmd->tmp_pool == NULL) {\n")
        f.write("    cmd->tmp_pool = make_sub_pool(cmd->pool);\n")
        f.write('    pr_pool_tag(cmd->tmp_pool, "Module call tmp_pool");\n')
        f.write("  }\n\n")
        
        f.write("  curr_module = m;\n\n")
        
        # Switch-case 생성
        f.write("  /* Signature-based function dispatch */\n")
        f.write("  switch (signature) {\n")
        
        for func_name in functions:
            sig_var = f"sig_{func_name}"
            f.write(f"    case {sig_var}:\n")
            f.write(f"      res = {func_name}(cmd);\n")
            f.write(f"      break;\n\n")
        
        f.write("    default:\n")
        f.write('      pr_log_pri(PR_LOG_WARNING, "Unknown function signature: 0x%08X", signature);\n')
        # f.write("      errno = ENOSYS;\n")
        f.write("      res = func(cmd);\n")
        f.write("      break;\n")
        f.write("  }\n\n")
        
        f.write("  curr_module = prev_module;\n")
        f.write("  return res;\n")
        f.write("}\n")
    
    print(f"✓ {output_path} 생성")


def generate_example_usage(functions, output_path):
    """
    사용 예시 코드 생성
    
    Args:
        functions: 함수명 리스트
        output_path: 출력 파일 경로
    """
    example_func = sorted(functions)[0] if functions else "example_function"
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write("/* Example usage of signature-based module call */\n")
        f.write('#include "conf.h"\n')
        f.write('#include "signature_table.h"\n\n')
        
        f.write("int main(void) {\n")
        f.write("  module *m;\n")
        f.write("  cmd_rec *cmd;\n")
        f.write("  modret_t *result;\n\n")
        
        f.write("  /* Initialize signatures at startup */\n")
        f.write("  signature_init();\n\n")
        
        f.write("  /* Example: Call module function using signature */\n")
        f.write(f"  result = pr_module_call(m, sig_{example_func}, cmd);\n\n")
        
        f.write("  return 0;\n")
        f.write("}\n")
    
    print(f"✓ {output_path} 생성")


def generate_header_patch(functions, output_path):
    """
    modules.h에 추가할 함수 선언 생성
    
    Args:
        functions: 함수명 리스트
        output_path: 출력 파일 경로
    """
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write("/* Add this to modules.h or appropriate header file */\n\n")
        f.write("/* Modified function signature */\n")
        f.write("modret_t *pr_module_call(module *m, uint32_t signature, cmd_rec *cmd);\n\n")
        
        f.write("/* Function declarations for switch-case */\n")
        for func_name in sorted(functions):
            f.write(f"modret_t *{func_name}(cmd_rec *cmd);\n")
    
    print(f"✓ {output_path} 생성")


def main():
    parser = argparse.ArgumentParser(
        description='Signature 기반 함수 디스패치 코드 생성기',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
사용 예시:
  %(prog)s -i proftpd_hashtable.json
  %(prog)s -i input.json -o custom_sig
  %(prog)s -i input.json --all

생성 파일:
  - signature_table.c/h : 런타임 시그니처 초기화
  - modules_modified.c  : 수정된 pr_module_call 함수
  - example_usage.c     : 사용 예시
  - header_patch.txt    : 헤더 파일에 추가할 선언
        """
    )
    
    parser.add_argument('-i', '--input',
                        required=True,
                        help='입력 JSON 파일 경로')
    
    parser.add_argument('-o', '--output',
                        default='signature_table',
                        help='시그니처 테이블 파일명 (기본: signature_table)')
    
    parser.add_argument('-m', '--module',
                        default='modules_modified.c',
                        help='수정된 모듈 코드 파일명 (기본: modules_modified.c)')
    
    parser.add_argument('--all',
                        action='store_true',
                        help='모든 파일 생성 (예시, 헤더 패치 포함)')
    
    args = parser.parse_args()
    
    # 입력 파일 검증
    if not Path(args.input).exists():
        print(f"❌ 오류: '{args.input}' 파일을 찾을 수 없습니다.")
        return 1
    
    try:
        print(f"\n📖 JSON 파싱 중: {args.input}")
        functions = parse_functions_from_json(args.input)
        print(f"✓ {len(functions)}개 함수 발견\n")
        
        # 시그니처 테이블 생성
        print("📝 시그니처 테이블 생성 중...")
        c_file = f"{args.output}.c"
        h_file = f"{args.output}.h"
        generate_signature_runtime_code(functions, c_file, h_file)
        print()
        
        # 수정된 모듈 코드 생성
        print("📝 수정된 pr_module_call 생성 중...")
        generate_modified_module_code(functions, args.module)
        print()
        
        # 추가 파일들
        if args.all:
            print("📝 추가 파일 생성 중...")
            generate_example_usage(functions, "example_usage.c")
            generate_header_patch(functions, "header_patch.txt")
            print()
        
        # 요약 출력
        print("=" * 60)
        print("✅ 생성 완료!")
        print("=" * 60)
        print(f"\n생성된 파일:")
        print(f"  1. {h_file} - 시그니처 변수 선언")
        print(f"  2. {c_file} - 시그니처 초기화 구현")
        print(f"  3. {args.module} - 수정된 pr_module_call")
        
        if args.all:
            print(f"  4. example_usage.c - 사용 예시")
            print(f"  5. header_patch.txt - 헤더 파일 패치")
        
        print(f"\n적용 방법:")
        print(f"  1. Makefile.in에 {c_file} 추가")
        print(f"  2. 기존 modules.c의 pr_module_call을 {args.module}의 것으로 교체")
        print(f"  3. main()에서 signature_init() 호출")
        print(f"  4. 함수 호출 시 func 대신 signature 전달")
        
        print(f"\n함수 목록 ({len(functions)}개):")
        for i, func in enumerate(sorted(functions)[:10], 1):
            print(f"  {i}. {func}")
        if len(functions) > 10:
            print(f"  ... 외 {len(functions) - 10}개")
        
    except json.JSONDecodeError as e:
        print(f"❌ JSON 파싱 오류: {e}")
        return 1
    except Exception as e:
        print(f"❌ 오류: {e}")
        import traceback
        traceback.print_exc()
        return 1
    
    return 0


if __name__ == "__main__":
    exit(main())