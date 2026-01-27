#!/usr/bin/env bash
set -euo pipefail

# Nginx 통합 테스트 스크립트 (최적화 버전)
# ProFTPD, Redis 테스트 스크립트 패턴을 참고하여 작성

NGINX_BIN="${NGINX_BIN:-./objs/nginx}"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# 사용 가능한 포트 찾기
find_free_port() {
  local p=${1:-8080}
  while ss -lnt 2>/dev/null | awk '{print $4}' | grep -q ":$p$"; do
    p=$((p+1))
  done
  echo "$p"
}

HTTP_PORT="${HTTP_PORT:-$(find_free_port 8080)}"

# 작업 디렉터리 설정
WORKDIR="$(mktemp -d -t nginx-test-XXXXXX)"
CONFIG_FILE="$WORKDIR/nginx.conf"
PID_FILE="$WORKDIR/nginx.pid"
LOG_DIR="$WORKDIR/logs"
ACCESS_LOG="$LOG_DIR/access.log"
ERROR_LOG="$LOG_DIR/error.log"
HTML_DIR="$WORKDIR/html"
TEMP_DIR="$WORKDIR/temp"
CLIENT_BODY_TEMP="$TEMP_DIR/client_body_temp"
PROXY_TEMP="$TEMP_DIR/proxy_temp"
FASTCGI_TEMP="$TEMP_DIR/fastcgi_temp"
UWSGI_TEMP="$TEMP_DIR/uwsgi_temp"
SCGI_TEMP="$TEMP_DIR/scgi_temp"

# 정리 함수
cleanup() {
  if [ -f "$PID_FILE" ]; then
    local pid=$(cat "$PID_FILE" 2>/dev/null || echo "")
    if [ -n "$pid" ] && kill -0 "$pid" 2>/dev/null; then
      "$NGINX_BIN" -s quit -c "$CONFIG_FILE" 2>/dev/null || true
      sleep 1
      kill "$pid" 2>/dev/null || true
      sleep 0.3
      kill -9 "$pid" 2>/dev/null || true
    fi
  fi
  pkill -f "nginx.*$CONFIG_FILE" 2>/dev/null || true
  sleep 0.3
  
  if [ -d "$WORKDIR" ]; then
    chmod -R u+w "$WORKDIR" 2>/dev/null || true
    # rm -rf "$WORKDIR"
  fi
}
trap cleanup EXIT

echo "================================================"
echo "Nginx 통합 테스트 시작"
echo "================================================"
echo "Workdir   : $WORKDIR"
echo "HTTP Port : $HTTP_PORT"
echo "================================================"
echo

# nginx 바이너리 확인
if [ ! -x "$NGINX_BIN" ]; then
  echo -e "${RED}오류:${NC} $NGINX_BIN 실행 파일 없음"
  exit 1
fi

# 디렉터리 구조 생성
setup_directories() {
    mkdir -p "$LOG_DIR"
    mkdir -p "$HTML_DIR"
    mkdir -p "$CLIENT_BODY_TEMP"
    mkdir -p "$PROXY_TEMP"
    mkdir -p "$FASTCGI_TEMP"
    mkdir -p "$UWSGI_TEMP"
    mkdir -p "$SCGI_TEMP"
    
    # 테스트용 HTML 파일들 생성
    cat > "$HTML_DIR/index.html" << 'EOF'
<!DOCTYPE html>
<html>
<head><title>Nginx Test</title></head>
<body><h1>Welcome to Nginx Test!</h1></body>
</html>
EOF

    cat > "$HTML_DIR/test.html" << 'EOF'
<!DOCTYPE html>
<html>
<head><title>Test Page</title></head>
<body><h1>This is a test page</h1></body>
</html>
EOF

    # 정적 파일들
    for i in {1..20}; do
        echo "Test file $i content" > "$HTML_DIR/file$i.txt"
    done
    
    # 바이너리 파일
    dd if=/dev/urandom of="$HTML_DIR/small.bin" bs=1K count=1 2>/dev/null
    dd if=/dev/urandom of="$HTML_DIR/medium.bin" bs=10K count=1 2>/dev/null
    dd if=/dev/urandom of="$HTML_DIR/large.bin" bs=100K count=1 2>/dev/null
    
    # 다양한 MIME 타입 파일
    echo '{"test": "json"}' > "$HTML_DIR/test.json"
    echo 'body { color: red; }' > "$HTML_DIR/test.css"
    echo 'console.log("test");' > "$HTML_DIR/test.js"
    dd if=/dev/urandom of="$HTML_DIR/test.png" bs=1K count=1 2>/dev/null
    
    # 서브디렉터리
    mkdir -p "$HTML_DIR/subdir1"
    mkdir -p "$HTML_DIR/subdir2"
    echo "Subdir1 content" > "$HTML_DIR/subdir1/index.html"
    echo "Subdir2 content" > "$HTML_DIR/subdir2/index.html"
}

