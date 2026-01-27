# libjpeg-turbo 빌드 가이드

## 빌드 방법

### 1. 빌드 디렉토리 생성 및 설정
```bash
rm -rf build-min
cmake -S . -B build-min -G "Unix Makefiles" \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DENABLE_SHARED=0 \
  -DENABLE_STATIC=1 \
  -DWITH_JAVA=0
```

### 2. 컴파일
```bash
cmake --build build-min -j"$(nproc)"
```

### 3. 테스트
```bash
cd build-min
make test
cd ..
```

## CMake 옵션 설명

| 옵션 | 값 | 설명 |
|------|-----|------|
| `CMAKE_BUILD_TYPE` | `RelWithDebInfo` | 릴리즈 + 디버그 정보 포함 |
| `ENABLE_SHARED` | `0` | 공유 라이브러리 빌드 비활성화 |
| `ENABLE_STATIC` | `1` | 정적 라이브러리 빌드 활성화 |
| `WITH_JAVA` | `0` | Java 지원 비활성화 |

## 빌드 결과

빌드가 성공하면 다음 경로에 라이브러리가 생성됩니다:
```bash
ls build-min/*.a           # 정적 라이브러리
ls build-min/cjpeg         # JPEG 인코더
ls build-min/djpeg         # JPEG 디코더
ls build-min/jpegtran      # JPEG 변환 도구
```

## 기본 사용법
```bash
# JPEG 압축
./build-min/cjpeg input.bmp > output.jpg

# JPEG 압축 해제
./build-min/djpeg input.jpg > output.bmp

# JPEG 변환 (무손실)
./build-min/jpegtran -rotate 90 input.jpg > output.jpg
```
