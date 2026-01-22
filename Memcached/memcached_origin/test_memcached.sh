#!/usr/bin/env bash
set -euo pipefail

: "${REPO_DIR:=$(pwd)}"
: "${MEMCACHED_BIN:=$REPO_DIR/memcached}"
: "${MEMCACHED_ARGS:=-vv -m 64 -t 2 -c 256}"

: "${TEST_HOST:=127.0.0.1}"
: "${TEST_PORT:=0}"          # 0 => choose random port
: "${TIMEOUT_SEC:=2}"
: "${STARTUP_TIMEOUT:=6}"
: "${LOG_DIR:=$REPO_DIR/_func_test_logs}"

mkdir -p "$LOG_DIR"
LOG_MAIN="$LOG_DIR/run.log"
LOG_SERVER="$LOG_DIR/memcached.log"

die() { echo "FATAL: $*" | tee -a "$LOG_MAIN" >&2; exit 1; }
info() { echo "[INFO] $*" | tee -a "$LOG_MAIN"; }
warn() { echo "[WARN] $*" | tee -a "$LOG_MAIN"; }

cleanup() {
  set +e
  if [[ -n "${TCP_FD:-}" ]]; then
    eval "exec ${TCP_FD}<&-"
    eval "exec ${TCP_FD}>&-"
  fi
  if [[ -n "${SERVER_PID:-}" ]]; then
    kill "$SERVER_PID" >/dev/null 2>&1 || true
    wait "$SERVER_PID" >/dev/null 2>&1 || true
  fi
}
trap cleanup EXIT INT TERM

choose_free_port() {
  python3 - <<'PY'
import socket
s=socket.socket()
s.bind(("127.0.0.1",0))
print(s.getsockname()[1])
s.close()
PY
}

assert_contains() {
  local hay="$1" needle="$2" msg="$3"
  if ! grep -qF -- "$needle" <<<"$hay"; then
    echo "----- RESPONSE START -----" | tee -a "$LOG_MAIN"
    echo "$hay" | tee -a "$LOG_MAIN"
    echo "----- RESPONSE END -------" | tee -a "$LOG_MAIN"
    die "$msg (expected to contain: $needle)"
  fi
}

assert_regex() {
  local hay="$1" re="$2" msg="$3"
  if ! grep -Eq -- "$re" <<<"$hay"; then
    echo "----- RESPONSE START -----" | tee -a "$LOG_MAIN"
    echo "$hay" | tee -a "$LOG_MAIN"
    echo "----- RESPONSE END -------" | tee -a "$LOG_MAIN"
    die "$msg (expected regex: $re)"
  fi
}

server_alive_or_die() {
  if [[ -z "${SERVER_PID:-}" ]]; then
    die "SERVER_PID not set"
  fi
  if ! kill -0 "$SERVER_PID" 2>/dev/null; then
    warn "memcached is not alive (pid=$SERVER_PID). Last server log:"
    tail -n 160 "$LOG_SERVER" | tee -a "$LOG_MAIN" >&2 || true
    die "memcached crashed or exited unexpectedly"
  fi
}

tcp_open() {
  local host="$1" port="$2"
  exec {TCP_FD}<>"/dev/tcp/${host}/${port}" || return 1
  return 0
}

tcp_close() {
  if [[ -n "${TCP_FD:-}" ]]; then
    eval "exec ${TCP_FD}<&-"
    eval "exec ${TCP_FD}>&-"
    unset TCP_FD
  fi
}

tcp_send() {
  local data="$1"
  printf "%b" "$data" >&"$TCP_FD"
}

tcp_read_line() {
  local deadline=$((SECONDS + TIMEOUT_SEC))
  local line=""
  while (( SECONDS < deadline )); do
    if IFS= read -r -t 0.2 -u "$TCP_FD" line; then
      echo "$line"
      return 0
    fi
    server_alive_or_die
  done
  echo ""
  return 1
}

tcp_read_until_token() {
  local token="$1"
  local deadline=$((SECONDS + TIMEOUT_SEC))
  local out="" line=""
  while (( SECONDS < deadline )); do
    if IFS= read -r -t 0.2 -u "$TCP_FD" line; then
      out+="${line}"$'\n'
      if grep -qF -- "$token" <<<"$out"; then
        echo "$out"
        return 0
      fi
    fi
    server_alive_or_die
  done
  echo "$out"
  return 1
}

start_server() {
  local host="$1" port="$2"
  : >"$LOG_SERVER"

  info "Starting memcached on ${host}:${port} ..."
  local userflag=""
  if [[ "$(id -u)" -eq 0 ]]; then
    userflag="-u ${SUDO_USER:-root}"
  fi

  "$MEMCACHED_BIN" -l "$host" -p "$port" -U 0 $userflag $MEMCACHED_ARGS >>"$LOG_SERVER" 2>&1 &
  SERVER_PID=$!
  info "memcached pid=$SERVER_PID (log: $LOG_SERVER)"

  # readiness check: repeatedly try to open tcp + send version + read response
  local deadline=$((SECONDS + STARTUP_TIMEOUT))
  while (( SECONDS < deadline )); do
    if ! kill -0 "$SERVER_PID" 2>/dev/null; then
      warn "memcached died during startup. Last server log:"
      tail -n 160 "$LOG_SERVER" | tee -a "$LOG_MAIN" >&2 || true
      die "memcached crashed at startup"
    fi

    if tcp_open "$host" "$port"; then
      tcp_send "version\r\n"
      local v=""
      v="$(tcp_read_line || true)"
      tcp_close
      if [[ "$v" =~ ^VERSION[[:space:]]+ ]]; then
        info "memcached is ready."
        return 0
      fi
    fi

    sleep 0.1
  done

  warn "memcached did not become ready within ${STARTUP_TIMEOUT}s. Last server log:"
  tail -n 160 "$LOG_SERVER" | tee -a "$LOG_MAIN" >&2 || true
  die "memcached readiness timeout"
}

# ---- Tests ----

cmd_version() { tcp_send "version\r\n"; tcp_read_line || true; }
cmd_stats() { tcp_send "stats\r\n"; tcp_read_until_token "END" || true; }

test_version_and_stats() {
  info "Test: version / stats"
  local v; v="$(cmd_version)"
  assert_regex "$v" '^VERSION[[:space:]]+' "version response malformed"

  local s; s="$(cmd_stats)"
  assert_contains "$s" "STAT " "stats did not return STAT lines"
  assert_contains "$s" "END" "stats did not end with END"
}

main() {
  : >"$LOG_MAIN"
  : >"$LOG_SERVER"

  [[ -x "$MEMCACHED_BIN" ]] || die "memcached binary not found/executable: $MEMCACHED_BIN"
  info "Using existing memcached: $MEMCACHED_BIN"
  info "MEMCACHED_ARGS: $MEMCACHED_ARGS"
  info "Logs: $LOG_MAIN , server log: $LOG_SERVER"

  local port="$TEST_PORT"
  if [[ "$port" == "0" ]]; then
    port="$(choose_free_port)"
  fi
  PORT="$port"

  start_server "$TEST_HOST" "$PORT"

  # Open persistent connection for test commands
  tcp_open "$TEST_HOST" "$PORT" || die "Failed to open TCP after readiness"
  test_version_and_stats

  info "BASIC TESTS PASSED."
  info "Server log tail:"
  tail -n 60 "$LOG_SERVER" | tee -a "$LOG_MAIN" >/dev/null || true
}

main "$@"
