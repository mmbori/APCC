# APCC : Automatic Program Context Concretization

# Project Build Environment

본 프로젝트는 다음 환경에서 테스트되었습니다.

## System Requirements

### Operating System
- **Ubuntu 22.04.5 LTS**
- **Architecture:** x86-64 (x86_64-pc-linux-gnu)

### Compilers
- **GCC/G++:** version 11.4.0
```bash
  gcc --version   # 11.4.0
  g++ --version   # 11.4.0
  cc --version    # 11.4.0
  c++ --version   # 11.4.0
```

- **Clang:** version 14.0.0-1ubuntu1.1
```bash
  clang --version   # Ubuntu clang version 14.0.0
```

### Build Tools
- **GNU Make:** version 4.3
```bash
  make --version
```

- **CMake:** version 3.22.2
```bash
  cmake --version
```

- **Autotools:**
  - **autoconf:** version 2.71
  - **automake:** version 1.16.5
  - **libtool:** version 2.4.7

- **GNU Binutils:** version 2.38
```bash
  ld --version   # GNU ld (GNU Binutils for Ubuntu) 2.38
```

### Additional Dependencies
- **Perl:** version 5.34.0 (for tcpdump tests)

## Installation

Ubuntu 22.04에서 필요한 패키지 설치:
```bash
sudo apt-get update
sudo apt-get install -y \
  build-essential \
  gcc-11 g++-11 \
  clang-14 \
  make \
  cmake \
  autoconf automake libtool \
  pkg-config \
  perl
```

## Verification

환경 확인:
```bash
# OS 버전
lsb_release -a

# 컴파일러 버전
gcc --version
clang --version

# 빌드 도구 버전
make --version
cmake --version
autoconf --version
automake --version
```

---

> **Note:** 다른 버전의 Ubuntu나 컴파일러를 사용할 경우 빌드 결과가 다를 수 있습니다.
