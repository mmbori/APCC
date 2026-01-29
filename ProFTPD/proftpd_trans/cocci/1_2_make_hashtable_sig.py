# import json
# import argparse
# from pathlib import Path

# def generate_c_runtime_code(json_file_path, output_c_path, output_h_path):
#     """
#     JSON 파일에서 함수 목록을 읽어 런타임 시그니처 생성 C 코드 작성
    
#     Args:
#         json_file_path: 입력 JSON 파일 경로
#         output_c_path: 출력 C 소스 파일 경로
#         output_h_path: 출력 헤더 파일 경로
#     """
#     # JSON 파일 읽기
#     with open(json_file_path, 'r', encoding='utf-8') as f:
#         data = json.load(f)
    
#     # 모든 assigned_fn 수집 (중복 제거)
#     all_functions = set()
#     tables = data if isinstance(data, list) else [data]
    
#     for table_info in tables:
#         if 'assigned_fn' in table_info:
#             all_functions.update(table_info['assigned_fn'])
    
#     functions = sorted(all_functions)
    
#     print(f"\n총 {len(functions)}개의 함수에 대한 시그니처 코드 생성\n")
    
#     # 헤더 파일 생성
#     with open(output_h_path, 'w', encoding='utf-8') as f:
#         f.write("#ifndef SIGNATURE_TABLE_H\n")
#         f.write("#define SIGNATURE_TABLE_H\n\n")
#         f.write("#include <stdint.h>\n\n")
#         f.write("/**\n")
#         f.write(" * Runtime signature table\n")
#         f.write(" * Signatures are generated at program startup for security\n")
#         f.write(" */\n\n")
        
#         # 각 함수에 대한 extern 변수 선언
#         for func_name in functions:
#             var_name = f"sig_{func_name}"
#             f.write(f"extern uint32_t {var_name};\n")
        
#         f.write("\n/**\n")
#         f.write(" * Initialize signature table\n")
#         f.write(" * Must be called once at program startup before using any signatures\n")
#         f.write(" */\n")
#         f.write("void signature_init(void);\n\n")
        
#         f.write("#endif /* SIGNATURE_TABLE_H */\n")
    
#     print(f"✓ 헤더 파일 생성: {output_h_path}")
    
#     # C 소스 파일 생성
#     with open(output_c_path, 'w', encoding='utf-8') as f:
#         f.write(f'#include "{Path(output_h_path).name}"\n')
#         f.write("#include <stdlib.h>\n")
#         f.write("#include <time.h>\n")
#         f.write("#include <string.h>\n\n")
        
#         f.write("/* Signature variables */\n")
#         for func_name in functions:
#             var_name = f"sig_{func_name}"
#             f.write(f"uint32_t {var_name} = 0;\n")
        
#         f.write("\n/* Hash set for collision detection */\n")
#         f.write(f"#define HASH_SIZE {max(len(functions) * 2, 256)}\n")
#         f.write("static uint32_t used_signatures[HASH_SIZE];\n")
#         f.write("static int used_count = 0;\n\n")
        
#         f.write("/* Check if signature is already used */\n")
#         f.write("static int is_signature_used(uint32_t sig) {\n")
#         f.write("    int i;\n")
#         f.write("    for (i = 0; i < used_count; i++) {\n")
#         f.write("        if (used_signatures[i] == sig) {\n")
#         f.write("            return 1;\n")
#         f.write("        }\n")
#         f.write("    }\n")
#         f.write("    return 0;\n")
#         f.write("}\n\n")
        
#         f.write("/* Generate unique random 32-bit signature */\n")
#         f.write("static uint32_t generate_unique_signature(void) {\n")
#         f.write("    uint32_t sig;\n")
#         f.write("    do {\n")
#         f.write("        /* Generate full 32-bit random number */\n")
#         f.write("        sig = ((uint32_t)rand() << 16) | (rand() & 0xFFFF);\n")
#         f.write("    } while (is_signature_used(sig) || sig == 0);\n")
#         f.write("    \n")
#         f.write("    if (used_count < HASH_SIZE) {\n")
#         f.write("        used_signatures[used_count++] = sig;\n")
#         f.write("    }\n")
#         f.write("    return sig;\n")
#         f.write("}\n\n")
        
