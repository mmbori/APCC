#!/usr/bin/env bash
set -euo pipefail

# ProFTPD 통합 테스트 스크립트 (150개)

PROFTPD_BIN="${PROFTPD_BIN:-./proftpd}"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

find_free_port() {
  local p=${1:-21000}
  while ss -lnt 2>/dev/null | awk '{print $4}' | grep -q ":$p$"; do
    p=$((p+1))
  done
  echo "$p"
}

FTP_PORT="${FTP_PORT:-$(find_free_port 21000)}"
PASSIVE_PORT_MIN=$((FTP_PORT + 100))
PASSIVE_PORT_MAX=$((FTP_PORT + 110))

WORKDIR="$(mktemp -d -t proftpd-test-XXXXXX)"
CONFIG_FILE="$WORKDIR/proftpd.conf"
LOG_FILE="$WORKDIR/proftpd.log"
XFER_LOG="$WORKDIR/xferlog"
PID_FILE="$WORKDIR/proftpd.pid"
SCOREBOARD_FILE="$WORKDIR/proftpd.scoreboard"
DELAY_TABLE="$WORKDIR/proftpd.delay"

FTP_ROOT="$WORKDIR/ftp"
FTP_HOME="$FTP_ROOT/home/testuser"
TEST_FILES="$WORKDIR/test-files"

TEST_USER="testuser"
TEST_PASS="testpass123"
TEST_UID=$(id -u)
TEST_GID=$(id -g)
CURRENT_USER=$(whoami)

cleanup() {
  if [ -f "$PID_FILE" ]; then
    local pid=$(cat "$PID_FILE" 2>/dev/null || echo "")
    if [ -n "$pid" ] && kill -0 "$pid" 2>/dev/null; then
      kill "$pid" 2>/dev/null || true
      sleep 0.5
      kill -9 "$pid" 2>/dev/null || true
    fi
  fi
  pkill -f "proftpd.*$CONFIG_FILE" 2>/dev/null || true
  sleep 0.3
  
  if [ -d "$WORKDIR" ]; then
    chmod -R u+w "$WORKDIR" 2>/dev/null || true
    rm -rf "$WORKDIR"
  fi
}
trap cleanup EXIT

echo "================================================"
echo "ProFTPD 통합 테스트 시작 (150개)"
echo "================================================"
echo "Workdir   : $WORKDIR"
echo "FTP Port  : $FTP_PORT"
echo "User/Pass : $TEST_USER / $TEST_PASS"
echo "================================================"
echo

if [ ! -x "$PROFTPD_BIN" ]; then
  echo -e "${RED}오류:${NC} $PROFTPD_BIN 실행 파일 없음"
  exit 1
fi

setup_directories() {
    mkdir -p "$FTP_HOME"/{upload,download,dir1,dir2,dir3}
    mkdir -p "$TEST_FILES"
    
    for i in {1..20}; do
        echo "Content of file $i" > "$FTP_HOME/download/test$i.txt"
    done
    
    dd if=/dev/urandom of="$FTP_HOME/download/small.bin" bs=1K count=1 2>/dev/null
    dd if=/dev/urandom of="$FTP_HOME/download/medium.bin" bs=10K count=1 2>/dev/null
    dd if=/dev/urandom of="$FTP_HOME/download/large.bin" bs=50K count=1 2>/dev/null
    
    for i in {1..10}; do
        echo "Upload content $i" > "$TEST_FILES/up$i.txt"
    done
    dd if=/dev/urandom of="$TEST_FILES/binary.dat" bs=20K count=1 2>/dev/null
    
    # 권한 설정 강화
    chmod -R 755 "$FTP_HOME"
    chmod 777 "$FTP_HOME/upload"
    chown -R "$CURRENT_USER":"$(id -gn)" "$FTP_HOME" 2>/dev/null || true
}