# nginx 설정 파일 생성
create_config() {
    # mime.types 파일 생성
    cat > "$WORKDIR/mime.types" << 'MIME_EOF'
types {
    text/html                             html htm shtml;
    text/css                              css;
    text/xml                              xml;
    text/plain                            txt;
    application/javascript                js;
    application/json                      json;
    image/gif                             gif;
    image/jpeg                            jpeg jpg;
    image/png                             png;
    application/octet-stream              bin exe dll;
    application/octet-stream              iso img;
    application/octet-stream              msi msp msm;
}
MIME_EOF

    cat > "$CONFIG_FILE" << EOF
worker_processes  1;
daemon off;
master_process off;
error_log  $ERROR_LOG  info;
pid        $PID_FILE;

events {
    worker_connections  1024;
}

http {
    include       $WORKDIR/mime.types;
    default_type  application/octet-stream;

    log_format  main  '\$remote_addr - \$remote_user [\$time_local] "\$request" '
                      '\$status \$body_bytes_sent "\$http_referer" '
                      '"\$http_user_agent" "\$http_x_forwarded_for"';

    access_log  $ACCESS_LOG  main;

    sendfile        on;
    keepalive_timeout  65;
    
    client_body_temp_path $CLIENT_BODY_TEMP;
    proxy_temp_path $PROXY_TEMP;
    fastcgi_temp_path $FASTCGI_TEMP;
    uwsgi_temp_path $UWSGI_TEMP;
    scgi_temp_path $SCGI_TEMP;

    server {
        listen       $HTTP_PORT;
        server_name  localhost;

        location / {
            root   $HTML_DIR;
            index  index.html index.htm;
        }

        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   $HTML_DIR;
        }
    }
}
EOF
}

echo -n "디렉터리 구조 생성... "
setup_directories
echo -e "${GREEN}OK${NC}"

echo -n "설정 파일 생성... "
create_config
echo -e "${GREEN}OK${NC}"

echo -n "Nginx 설정 검증... "
if "$NGINX_BIN" -t -c "$CONFIG_FILE" > /dev/null 2>&1; then
  echo -e "${GREEN}OK${NC}"
else
  echo -e "${RED}FAIL${NC}"
  "$NGINX_BIN" -t -c "$CONFIG_FILE" 2>&1
  exit 1
fi

echo -n "Nginx 서버 시작... "
"$NGINX_BIN" -c "$CONFIG_FILE" &
NGINX_PID=$!
sleep 0.5

if kill -0 $NGINX_PID 2>/dev/null; then
    echo -e "${GREEN}OK${NC} (PID: $NGINX_PID)"
else
    echo -e "${RED}FAIL${NC}"
    cat "$ERROR_LOG" 2>/dev/null || true
    exit 1
fi
echo

# 서버 준비 대기
echo -n "서버 준비 대기 중 "
for i in $(seq 1 30); do
  if curl -s --connect-timeout 1 --max-time 2 -o /dev/null -w "%{http_code}" "http://127.0.0.1:$HTTP_PORT/" 2>/dev/null | grep -q "200"; then
    echo -e " → ${GREEN}OK${NC}"
    break
  fi
  sleep 0.5
  [ "$i" -eq 30 ] && echo -e " → ${RED}TIMEOUT${NC}" && exit 1
done
echo

# 테스트 통계
TOTAL=0
PASS=0
FAIL=0

# HTTP 요청 헬퍼 함수 (최적화: 타임아웃 추가)
http_get() {
    local path="$1"
    curl -s --connect-timeout 1 --max-time 2 -o /dev/null -w "%{http_code}" "http://127.0.0.1:$HTTP_PORT$path" 2>/dev/null
}

http_get_content() {
    local path="$1"
    curl -s --connect-timeout 1 --max-time 2 "http://127.0.0.1:$HTTP_PORT$path" 2>/dev/null
}

http_head() {
    local path="$1"
    curl -s --connect-timeout 1 --max-time 2 -I "http://127.0.0.1:$HTTP_PORT$path" 2>/dev/null
}