#         f.write("/* Initialize all signatures at runtime */\n")
#         f.write("void signature_init(void) {\n")
#         f.write("    /* Seed random number generator with current time */\n")
#         f.write("    srand((unsigned int)time(NULL));\n")
#         f.write("    used_count = 0;\n")
#         f.write("    memset(used_signatures, 0, sizeof(used_signatures));\n\n")
        
#         f.write("    /* Generate unique signature for each function */\n")
#         for func_name in functions:
#             var_name = f"sig_{func_name}"
#             f.write(f"    {var_name} = generate_unique_signature();\n")
        
#         f.write("}\n")
    
#     print(f"✓ C 소스 파일 생성: {output_c_path}")
#     print(f"\n생성된 함수 시그니처 변수:")
#     for i, func_name in enumerate(functions[:10], 1):
#         print(f"  {i}. sig_{func_name}")
#     if len(functions) > 10:
#         print(f"  ... 외 {len(functions) - 10}개")


# def generate_usage_example(output_path):
#     """사용 예시 C 코드 생성"""
#     with open(output_path, 'w', encoding='utf-8') as f:
#         f.write("#include <stdio.h>\n")
#         f.write("#include \"signature_table.h\"\n\n")
#         f.write("int main(void) {\n")
#         f.write("    /* Initialize signature table at program startup */\n")
#         f.write("    signature_init();\n\n")
#         f.write("    /* Now signatures are ready to use */\n")
#         f.write("    printf(\"Signature initialized!\\n\");\n")
#         f.write("    printf(\"Example: sig value = 0x%08X\\n\", sig_add_anonymous);\n\n")
#         f.write("    /* Use signatures for function pointer validation, etc. */\n\n")
#         f.write("    return 0;\n")
#         f.write("}\n")
    
#     print(f"✓ 사용 예시 생성: {output_path}")


# def main():
#     parser = argparse.ArgumentParser(
#         description='런타임 시그니처 테이블 C 코드 생성기',
#         formatter_class=argparse.RawDescriptionHelpFormatter,
#         epilog="""
# 사용 예시:
#   %(prog)s -i proftpd_hashtable.json
#   %(prog)s -i input.json -o mysig
#   %(prog)s -i input.json -o mysig --example

# 생성된 C 코드를 프로그램에 추가하고 main()에서 signature_init() 호출
#         """
#     )
    
#     parser.add_argument('-i', '--input', 
#                         required=True,
#                         help='입력 JSON 파일 경로')
    
#     parser.add_argument('-o', '--output',
#                         default='signature_table',
#                         help='출력 파일명 (확장자 제외, 기본값: signature_table)')
    
#     parser.add_argument('--example',
#                         action='store_true',
#                         help='사용 예시 코드(example_usage.c) 생성')
    
#     args = parser.parse_args()
    
#     # 입력 파일 검증
#     if not Path(args.input).exists():
#         print(f"❌ 오류: '{args.input}' 파일을 찾을 수 없습니다.")
#         return 1
    
#     try:
#         # C 코드 생성
#         c_file = f"{args.output}.c"
#         h_file = f"{args.output}.h"
        
#         generate_c_runtime_code(args.input, c_file, h_file)
        
#         # 사용 예시 생성
#         if args.example:
#             generate_usage_example("example_usage.c")
        