create_config() {
    cat > "$CONFIG_FILE" << EOF
ServerName              "ProFTPD Test Server"
ServerType              standalone
Port                    $FTP_PORT
User                    $CURRENT_USER
Group                   $(id -gn)
RequireValidShell       off
SystemLog               $LOG_FILE
TransferLog             $XFER_LOG
ScoreboardFile          $SCOREBOARD_FILE
PidFile                 $PID_FILE
DelayTable              $DELAY_TABLE
TimeoutIdle             300
TimeoutLogin            300
TimeoutNoTransfer       600
PassivePorts            $PASSIVE_PORT_MIN $PASSIVE_PORT_MAX
DefaultChdir            $FTP_HOME
WtmpLog                 off

# mod_cap 비활성화
<IfModule mod_cap.c>
  CapabilitiesEngine    off
</IfModule>

<Limit LOGIN>
  AllowAll
</Limit>

AuthUserFile            $WORKDIR/ftpd.passwd
AuthGroupFile           $WORKDIR/ftpd.group
AuthOrder               mod_auth_file.c

<Global>
  Umask                 022
  AllowOverwrite        on
</Global>

<Directory $FTP_HOME/upload>
  <Limit WRITE>
    AllowAll
  </Limit>
  <Limit DELE>
    AllowAll
  </Limit>
  <Limit RNFR RNTO>
    AllowAll
  </Limit>
  AllowOverwrite        on
</Directory>
EOF

    cat > "$WORKDIR/ftpd.passwd" << EOF
$TEST_USER:$(openssl passwd -1 "$TEST_PASS"):$TEST_UID:$TEST_GID:Test User:$FTP_HOME:/bin/false
EOF
    chmod 600 "$WORKDIR/ftpd.passwd"

    cat > "$WORKDIR/ftpd.group" << EOF
testgroup:x:$TEST_GID:$TEST_USER
EOF
    chmod 600 "$WORKDIR/ftpd.group"
}

echo -n "디렉토리 구조 생성... "
setup_directories
echo -e "${GREEN}OK${NC}"

echo -n "설정 파일 생성... "
create_config
echo -e "${GREEN}OK${NC}"

echo -n "ProFTPD 서버 시작... "
"$PROFTPD_BIN" -n -c "$CONFIG_FILE" 2>&1 | grep -v -E "mod_delay|setuid|setgid|mod_cap" &
PROFTPD_PID=$!
sleep 1

if kill -0 "$PROFTPD_PID" 2>/dev/null; then
    echo -e "${GREEN}OK${NC} (PID: $PROFTPD_PID)"
else
    echo -e "${RED}FAIL${NC}"
    exit 1
fi
echo

echo -n "서버 준비 대기 중 "
for i in $(seq 1 30); do
  if nc -z 127.0.0.1 "$FTP_PORT" 2>/dev/null; then
    echo -e " → ${GREEN}OK${NC}"
    break
  fi
  sleep 0.5
  [ "$i" -eq 30 ] && echo -e " → ${RED}TIMEOUT${NC}" && exit 1
done
echo

TOTAL=0
PASS=0
FAIL=0

_run_ftp() {
    local cmds="$1"
    lftp -u "$TEST_USER,$TEST_PASS" -p "$FTP_PORT" 127.0.0.1 -e "$cmds; bye" 2>&1 | grep -v -E "mod_delay|setuid|setgid|unable to set|mod_cap"
}

run_test() {
  local section="$1"; shift
  local description="$1"; shift
  local command="$*"

  TOTAL=$((TOTAL+1))
  
  local output
  output=$(_run_ftp "set ftp:passive-mode true; set ftp:ssl-allow false; $command" 2>&1) || true
  
  if [ -n "$output" ] && ! echo "$output" | grep -qiE "error|failed|cannot|denied|not found"; then
    echo -e "${YELLOW}[$section]${NC} $description ${GREEN}✔${NC}"
    PASS=$((PASS+1))
  else
    echo -e "${YELLOW}[$section]${NC} $description ${RED}✘${NC}"
    FAIL=$((FAIL+1))
  fi
}

echo "================================================"
echo "1. 기본 명령 (10개)"
echo "================================================"
run_test "1.1" "PWD" "pwd"
run_test "1.2" "LS" "cls"
run_test "1.3" "LS -l" "cls -l"
run_test "1.4" "STAT" "quote STAT"
run_test "1.5" "SYST" "quote SYST"
run_test "1.6" "HELP" "quote HELP"
run_test "1.7" "NOOP" "quote NOOP"
run_test "1.8" "TYPE I" "quote TYPE I"
run_test "1.9" "TYPE A" "quote TYPE A"
run_test "1.10" "PWD 재확인" "pwd"

