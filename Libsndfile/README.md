# libsndfile 빌드 가이드

## 빌드 방법

### 1. 빌드 디렉토리 생성 및 설정
```bash
rm -rf build-prog
cmake -S . -B build-prog \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_FLAGS_RELEASE="-O2 -g" \
  -DCMAKE_CXX_FLAGS_RELEASE="-O2 -g" \
  -DBUILD_SHARED_LIBS=OFF \
  -DBUILD_PROGRAMS=ON \
  -DBUILD_EXAMPLES=OFF \
  -DBUILD_TESTING=ON \
  -DENABLE_EXTERNAL_LIBS=OFF \
  -DENABLE_MPEG=OFF
```

### 2. 컴파일
```bash
cmake --build build-prog -j"$(nproc)"
```

### 3. 테스트
```bash
ctest --test-dir build-prog --output-on-failure -j"$(nproc)"
```

## CMake 옵션 설명

| 옵션 | 값 | 설명 |
|------|-----|------|
| `CMAKE_BUILD_TYPE` | `Release` | 릴리즈 빌드 |
| `CMAKE_C_FLAGS_RELEASE` | `-O2 -g` | 최적화 + 디버그 심볼 |
| `CMAKE_CXX_FLAGS_RELEASE` | `-O2 -g` | 최적화 + 디버그 심볼 |
| `BUILD_SHARED_LIBS` | `OFF` | 정적 라이브러리 빌드 |
| `BUILD_PROGRAMS` | `ON` | 프로그램 빌드 |
| `BUILD_EXAMPLES` | `OFF` | 예제 빌드 안 함 |
| `BUILD_TESTING` | `ON` | 테스트 빌드 |
| `ENABLE_EXTERNAL_LIBS` | `OFF` | 외부 라이브러리 지원 비활성화 |
| `ENABLE_MPEG` | `OFF` | MPEG 지원 비활성화 |

## 빌드 결과

빌드가 성공하면 다음 경로에 실행 파일이 생성됩니다:
```bash
ls build-prog/programs/  # sndfile 유틸리티 프로그램들
ls build-prog/src/        # 라이브러리 파일
```
