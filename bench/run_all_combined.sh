#!/usr/bin/env bash
#
# run_all_combined.sh — Full re-test: Hello + Orders, both HTTP/2.
#
# Usage:
#   ./bench/run_all_combined.sh 2>&1 | tee results/combined_output.txt
#
# This runs:
#   1. Hello benchmark  (/ endpoint, no DB)
#   2. Orders benchmark (/orders endpoint, with DB)
#
# Both use the unified bench tool with HTTP/2 for REST and gRPC.
# Results are written to results/Summary.HelloWorld.md and
# results/Summary.UnifiedOrders.md respectively.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
BENCH_BIN="$SCRIPT_DIR/target/release/bench"
COMPOSE_FILE="$PROJECT_ROOT/docker-compose.yml"
RESULTS_DIR="$PROJECT_ROOT/results"
TOTAL=100000
CONCURRENCY=120
SUMMARY_DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

# ── Service registry ─────────────────────────────────────────────────────
declare -A SERVICES
SERVICES=(
  ["dotnetapi"]="C# .NET API|8001|9001"
  ["gochi"]="Go Chi|8023|9023"
  ["goechoapi"]="Go Echo|8096|9096"
  ["gofiber"]="Go Fiber|8008|9008"
  ["expressapi"]="JS Node Express|8014|9014"
  ["expressclusterapi"]="JS Node Express Cluster|8041|9041"
  ["bunapi"]="JS Bun|8002|9002"
  ["bunclusterapi"]="JS Bun Cluster|8047|9047"
  ["pythonsanic"]="Python Sanic|8098|9098"
  ["pythonquart"]="Python Quart|8099|9099"
  ["rustrocket"]="Rust Rocket|8100|9100"
  ["rustwarp"]="Rust Warp|8101|9101"
)

ORDER=(dotnetapi gochi goechoapi gofiber expressapi expressclusterapi bunapi bunclusterapi pythonsanic pythonquart rustrocket rustwarp)

# ── Ensure bench binary ──────────────────────────────────────────────────
if [ ! -x "$BENCH_BIN" ]; then
  echo "Building bench binary..."
  (cd "$SCRIPT_DIR" && cargo build --release)
fi

# ── Helpers ──────────────────────────────────────────────────────────────
extract_rps() { echo "$1" | sed -n 's/.*RPS:\s*\([0-9.]*\).*/\1/p' | head -1; }
extract_p50() { echo "$1" | sed -n 's/.*p50:\s*\([0-9.]*\).*/\1/p' | head -1; }
extract_p99() { echo "$1" | sed -n 's/.*p99:\s*\([0-9.]*\).*/\1/p' | head -1; }

ensure_db() {
  echo "=== Starting database ==="
  docker compose -f "$COMPOSE_FILE" up -d db 2>&1 | tail -1
  echo "Waiting for DB to be healthy..."
  until docker compose -f "$COMPOSE_FILE" ps db --format json 2>/dev/null | grep -q '"Health":"healthy"'; do
    sleep 1
  done
  echo "DB is healthy."
}

# ── Benchmark function ───────────────────────────────────────────────────
run_benchmark() {
  local mode=$1     # "hello" or "orders"
  local endpoint=$2 # URL path: "/" or "/orders"
  local outfile=$3  # results file
  local label=$4    # display label

  echo ""
  echo "============================================"
  echo "  $label BENCHMARK"
  echo "============================================"
  echo ""

  ensure_db

  printf "\n%-28s | %10s | %10s | %14s\n" "Framework" "REST RPS" "gRPC RPS" "gRPC vs REST"
  printf "%-28s-|-%-10s-|-%-10s-|-%-14s\n" "----------------------------" "----------" "----------" "--------------"

  # Build markdown table rows
  local md_rows=""

  for svc in "${ORDER[@]}"; do
    IFS='|' read -r name http_port grpc_port <<< "${SERVICES[$svc]}"
    local rest_url="http://127.0.0.1:${http_port}${endpoint}"

    echo "=== Starting $name ===" >&2
    docker compose -f "$COMPOSE_FILE" up -d "$svc" 2>&1 | tail -1

    # Wait for HTTP
    for i in $(seq 1 60); do
      if curl -s -o /dev/null -w '%{http_code}' "$rest_url" 2>/dev/null | grep -q 200; then
        break
      fi
      sleep 1
    done

    # REST bench (over h2c bridge)
    echo "  REST..." >&2
    local rest_out
    rest_out=$("$BENCH_BIN" --mode rest --url "$rest_url" --name "$name" -c "$CONCURRENCY" -n "$TOTAL" 2>&1)
    local rest_rps
    rest_rps=$(extract_rps "$rest_out")
    echo "  $rest_out" >&2

    # gRPC bench
    echo "  gRPC..." >&2
    local grpc_url="http://127.0.0.1:${grpc_port}"
    local grpc_ep="hello"
    [ "$mode" = "orders" ] && grpc_ep="orders"
    local grpc_out
    grpc_out=$("$BENCH_BIN" --mode grpc --url "$grpc_url" --name "$name" --endpoint "$grpc_ep" -c "$CONCURRENCY" -n "$TOTAL" 2>&1)
    local grpc_rps
    grpc_rps=$(extract_rps "$grpc_out")
    echo "  $grpc_out" >&2

    # Calculate delta
    local pct="N/A"
    if [ -n "$rest_rps" ] && [ -n "$grpc_rps" ] && [ "$rest_rps" != "0" ]; then
      pct=$(echo "scale=1; ($grpc_rps - $rest_rps) / $rest_rps * 100" | bc)
      pct="${pct}%"
    fi

    printf "%-28s | %10s | %10s | %14s\n" "$name" "$rest_rps" "$grpc_rps" "$pct"
    md_rows+="| $name | $rest_rps | $grpc_rps | $pct |"$'\n'

    docker compose -f "$COMPOSE_FILE" down "$svc" 2>&1 | tail -1
  done

  # Write summary file
  cat > "$outfile" << MDEOF
# Unified REST + gRPC Performance Results (${label}) — Summary

**Generated**: ${SUMMARY_DATE}
**Tool**: \`bench\` (Rust, unified \`hyper h2c\` + \`tonic\` — **both HTTP/2**)
**Endpoint**: \`${endpoint}\`
**Concurrency**: ${CONCURRENCY} | **Total requests**: ${TOTAL} (10% warmup)

> Both REST and gRPC use HTTP/2 from the bench tool. REST goes through an
> in-process h2c bridge (HTTP/2 → HTTP/1.1 to target), gRPC uses native
> HTTP/2 via tonic. See \`bench/src/main.rs\` for details.

## Results (HTTP/2 REST vs HTTP/2 gRPC)

| Framework               | REST RPS | gRPC RPS | gRPC vs REST |
| ----------------------- | -------- | -------- | ------------ |
${md_rows}
MDEOF

  echo ""
  echo "Results written to $outfile"
}

# ── Main ─────────────────────────────────────────────────────────────────
run_benchmark "hello"   "/"        "$RESULTS_DIR/Summary.UnifiedHello.md"   "Hello"
run_benchmark "orders"  "/orders"  "$RESULTS_DIR/Summary.UnifiedOrders.md" "Orders"

echo ""
echo "============================================"
echo "  ALL BENCHMARKS COMPLETE"
echo "============================================"
echo "Hello:  $RESULTS_DIR/Summary.UnifiedHello.md"
echo "Orders: $RESULTS_DIR/Summary.UnifiedOrders.md"