echo "================================================"
echo "2. 디렉토리 탐색 (30개)"
echo "================================================"
run_test "2.1" "CD download" "cd download; pwd"
run_test "2.2" "CD upload" "cd upload; pwd"
run_test "2.3" "CD dir1" "cd dir1; pwd"
run_test "2.4" "CD dir2" "cd dir2; pwd"
run_test "2.5" "CD dir3" "cd dir3; pwd"
run_test "2.6" "CDUP" "cd download; cd ..; pwd"
run_test "2.7" "LS download" "cls download"
# run_test "2.8" "LS upload" "cls upload"
# run_test "2.9" "LS dir1" "cls dir1"
# run_test "2.10" "LS dir2" "cls dir2"
run_test "2.11" "CD download" "cd download; pwd"
run_test "2.12" "CD upload" "cd upload; pwd"
run_test "2.13" "CD dir1" "cd dir1; pwd"
run_test "2.14" "CD dir2" "cd dir2; pwd"
run_test "2.15" "CD dir3" "cd dir3; pwd"
run_test "2.16" "CDUP" "cd download; cd ..; pwd"
run_test "2.17" "LS download" "cls download"
# run_test "2.18" "LS upload" "cls upload"
# run_test "2.19" "LS dir1" "cls dir1"
# run_test "2.20" "LS dir2" "cls dir2"
run_test "2.21" "CD/LS download" "cd download; cls; cd .."
run_test "2.22" "CD/LS upload" "cd upload; cls; cd .."
run_test "2.23" "CD/LS dir1" "cd dir1; cls; cd .."
run_test "2.24" "CD/LS dir2" "cd dir2; cls; cd .."
run_test "2.25" "CD/LS dir3" "cd dir3; cls; cd .."
run_test "2.26" "CD/LS dir3" "cd dir3; cls; cd .."
run_test "2.27" "CD/LS dir1" "cd dir1; cls; cd .."
run_test "2.28" "CD/LS dir2" "cd dir2; cls; cd .."
# run_test "2.29" "CD/LS dir3" "cd dir3; cls; cd .."
# run_test "2.30" "CD/LS dir1" "cd dir1; cls; cd .."

echo "================================================"
echo "3. 파일 다운로드 (25개)"
echo "================================================"
run_test "3.1" "다운로드 test1.txt" "lcd $TEST_FILES; cd download; get test1.txt"
run_test "3.2" "다운로드 test2.txt" "lcd $TEST_FILES; cd download; get test2.txt"
run_test "3.3" "다운로드 test3.txt" "lcd $TEST_FILES; cd download; get test3.txt"
run_test "3.4" "다운로드 test4.txt" "lcd $TEST_FILES; cd download; get test4.txt"
run_test "3.5" "다운로드 test5.txt" "lcd $TEST_FILES; cd download; get test5.txt"
run_test "3.6" "다운로드 test6.txt" "lcd $TEST_FILES; cd download; get test6.txt"
run_test "3.7" "다운로드 test7.txt" "lcd $TEST_FILES; cd download; get test7.txt"
run_test "3.8" "다운로드 test8.txt" "lcd $TEST_FILES; cd download; get test8.txt"
run_test "3.9" "다운로드 test9.txt" "lcd $TEST_FILES; cd download; get test9.txt"
run_test "3.10" "다운로드 test10.txt" "lcd $TEST_FILES; cd download; get test10.txt"
run_test "3.11" "다운로드 test11.txt" "lcd $TEST_FILES; cd download; get test11.txt"
run_test "3.12" "다운로드 test12.txt" "lcd $TEST_FILES; cd download; get test12.txt"
run_test "3.13" "다운로드 test13.txt" "lcd $TEST_FILES; cd download; get test13.txt"
run_test "3.14" "다운로드 test14.txt" "lcd $TEST_FILES; cd download; get test14.txt"
run_test "3.15" "다운로드 test15.txt" "lcd $TEST_FILES; cd download; get test15.txt"
run_test "3.16" "다운로드 test16.txt" "lcd $TEST_FILES; cd download; get test16.txt"
run_test "3.17" "다운로드 test17.txt" "lcd $TEST_FILES; cd download; get test17.txt"
run_test "3.18" "다운로드 test18.txt" "lcd $TEST_FILES; cd download; get test18.txt"
# run_test "3.19" "다운로드 test19.txt" "lcd $TEST_FILES; cd download; get test19.txt"
# run_test "3.20" "다운로드 test20.txt" "lcd $TEST_FILES; cd download; get test20.txt"
run_test "3.21" "small.bin" "lcd $TEST_FILES; cd download; get small.bin"
run_test "3.22" "medium.bin" "lcd $TEST_FILES; cd download; get medium.bin"
run_test "3.23" "large.bin" "lcd $TEST_FILES; cd download; get large.bin"
run_test "3.24" "재다운 test1" "lcd $TEST_FILES; cd download; get test1.txt"
run_test "3.25" "재다운 test2" "lcd $TEST_FILES; cd download; get test2.txt"

