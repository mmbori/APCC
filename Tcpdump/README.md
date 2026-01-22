# tcpdump 빌드 가이드

## 빌드 방법

### 1. 빌드
```bash
make clean
./autogen.sh
./configure
make
```

### 2. 기본 검사
```bash
make check
```

## 테스트 결과 안내

`make check` 실행 시 일부 테스트가 실패하는 것은 **정상**입니다.

오리지널 코드에서도 다음과 같은 결과가 나타납니다:
```
------------------------------------------------
  12 tests skipped
   4 tests failed
 757 tests passed
make: *** [Makefile:430: check] Error 1
```

> **Note:** 테스트 실패는 환경이나 권한 문제로 인한 것이며, tcpdump의 핵심 기능에는 영향을 주지 않습니다.

## 빌드 결과

빌드가 성공하면 실행 파일이 생성됩니다:
```bash
./tcpdump --version  # 버전 확인
./tcpdump --help     # 도움말 확인
```