# 최적화: HTTP 메서드 헬퍼 함수 추가
http_method() {
    local method="$1"
    local path="$2"
    curl -s --connect-timeout 1 --max-time 2 -X "$method" -o /dev/null -w "%{http_code}" "http://127.0.0.1:$HTTP_PORT$path" 2>/dev/null
}

# 테스트 실행 함수
run_test() {
  local section="$1"; shift
  local description="$1"; shift
  local command="$1"; shift
  local expected="$1"

  TOTAL=$((TOTAL+1))
  
  local result
  result=$($command 2>&1) || true
  
  if echo "$result" | grep -q "$expected"; then
    echo -e "${YELLOW}[$section]${NC} $description ${GREEN}✓${NC}"
    PASS=$((PASS+1))
  else
    echo -e "${YELLOW}[$section]${NC} $description ${RED}✘${NC}"
    FAIL=$((FAIL+1))
  fi
}

echo "================================================"
echo "1. 기본 HTTP 요청 테스트 (20개)"
echo "================================================"
run_test "1.1" "GET / (index.html)" "http_get /" "200"
run_test "1.2" "GET /test.html" "http_get /test.html" "200"
run_test "1.3" "GET /file1.txt" "http_get /file1.txt" "200"
run_test "1.4" "GET /file2.txt" "http_get /file2.txt" "200"
run_test "1.5" "GET /file3.txt" "http_get /file3.txt" "200"
run_test "1.6" "GET /file4.txt" "http_get /file4.txt" "200"
run_test "1.7" "GET /file5.txt" "http_get /file5.txt" "200"
run_test "1.8" "GET /file6.txt" "http_get /file6.txt" "200"
run_test "1.9" "GET /file7.txt" "http_get /file7.txt" "200"
run_test "1.10" "GET /file8.txt" "http_get /file8.txt" "200"
run_test "1.11" "GET /file9.txt" "http_get /file9.txt" "200"
run_test "1.12" "GET /file10.txt" "http_get /file10.txt" "200"
run_test "1.13" "GET /test.json" "http_get /test.json" "200"
run_test "1.14" "GET /test.css" "http_get /test.css" "200"
run_test "1.15" "GET /test.js" "http_get /test.js" "200"
run_test "1.16" "GET /test.png" "http_get /test.png" "200"
run_test "1.17" "GET /small.bin" "http_get /small.bin" "200"
run_test "1.18" "GET /medium.bin" "http_get /medium.bin" "200"
run_test "1.19" "GET /large.bin" "http_get /large.bin" "200"
run_test "1.20" "GET /notfound.html (404)" "http_get /notfound.html" "404"

echo "================================================"
echo "2. HEAD 요청 테스트 (10개)"
echo "================================================"
run_test "2.1" "HEAD /" "http_head /" "200"
run_test "2.2" "HEAD /test.html" "http_head /test.html" "200"
run_test "2.3" "HEAD /file1.txt" "http_head /file1.txt" "200"
run_test "2.4" "HEAD /file2.txt" "http_head /file2.txt" "200"
run_test "2.5" "HEAD /test.json" "http_head /test.json" "200"
run_test "2.6" "HEAD /test.css" "http_head /test.css" "200"
run_test "2.7" "HEAD /small.bin" "http_head /small.bin" "200"
run_test "2.8" "HEAD /medium.bin" "http_head /medium.bin" "200"
run_test "2.9" "HEAD /large.bin" "http_head /large.bin" "200"
run_test "2.10" "HEAD /notfound.html (404)" "http_head /notfound.html" "404"

echo "================================================"
echo "3. 디렉터리 테스트 (10개)"
echo "================================================"
run_test "3.1" "GET /subdir1/" "http_get /subdir1/" "200"
run_test "3.2" "GET /subdir2/" "http_get /subdir2/" "200"
run_test "3.3" "GET /subdir1/index.html" "http_get /subdir1/index.html" "200"
run_test "3.4" "GET /subdir2/index.html" "http_get /subdir2/index.html" "200"
run_test "3.5" "GET /subdir1/ content" "http_get_content /subdir1/" "Subdir1"
run_test "3.6" "GET /subdir2/ content" "http_get_content /subdir2/" "Subdir2"
run_test "3.7" "GET /subdir1/index.html content" "http_get_content /subdir1/index.html" "Subdir1"
run_test "3.8" "GET /subdir2/index.html content" "http_get_content /subdir2/index.html" "Subdir2"
run_test "3.9" "HEAD /subdir1/" "http_head /subdir1/" "200"
run_test "3.10" "HEAD /subdir2/" "http_head /subdir2/" "200"

