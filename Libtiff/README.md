# libtiff 빌드 가이드

## 빌드 방법

### 1. 빌드 디렉토리 생성 및 설정
```bash
rm -rf build-test/
cmake -S . -B build-test -G "Unix Makefiles" \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DBUILD_SHARED_LIBS=OFF \
  -Dtiff-tools=ON \
  -Dtiff-tests=ON \
  -Dtiff-contrib=OFF \
  -Dtiff-docs=OFF \
  -Dtiff-install=OFF
```

### 2. 컴파일
```bash
cmake --build build-test -j"$(nproc)"
```

### 3. 테스트
```bash
ctest --test-dir build-test --output-on-failure -j"$(nproc)"
```

## CMake 옵션 설명

| 옵션 | 값 | 설명 |
|------|-----|------|
| `CMAKE_BUILD_TYPE` | `RelWithDebInfo` | 릴리즈 + 디버그 정보 포함 |
| `BUILD_SHARED_LIBS` | `OFF` | 정적 라이브러리 빌드 |
| `tiff-tools` | `ON` | TIFF 도구 빌드 |
| `tiff-tests` | `ON` | 테스트 빌드 |
| `tiff-contrib` | `OFF` | 기여 코드 빌드 안 함 |
| `tiff-docs` | `OFF` | 문서 빌드 안 함 |
| `tiff-install` | `OFF` | 설치 타겟 생성 안 함 |

## 테스트 결과 안내

> **Note:** Transformed 코드에서는 `ctest` 실행 시 **19개의 테스트 실패**가 발생할 수 있습니다.  
> 이는 코드 변환 과정에서 예상되는 결과이며, 무시하고 진행해도 됩니다.

## 빌드 결과

빌드가 성공하면 다음 경로에 실행 파일이 생성됩니다:
```bash
ls build-test/tools/  # TIFF 도구들
ls build-test/test/   # 테스트 프로그램들
```
