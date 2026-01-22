#!/bin/bash

# 색상 정의
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 시간 포맷 함수
format_time() {
    local total_seconds=$1
    local hours=$((total_seconds / 3600))
    local minutes=$(((total_seconds % 3600) / 60))
    local seconds=$((total_seconds % 60))
    
    if [ $hours -gt 0 ]; then
        printf "%dh %dm %ds" $hours $minutes $seconds
    elif [ $minutes -gt 0 ]; then
        printf "%dm %ds" $minutes $seconds
    else
        printf "%ds" $seconds
    fi
}

# 전체 시작 시간
TOTAL_START=$(date +%s)

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  Memcached Build & Test Script${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# 프로젝트 디렉토리
PROJECT_DIR=~/memcached_origin
cd $PROJECT_DIR || { echo -e "${RED}Error: Directory not found${NC}"; exit 1; }

# 1. Clean
echo -e "${YELLOW}[1/4] Cleaning previous build...${NC}"
STEP_START=$(date +%s)
make clean 2>/dev/null || make distclean 2>/dev/null || true
STEP_END=$(date +%s)
STEP_TIME=$((STEP_END - STEP_START))
echo -e "${GREEN}✓ Clean completed in $(format_time $STEP_TIME)${NC}"
echo ""

# 2. Configure
echo -e "${YELLOW}[2/4] Configuring...${NC}"
STEP_START=$(date +%s)
export LLVM_COMPILER=clang
if [ ! -f "configure" ]; then
    ./autogen.sh
fi
./configure --enable-64bit 2>&1 | tail -5
CONFIGURE_EXIT=$?
STEP_END=$(date +%s)
STEP_TIME=$((STEP_END - STEP_START))

if [ $CONFIGURE_EXIT -eq 0 ]; then
    echo -e "${GREEN}✓ Configure completed in $(format_time $STEP_TIME)${NC}"
else
    echo -e "${RED}✗ Configure failed${NC}"
    exit 1
fi
echo ""

# 3. Build
echo -e "${YELLOW}[3/4] Building with wllvm...${NC}"
STEP_START=$(date +%s)
make CC=wllvm 2>&1 | tail -10
BUILD_EXIT=$?
STEP_END=$(date +%s)
STEP_TIME=$((STEP_END - STEP_START))

if [ $BUILD_EXIT -eq 0 ]; then
    echo -e "${GREEN}✓ Build completed in $(format_time $STEP_TIME)${NC}"
    
    # 실행 파일 확인
    if [ -f "memcached" ]; then
        SIZE=$(ls -lh memcached | awk '{print $5}')
        echo -e "  Binary size: ${BLUE}${SIZE}${NC}"
    fi
else
    echo -e "${RED}✗ Build failed${NC}"
    exit 1
fi
echo ""

# 4. Test
echo -e "${YELLOW}[4/4] Running tests...${NC}"
STEP_START=$(date +%s)
make test
TEST_EXIT=$?
STEP_END=$(date +%s)
STEP_TIME=$((STEP_END - STEP_START))

if [ $TEST_EXIT -eq 0 ]; then
    echo -e "${GREEN}✓ Tests completed in $(format_time $STEP_TIME)${NC}"
else
    echo -e "${RED}✗ Tests failed${NC}"
    exit 1
fi
echo ""

# 5. Extract bitcode (optional)
echo -e "${YELLOW}[5/5] Extracting bitcode...${NC}"
STEP_START=$(date +%s)
extract-bc memcached 2>&1
EXTRACT_EXIT=$?
STEP_END=$(date +%s)
STEP_TIME=$((STEP_END - STEP_START))

if [ $EXTRACT_EXIT -eq 0 ] && [ -f "memcached.bc" ]; then
    BC_SIZE=$(ls -lh memcached.bc | awk '{print $5}')
    echo -e "${GREEN}✓ Bitcode extracted in $(format_time $STEP_TIME)${NC}"
    echo -e "  Bitcode size: ${BLUE}${BC_SIZE}${NC}"
else
    echo -e "${YELLOW}⚠ Bitcode extraction failed or not available${NC}"
fi
echo ""

# 총 시간 계산
TOTAL_END=$(date +%s)
TOTAL_TIME=$((TOTAL_END - TOTAL_START))

# 결과 요약
echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  Summary${NC}"
echo -e "${BLUE}========================================${NC}"
echo -e "Total time: ${GREEN}$(format_time $TOTAL_TIME)${NC}"
echo -e "Status: ${GREEN}✓ All steps completed successfully${NC}"
echo ""

# 파일 목록
echo -e "${BLUE}Generated files:${NC}"
ls -lh memcached memcached.bc 2>/dev/null | awk '{printf "  %s  %s\n", $5, $9}'

exit 0