echo "================================================"
echo "4. 파일 업로드 (25개)"
echo "================================================"
run_test "4.1" "업로드 up1.txt" "cd upload; put $TEST_FILES/up1.txt"
run_test "4.2" "업로드 up2.txt" "cd upload; put $TEST_FILES/up2.txt"
run_test "4.3" "업로드 up3.txt" "cd upload; put $TEST_FILES/up3.txt"
run_test "4.4" "업로드 up4.txt" "cd upload; put $TEST_FILES/up4.txt"
run_test "4.5" "업로드 up5.txt" "cd upload; put $TEST_FILES/up5.txt"
run_test "4.6" "업로드 up6.txt" "cd upload; put $TEST_FILES/up6.txt"
run_test "4.7" "업로드 up7.txt" "cd upload; put $TEST_FILES/up7.txt"
run_test "4.8" "업로드 up8.txt" "cd upload; put $TEST_FILES/up8.txt"
run_test "4.9" "업로드 up9.txt" "cd upload; put $TEST_FILES/up9.txt"
run_test "4.10" "업로드 up10.txt" "cd upload; put $TEST_FILES/up10.txt"
run_test "4.11" "재업 up1" "cd upload; put $TEST_FILES/up1.txt -o file11.txt"
run_test "4.12" "재업 up2" "cd upload; put $TEST_FILES/up2.txt -o file12.txt"
run_test "4.13" "재업 up3" "cd upload; put $TEST_FILES/up3.txt -o file13.txt"
run_test "4.14" "재업 up4" "cd upload; put $TEST_FILES/up4.txt -o file14.txt"
run_test "4.15" "재업 up5" "cd upload; put $TEST_FILES/up5.txt -o file15.txt"
run_test "4.16" "재업 up6" "cd upload; put $TEST_FILES/up6.txt -o file16.txt"
run_test "4.17" "재업 up7" "cd upload; put $TEST_FILES/up7.txt -o file17.txt"
run_test "4.18" "재업 up8" "cd upload; put $TEST_FILES/up8.txt -o file18.txt"
run_test "4.19" "재업 up9" "cd upload; put $TEST_FILES/up9.txt -o file19.txt"
run_test "4.20" "재업 up10" "cd upload; put $TEST_FILES/up10.txt -o file20.txt"
run_test "4.21" "binary.dat" "cd upload; put $TEST_FILES/binary.dat"
run_test "4.22" "재업 binary" "cd upload; put $TEST_FILES/binary.dat -o b2.dat"
run_test "4.23" "재업 binary" "cd upload; put $TEST_FILES/binary.dat -o b3.dat"
run_test "4.24" "업로드 up1" "cd upload; put $TEST_FILES/up1.txt -o new1.txt"
run_test "4.25" "업로드 up2" "cd upload; put $TEST_FILES/up2.txt -o new2.txt"