echo "================================================"
echo "4. 콘텐츠 검증 테스트 (20개)"
echo "================================================"
run_test "4.1" "Content: index.html" "http_get_content /" "Welcome to Nginx Test"
run_test "4.2" "Content: test.html" "http_get_content /test.html" "This is a test page"
run_test "4.3" "Content: file1.txt" "http_get_content /file1.txt" "Test file 1"
run_test "4.4" "Content: file2.txt" "http_get_content /file2.txt" "Test file 2"
run_test "4.5" "Content: file3.txt" "http_get_content /file3.txt" "Test file 3"
run_test "4.6" "Content: file4.txt" "http_get_content /file4.txt" "Test file 4"
run_test "4.7" "Content: file5.txt" "http_get_content /file5.txt" "Test file 5"
run_test "4.8" "Content: file6.txt" "http_get_content /file6.txt" "Test file 6"
run_test "4.9" "Content: file7.txt" "http_get_content /file7.txt" "Test file 7"
run_test "4.10" "Content: file8.txt" "http_get_content /file8.txt" "Test file 8"
run_test "4.11" "Content: file9.txt" "http_get_content /file9.txt" "Test file 9"
run_test "4.12" "Content: file10.txt" "http_get_content /file10.txt" "Test file 10"
run_test "4.13" "Content: test.json" "http_get_content /test.json" "test"
run_test "4.14" "Content: test.json (json)" "http_get_content /test.json" "json"
run_test "4.15" "Content: test.css" "http_get_content /test.css" "color"
run_test "4.16" "Content: test.css (red)" "http_get_content /test.css" "red"
run_test "4.17" "Content: test.js" "http_get_content /test.js" "console.log"
run_test "4.18" "Content: test.js (test)" "http_get_content /test.js" "test"
run_test "4.19" "Content: subdir1" "http_get_content /subdir1/index.html" "Subdir1"
run_test "4.20" "Content: subdir2" "http_get_content /subdir2/index.html" "Subdir2"

echo "================================================"
echo "5. HTTP 헤더 검증 (20개)"
echo "================================================"
run_test "5.1" "Content-Type: html" "http_head /" "text/html"
run_test "5.2" "Content-Type: json" "http_head /test.json" "application/json"
run_test "5.3" "Content-Type: css" "http_head /test.css" "text/css"
run_test "5.4" "Content-Type: txt" "http_head /file1.txt" "text/plain"
run_test "5.5" "Content-Type: png" "http_head /test.png" "image/png"
run_test "5.6" "Content-Type: bin" "http_head /small.bin" "application/octet-stream"
run_test "5.7" "Server header" "http_head /" "nginx"
run_test "5.8" "Connection header" "http_head /" "keep-alive"
run_test "5.9" "Content-Length exists" "http_head /file1.txt" "Content-Length"
run_test "5.10" "Last-Modified exists" "http_head /file1.txt" "Last-Modified"
run_test "5.11" "Date header" "http_head /" "Date:"
run_test "5.12" "Accept-Ranges" "http_head /file1.txt" "Accept-Ranges"
run_test "5.13" "HEAD status line" "http_head /" "HTTP"
run_test "5.14" "HEAD 200 OK" "http_head /" "200"
run_test "5.15" "HEAD 404 status" "http_head /notfound" "404"
run_test "5.16" "Content-Type html (test)" "http_head /test.html" "text/html"
run_test "5.17" "Content-Type file2" "http_head /file2.txt" "text/plain"
run_test "5.18" "Content-Type file3" "http_head /file3.txt" "text/plain"
run_test "5.19" "Content-Type subdir1" "http_head /subdir1/" "text/html"
run_test "5.20" "Content-Type subdir2" "http_head /subdir2/" "text/html"

echo "================================================"
echo "6. 다중 연결 테스트 (15개)"
echo "================================================"
for i in {1..15}; do
  run_test "6.$i" "Concurrent request $i" "http_get /" "200"
done

echo "================================================"
echo "7. 파일 다운로드 테스트 (15개)"
echo "================================================"
for i in {1..5}; do
  run_test "7.$i" "Download file$i.txt" "http_get /file$i.txt" "200"
done
for i in {1..5}; do
  run_test "7.$((i+5))" "Download large.bin ($i)" "http_get /large.bin" "200"
done
for i in {1..5}; do
  run_test "7.$((i+10))" "Download medium.bin ($i)" "http_get /medium.bin" "200"
done

