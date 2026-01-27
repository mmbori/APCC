# Nginx 빌드 가이드

## 빌드 방법

### 1. Configure
```bash
auto/configure \
  --with-cc-opt='-g -O2 -fno-omit-frame-pointer -w' \
  --without-http_charset_module \
  --without-http_gzip_module \
  --without-http_rewrite_module
```

### 2. 컴파일
```bash
make -j"$(nproc)"
```

## Configure 옵션 설명

### 컴파일 옵션
| CFLAGS 옵션 | 설명 |
|-------------|------|
| `-g` | 디버그 심볼 포함 |
| `-O2` | 최적화 레벨 2 |
| `-fno-omit-frame-pointer` | 프레임 포인터 유지 (디버깅/프로파일링용) |
| `-w` | 모든 경고 메시지 억제 |

### 비활성화된 모듈
| 옵션 | 설명 |
|------|------|
| `--without-http_charset_module` | charset 모듈 제외 |
| `--without-http_gzip_module` | gzip 압축 모듈 제외 |
| `--without-http_rewrite_module` | rewrite 모듈 제외 |

## 빌드 결과

빌드가 성공하면 실행 파일이 생성됩니다:
```bash
./objs/nginx -v  # 버전 확인
./objs/nginx -V  # 빌드 옵션 확인
./objs/nginx -t  # 설정 파일 문법 검사
```

## 실행 방법
```bash
# 기본 설정 파일로 실행
./objs/nginx

# 특정 설정 파일 지정
./objs/nginx -c /path/to/nginx.conf

# 설정 파일 테스트
./objs/nginx -t -c /path/to/nginx.conf
```