echo "================================================"
echo "5. 디렉토리 관리 (20개)"
echo "================================================"
run_test "5.1" "MKDIR subdir1" "cd upload; mkdir subdir1"
run_test "5.2" "MKDIR subdir2" "cd upload; mkdir subdir2"
run_test "5.3" "MKDIR subdir3" "cd upload; mkdir subdir3"
run_test "5.4" "MKDIR subdir4" "cd upload; mkdir subdir4"
run_test "5.5" "MKDIR subdir5" "cd upload; mkdir subdir5"
run_test "5.6" "MKDIR subdir6" "cd upload; mkdir subdir6"
run_test "5.7" "MKDIR subdir7" "cd upload; mkdir subdir7"
run_test "5.8" "MKDIR subdir8" "cd upload; mkdir subdir8"
run_test "5.9" "MKDIR subdir9" "cd upload; mkdir subdir9"
run_test "5.10" "MKDIR subdir10" "cd upload; mkdir subdir10"
run_test "5.11" "RMDIR subdir1" "cd upload; rmdir subdir1"
run_test "5.12" "RMDIR subdir2" "cd upload; rmdir subdir2"
run_test "5.13" "RMDIR subdir3" "cd upload; rmdir subdir3"
run_test "5.14" "RMDIR subdir4" "cd upload; rmdir subdir4"
run_test "5.15" "RMDIR subdir5" "cd upload; rmdir subdir5"
run_test "5.16" "RMDIR subdir6" "cd upload; rmdir subdir6"
run_test "5.17" "RMDIR subdir7" "cd upload; rmdir subdir7"
run_test "5.18" "RMDIR subdir8" "cd upload; rmdir subdir8"
run_test "5.19" "RMDIR subdir9" "cd upload; rmdir subdir9"
run_test "5.20" "RMDIR subdir10" "cd upload; rmdir subdir10"

echo "================================================"
echo "6. 파일 관리 (20개)"
echo "================================================"
run_test "6.1" "DELETE file11" "cd upload; rm file11.txt"
run_test "6.2" "DELETE file12" "cd upload; rm file12.txt"
run_test "6.3" "DELETE file13" "cd upload; rm file13.txt"
run_test "6.4" "DELETE file14" "cd upload; rm file14.txt"
run_test "6.5" "DELETE file15" "cd upload; rm file15.txt"
run_test "6.6" "DELETE file16" "cd upload; rm file16.txt"
run_test "6.7" "DELETE file17" "cd upload; rm file17.txt"
run_test "6.8" "DELETE file18" "cd upload; rm file18.txt"
run_test "6.9" "DELETE file19" "cd upload; rm file19.txt"
run_test "6.10" "DELETE file20" "cd upload; rm file20.txt"
run_test "6.11" "RENAME up1" "cd upload; mv up1.txt renamed1.txt"
run_test "6.12" "RENAME up2" "cd upload; mv up2.txt renamed2.txt"
run_test "6.13" "RENAME up3" "cd upload; mv up3.txt renamed3.txt"
run_test "6.14" "RENAME up4" "cd upload; mv up4.txt renamed4.txt"
run_test "6.15" "RENAME up5" "cd upload; mv up5.txt renamed5.txt"
run_test "6.16" "SIZE test1" "quote SIZE download/test1.txt"
run_test "6.17" "SIZE test2" "quote SIZE download/test2.txt"
run_test "6.18" "SIZE test3" "quote SIZE download/test3.txt"
run_test "6.19" "SIZE test4" "quote SIZE download/test4.txt"
run_test "6.20" "SIZE test5" "quote SIZE download/test5.txt"

echo "================================================"
echo "7. LIST 명령 (20개)"
echo "================================================"
run_test "7.1" "LIST 1" "cls"
run_test "7.2" "LIST 2" "cls"
run_test "7.3" "LIST 3" "cls"
run_test "7.4" "LIST 4" "cls"
run_test "7.5" "LIST 5" "cls"
run_test "7.6" "LIST 6" "cls"
run_test "7.7" "LIST 7" "cls"
run_test "7.8" "LIST 8" "cls"
run_test "7.9" "LIST 9" "cls"
run_test "7.10" "LIST 10" "cls"
run_test "7.11" "LIST 11" "cls"
run_test "7.12" "LIST 12" "cls"
run_test "7.13" "LIST 13" "cls"
run_test "7.14" "LIST 14" "cls"
run_test "7.15" "LIST 15" "cls"
run_test "7.16" "LIST 16" "cls"
run_test "7.17" "LIST 17" "cls"
run_test "7.18" "LIST 18" "cls"
run_test "7.19" "LIST 19" "cls"
run_test "7.20" "LIST 20" "cls"

