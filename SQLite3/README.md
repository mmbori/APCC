# SQLite3 빌드 가이드

## 빌드 방법

### 1. 빌드 환경 준비
```bash
make clean
```

### 2. Configure 및 컴파일
```bash
CFLAGS="-g -O2 -fno-omit-frame-pointer -fno-inline -w" ./configure
make -j"$(nproc)"
```

## 빌드 옵션 설명

| CFLAGS 옵션 | 설명 |
|-------------|------|
| `-g` | 디버그 심볼 포함 |
| `-O2` | 최적화 레벨 2 |
| `-fno-omit-frame-pointer` | 프레임 포인터 유지 (디버깅/프로파일링용) |
| `-fno-inline` | 함수 인라이닝 비활성화 |
| `-w` | 모든 경고 메시지 억제 |

## 기본 검사
```bash
./sqlite3 test.db < sqlite_test.sql
```

### 검사 방법 설명

- `test.db`: 테스트용 SQLite 데이터베이스 파일
- `sqlite_test.sql`: 테스트 SQL 명령어가 포함된 파일
- 표준 입력으로 SQL 파일을 실행하여 동작 확인

## 빌드 결과

빌드가 성공하면 실행 파일이 생성됩니다:
```bash
./sqlite3 --version  # 버전 확인
./sqlite3 --help     # 도움말 확인
```

## 기본 사용법
```bash
# 대화형 모드로 실행
./sqlite3

# 특정 데이터베이스 열기
./sqlite3 mydata.db

# SQL 파일 실행
./sqlite3 mydata.db < script.sql

# SQL 명령어 직접 실행
./sqlite3 mydata.db "SELECT * FROM table;"
```