echo "================================================"
echo "8. Keep-Alive 테스트 (10개)"
echo "================================================"
for i in {1..10}; do
  run_test "8.$i" "Keep-Alive request $i" "curl -s --connect-timeout 1 --max-time 2 -H 'Connection: keep-alive' http://127.0.0.1:$HTTP_PORT/ -o /dev/null -w '%{http_code}' 2>/dev/null" "200"
done

echo "================================================"
echo "9. 에러 처리 테스트 (15개)"
echo "================================================"
run_test "9.1" "404 Not Found" "http_get /nonexistent.html" "404"
run_test "9.2" "404 path 1" "http_get /fake/path.html" "404"
run_test "9.3" "404 path 2" "http_get /does/not/exist.txt" "404"
run_test "9.4" "404 path 3" "http_get /missing.json" "404"
run_test "9.5" "404 path 4" "http_get /nothere.css" "404"
run_test "9.6" "404 path 5" "http_get /absent.js" "404"
run_test "9.7" "404 content check" "http_get_content /nonexistent.html" "404"
run_test "9.8" "Valid after 404 (1)" "http_get /file1.txt" "200"
run_test "9.9" "Another 404" "http_get /xyz.html" "404"
run_test "9.10" "Valid after 404 (2)" "http_get /test.html" "200"
run_test "9.11" "404 in subdir" "http_get /subdir1/notfound.html" "404"
run_test "9.12" "Valid after subdir 404" "http_get /subdir1/" "200"
run_test "9.13" "Multiple 404 check 1" "http_get /a/b/c.html" "404"
run_test "9.14" "Multiple 404 check 2" "http_get /x/y/z.html" "404"
run_test "9.15" "Valid after multiple 404s" "http_get /file10.txt" "200"

echo "================================================"
echo "10. HTTP 메서드 테스트 (10개) - 최적화"
echo "================================================"
run_test "10.1" "GET method" "http_method GET /" "200"
run_test "10.2" "HEAD method" "curl -s --connect-timeout 1 --max-time 2 -I http://127.0.0.1:$HTTP_PORT/ -o /dev/null -w '%{http_code}' 2>/dev/null" "200"
run_test "10.3" "POST to static (405)" "http_method POST /file1.txt" "405"
run_test "10.4" "PUT to static (405)" "http_method PUT /file1.txt" "405"
run_test "10.5" "DELETE to static (405)" "http_method DELETE /file1.txt" "405"
run_test "10.6" "GET file1" "http_method GET /file1.txt" "200"
run_test "10.7" "GET file2" "http_method GET /file2.txt" "200"
run_test "10.8" "HEAD file1" "curl -s --connect-timeout 1 --max-time 2 -I http://127.0.0.1:$HTTP_PORT/file1.txt -o /dev/null -w '%{http_code}' 2>/dev/null" "200"
run_test "10.9" "HEAD file2" "curl -s --connect-timeout 1 --max-time 2 -I http://127.0.0.1:$HTTP_PORT/file2.txt -o /dev/null -w '%{http_code}' 2>/dev/null" "200"
run_test "10.10" "GET test.html" "http_method GET /test.html" "200"

echo "================================================"
echo "11. User-Agent 테스트 (5개) - 최적화"
echo "================================================"
for i in {1..5}; do
  run_test "11.$i" "User-Agent test $i" "curl -s --connect-timeout 1 --max-time 2 -A 'TestAgent/$i' http://127.0.0.1:$HTTP_PORT/ -o /dev/null -w '%{http_code}' 2>/dev/null" "200"
done

echo "================================================"
echo "12. 연속 요청 안정성 (20개)"
echo "================================================"
for i in {1..20}; do
  FILE_NUM=$((i % 10 + 1))
  run_test "12.$i" "Sequential request $i (file$FILE_NUM)" "http_get /file$FILE_NUM.txt" "200"
done

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
    SUCCESS_RATE=100
else
    SUCCESS_RATE=$(expr ${PASS} \* 100 / ${TOTAL})
    echo "성공률: ${SUCCESS_RATE}%"
fi
echo "================================================"
echo "로그 파일:"
echo "  Access: ${ACCESS_LOG}"
echo "  Error:  ${ERROR_LOG}"
echo "================================================"

# nginx 종료
"$NGINX_BIN" -s quit -c "$CONFIG_FILE" 2>/dev/null || kill "${NGINX_PID}" 2>/dev/null || true
sleep 0.5

if [ ${FAIL} -eq 0 ]; then
    echo -e "${GREEN}모든 테스트 성공! ✓${NC}"
    exit 0
else
    echo -e "${RED}일부 테스트 실패${NC}"
    exit 1
fi