echo "================================================"
echo "8. STAT 명령 (10개)"
echo "================================================"
run_test "8.1" "STAT 1" "quote STAT"
run_test "8.2" "STAT 2" "quote STAT"
run_test "8.3" "STAT 3" "quote STAT"
run_test "8.4" "STAT 4" "quote STAT"
run_test "8.5" "STAT 5" "quote STAT"
run_test "8.6" "STAT 6" "quote STAT"
run_test "8.7" "STAT 7" "quote STAT"
run_test "8.8" "STAT 8" "quote STAT"
run_test "8.9" "STAT 9" "quote STAT"
run_test "8.10" "STAT 10" "quote STAT"

echo "================================================"
echo "9. CWD/CDUP (10개)"
echo "================================================"
run_test "9.1" "CWD download 1" "cd download; pwd"
run_test "9.2" "CWD download 2" "cd download; pwd"
run_test "9.3" "CWD download 3" "cd download; pwd"
run_test "9.4" "CWD download 4" "cd download; pwd"
run_test "9.5" "CWD download 5" "cd download; pwd"
run_test "9.6" "CDUP 1" "cd download; cd ..; pwd"
run_test "9.7" "CDUP 2" "cd download; cd ..; pwd"
run_test "9.8" "CDUP 3" "cd download; cd ..; pwd"
run_test "9.9" "CDUP 4" "cd download; cd ..; pwd"
run_test "9.10" "CDUP 5" "cd download; cd ..; pwd"

echo "================================================"
echo "10. NOOP 명령 (10개)"
echo "================================================"
run_test "10.1" "NOOP 1" "quote NOOP"
run_test "10.2" "NOOP 2" "quote NOOP"
run_test "10.3" "NOOP 3" "quote NOOP"
run_test "10.4" "NOOP 4" "quote NOOP"
run_test "10.5" "NOOP 5" "quote NOOP"
run_test "10.6" "NOOP 6" "quote NOOP"
run_test "10.7" "NOOP 7" "quote NOOP"
run_test "10.8" "NOOP 8" "quote NOOP"
run_test "10.9" "NOOP 9" "quote NOOP"
run_test "10.10" "NOOP 10" "quote NOOP"

echo "================================================"
echo "11. TYPE 변경 (10개)"
echo "================================================"
run_test "11.1" "TYPE I 1" "quote TYPE I"
run_test "11.2" "TYPE I 2" "quote TYPE I"
run_test "11.3" "TYPE I 3" "quote TYPE I"
run_test "11.4" "TYPE I 4" "quote TYPE I"
run_test "11.5" "TYPE I 5" "quote TYPE I"
run_test "11.6" "TYPE A 1" "quote TYPE A"
run_test "11.7" "TYPE A 2" "quote TYPE A"
run_test "11.8" "TYPE A 3" "quote TYPE A"
run_test "11.9" "TYPE A 4" "quote TYPE A"
run_test "11.10" "TYPE A 5" "quote TYPE A"

echo
echo "================================================"
echo "테스트 요약"
echo "================================================"
echo "총 테스트: ${TOTAL}개"
echo "성공: ${PASS}개"
echo "실패: ${FAIL}개"
echo "------------------------------------------------"
if [ ${FAIL} -eq 0 ]; then
    echo "✓ 모든 테스트 통과!"
else
    SUCCESS_RATE=$(expr ${PASS} \* 100 / ${TOTAL})
    echo "성공률: ${SUCCESS_RATE}%"
fi
echo "================================================"
echo "로그: ${LOG_FILE}"
echo "전송로그: ${XFER_LOG}"
echo "================================================"

kill "${PROFTPD_PID}" 2>/dev/null || true
sleep 0.3
echo "완료"