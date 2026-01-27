# lighttpd 1.4 빌드 가이드

## 빌드 방법

### 1. 빌드 환경 준비
```bash
make distclean
bash ./autogen.sh
```

### 2. 환경 변수 설정
```bash
export LIGHTTPD_STATIC=yes
```

### 3. Configure
```bash
./configure CFLAGS="-O2 -g -fno-omit-frame-pointer"
```

### 4. 컴파일
```bash
make
```

## 빌드 옵션 설명

| 옵션 | 값 | 설명 |
|------|-----|------|
| `LIGHTTPD_STATIC` | `yes` | 정적 링크 빌드 |
| `CFLAGS` | `-O2` | 최적화 레벨 2 |
|  | `-g` | 디버그 심볼 포함 |
|  | `-fno-omit-frame-pointer` | 프레임 포인터 유지 (디버깅/프로파일링용) |

## 빌드 결과

빌드가 성공하면 실행 파일이 생성됩니다:
```bash
./src/lighttpd -v  # 버전 확인
./src/lighttpd -h  # 도움말 확인
```

## 실행 방법
```bash
# 설정 파일 지정하여 실행
./src/lighttpd -f /path/to/lighttpd.conf

# 설정 파일 문법 검사
./src/lighttpd -t -f /path/to/lighttpd.conf
```
