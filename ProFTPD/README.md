# ProFTPD 빌드 가이드

## 빌드 방법

### 1. Configure
```bash
CFLAGS="-g -O2 -fno-omit-frame-pointer" \
LDFLAGS="-static -w" \
./configure \
  --enable-devel \
  --enable-static \
  --enable-tests
```

### 2. 컴파일
```bash
make CFLAGS="-w"
```

## Configure 옵션 설명

### 컴파일 옵션
| CFLAGS 옵션 | 설명 |
|-------------|------|
| `-g` | 디버그 심볼 포함 |
| `-O2` | 최적화 레벨 2 |
| `-fno-omit-frame-pointer` | 프레임 포인터 유지 (디버깅/프로파일링용) |

### 링크 옵션
| LDFLAGS 옵션 | 설명 |
|--------------|------|
| `-static` | 정적 링크 |
| `-w` | 링크 경고 메시지 억제 |

### Configure 플래그
| 옵션 | 설명 |
|------|------|
| `--enable-devel` | 개발자 모드 활성화 |
| `--enable-static` | 정적 빌드 활성화 |
| `--enable-tests` | 테스트 빌드 활성화 |

## 빌드 결과

빌드가 성공하면 실행 파일이 생성됩니다:
```bash
./proftpd -v  # 버전 확인
./proftpd -h  # 도움말 확인
```

## 실행 방법
```bash
# 설정 파일 문법 검사
./proftpd -t -c /path/to/proftpd.conf

# 디버그 모드로 실행
./proftpd -n -d 5 -c /path/to/proftpd.conf

# 백그라운드 실행
./proftpd -c /path/to/proftpd.conf
```