#         print("\n" + "="*60)
#         print("✅ 생성 완료!")
#         print("="*60)
#         print(f"\n프로젝트에 추가할 파일:")
#         print(f"  - {h_file}")
#         print(f"  - {c_file}")
#         print(f"\n사용 방법:")
#         print(f"  1. 두 파일을 프로젝트에 추가")
#         print(f"  2. main() 함수 시작 부분에 signature_init() 호출")
#         print(f"  3. sig_함수명 변수로 시그니처 사용")
#         print(f"\n  예시:")
#         print(f"    signature_init();")
#         print(f"    uint32_t my_sig = sig_add_anonymous;")
        
#     except json.JSONDecodeError as e:
#         print(f"❌ JSON 파싱 오류: {e}")
#         return 1
#     except Exception as e:
#         print(f"❌ 오류: {e}")
#         return 1
    
#     return 0


# if __name__ == "__main__":
#     exit(main())

#!/usr/bin/env python3
"""
컴파일 타임 시그니처 테이블 생성 (헤더 파일만)
"""

import json
import argparse
import hashlib
from pathlib import Path

def generate_compile_time_signatures(json_file_path, output_h_path):
    """
    JSON 파일에서 함수 목록을 읽어 컴파일 타임 const 시그니처 생성
    
    Args:
        json_file_path: 입력 JSON 파일 경로
        output_h_path: 출력 헤더 파일 경로
    """
    # JSON 파일 읽기
    with open(json_file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    # 모든 assigned_fn 수집 (중복 제거)
    all_functions = set()
    tables = data if isinstance(data, list) else [data]
    
    for table_info in tables:
        if 'assigned_fn' in table_info:
            all_functions.update(table_info['assigned_fn'])
    
    functions = sorted(all_functions)
    
    print(f"\n총 {len(functions)}개의 함수에 대한 시그니처 생성\n")
    
    # 시그니처 생성 (해시 기반 의사 난수, 충돌 회피)
    used_signatures = set()
    signatures = {}
    
    for func_name in functions:
        # 함수 이름을 해시하여 의사 난수 생성
        hash_input = f"{func_name}_signature_v1"
        hash_obj = hashlib.sha256(hash_input.encode())
        hash_bytes = hash_obj.digest()
        
        # 32비트 값 추출
        base_sig = int.from_bytes(hash_bytes[:4], byteorder='big')
        
        # 충돌 회피
        sig = base_sig
        counter = 0
        while sig in used_signatures or sig == 0:
            counter += 1
            hash_input = f"{func_name}_signature_v1_{counter}"
            hash_obj = hashlib.sha256(hash_input.encode())
            hash_bytes = hash_obj.digest()
            sig = int.from_bytes(hash_bytes[:4], byteorder='big')
        
        used_signatures.add(sig)
        signatures[func_name] = sig
    
    # 헤더 파일 생성 (static const로 직접 초기화)
    with open(output_h_path, 'w', encoding='utf-8') as f:
        f.write("#ifndef SIGNATURE_TABLE_H\n")
        f.write("#define SIGNATURE_TABLE_H\n\n")
        f.write("#include <stdint.h>\n\n")
        f.write("/**\n")
        f.write(" * Compile-time signature table\n")
        f.write(" * Each signature is a unique constant value\n")
        f.write(" * Generated from function name hashes\n")
        f.write(" * No initialization required - values are compile-time constants\n")
        f.write(" */\n\n")
        
        # 각 함수에 대한 static const 변수 정의
        for func_name in functions:
            var_name = f"sig_{func_name}"
            sig_value = signatures[func_name]
            f.write(f"#define {var_name} 0x{sig_value:08X}U\n")
        
        f.write("\n#endif /* SIGNATURE_TABLE_H */\n")
    
    print(f"✓ 헤더 파일 생성: {output_h_path}")
    print(f"✓ C 소스 파일 불필요 (헤더만 include하면 사용 가능)")
    print(f"\n생성된 함수 시그니처 (const 값):")
    for i, func_name in enumerate(sorted(functions)[:10], 1):
        print(f"  {i}. sig_{func_name} = 0x{signatures[func_name]:08X}")
    if len(functions) > 10:
        print(f"  ... 외 {len(functions) - 10}개")
    
    return signatures


def generate_usage_example(output_path):
    """사용 예시 C 코드 생성"""
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write("#include <stdio.h>\n")
        f.write("#include \"signature_table.h\"\n\n")
        f.write("int main(void) {\n")
        f.write("    /* No initialization needed - values are compile-time constants */\n")
        f.write("    printf(\"Signatures are ready to use!\\n\");\n")
        f.write("    printf(\"Example: sig_add_anonymous = 0x%08X\\n\", sig_add_anonymous);\n\n")
        f.write("    /* Use signatures in switch-case statements */\n")
        f.write("    uint32_t sig = sig_add_anonymous;\n")
        f.write("    switch (sig) {\n")
        f.write("        case sig_add_anonymous:\n")
        f.write("            printf(\"Matched add_anonymous\\n\");\n")
        f.write("            break;\n")
        f.write("        default:\n")
        f.write("            printf(\"Unknown signature\\n\");\n")
        f.write("            break;\n")
        f.write("    }\n\n")
        f.write("    return 0;\n")
        f.write("}\n")
    
    print(f"✓ 사용 예시 생성: {output_path}")


def main():
    parser = argparse.ArgumentParser(
        description='컴파일 타임 시그니처 테이블 생성기 (헤더 파일만)',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
특징:
  - static const로 컴파일 타임에 초기화
  - 런타임 초기화 불필요 (signature_init() 함수 없음)
  - .c 파일 불필요, 헤더만 include하면 사용 가능
  - switch-case 문에서 사용 가능 (컴파일 타임 상수)

사용 예시:
  %(prog)s -i proftpd_hashtable.json
  %(prog)s -i input.json -o mysig
  %(prog)s -i input.json -o mysig --example
        """
    )
    
    parser.add_argument('-i', '--input', 
                        required=True,
                        help='입력 JSON 파일 경로')
    
    parser.add_argument('-o', '--output',
                        default='signature_table',
                        help='출력 파일명 (확장자 제외, 기본값: signature_table)')
    
    parser.add_argument('--example',
                        action='store_true',
                        help='사용 예시 코드(example_usage.c) 생성')
    
    args = parser.parse_args()
    
    # 입력 파일 검증
    if not Path(args.input).exists():
        print(f"❌ 오류: '{args.input}' 파일을 찾을 수 없습니다.")
        return 1
    
    try:
        # 헤더 파일만 생성
        h_file = f"{args.output}.h"
        
        generate_compile_time_signatures(args.input, h_file)
        
        # 사용 예시 생성
        if args.example:
            generate_usage_example("example_usage.c")
        
        print("\n" + "="*60)
        print("✅ 생성 완료!")
        print("="*60)
        print(f"\n프로젝트에 추가할 파일:")
        print(f"  - {h_file}")
        print(f"\n사용 방법:")
        print(f"  1. 헤더 파일을 프로젝트에 추가")
        print(f"  2. #include \"{h_file}\"로 사용")
        print(f"  3. sig_함수명으로 시그니처 접근 (초기화 불필요)")
        print(f"\n장점:")
        print(f"  ✓ 런타임 초기화 불필요")
        print(f"  ✓ switch-case 문에서 사용 가능")
        print(f"  ✓ 컴파일 타임 상수로 최적화")
        print(f"\n예시:")
        print(f"    #include \"{h_file}\"")
        print(f"    uint32_t sig = sig_add_anonymous;  // 바로 사용 가능")
        print(f"    switch(sig) {{")
        print(f"        case sig_add_anonymous: ...")
        print(f"    }}")
        
    except json.JSONDecodeError as e:
        print(f"❌ JSON 파싱 오류: {e}")
        return 1
    except Exception as e:
        print(f"❌ 오류: {e}")
        return 1
    
    return 0


if __name__ == "__main__":
    exit(main())