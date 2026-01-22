# Memcached 빌드 가이드

## 빌드 방법

### 1. 빌드 환경 준비
```bash
make clean
./autogen.sh
```

### 2. Configure
```bash
./configure \
  CFLAGS="-g -O0 -fno-omit-frame-pointer" \
  --disable-extstore \
  --disable-seccomp \
  --disable-tls \
  --disable-sasl \
  --disable-sasl-pwdb \
  --disable-docs \
  --disable-coverage \
  --disable-werror
```

### 3. 컴파일 및 테스트
```bash
# 컴파일
make -j"$(nproc)"

# 테스트
make test
```

## Configure 옵션 설명

| 옵션 | 설명 |
|------|------|
| `CFLAGS="-g -O0 -fno-omit-frame-pointer"` | 디버깅 정보 포함, 최적화 비활성화 |
| `--disable-extstore` | 외부 스토리지 지원 비활성화 |
| `--disable-seccomp` | seccomp 보안 기능 비활성화 |
| `--disable-tls` | TLS/SSL 지원 비활성화 |
| `--disable-sasl` | SASL 인증 비활성화 |
| `--disable-sasl-pwdb` | SASL 패스워드 DB 비활성화 |
| `--disable-docs` | 문서 빌드 비활성화 |
| `--disable-coverage` | 코드 커버리지 비활성화 |
| `--disable-werror` | 경고를 에러로 처리하지 않음 |

## 빌드 결과

빌드가 성공하면 실행 파일이 생성됩니다:
```bash
./memcached -h  # 도움말 확인
```
