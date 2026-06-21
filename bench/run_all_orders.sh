#!/usr/bin/env bash
#
# run_all_orders.sh — Unified REST + gRPC benchmark (Orders endpoint).
#
# Captures REST and gRPC resource usage separately for comparison.
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
BENCH_BIN="$SCRIPT_DIR/target/release/bench"
COMPOSE_FILE="$PROJECT_ROOT/docker-compose.yml"
RESULTS_DIR="$PROJECT_ROOT/results"
TOTAL=100000
CONCURRENCY=120

# ── Service registry ─────────────────────────────────────────────────────
declare -A SERVICES
SERVICES=(
  ["dotnetapi"]="C# .NET API|8001|9001|DotNetApi"
  ["gochi"]="Go Chi|8023|9023|GoChi"
  ["goechoapi"]="Go Echo|8096|9096|GoEcho"
  ["gofiber"]="Go Fiber|8008|9008|GoFiber"
  ["expressapi"]="JS Node Express|8014|9014|ExpressApi"
  ["expressclusterapi"]="JS Node Express Cluster|8041|9041|NodeExpressClusterApi"
  ["bunapi"]="JS Bun|8002|9002|BunApi"
  ["bunclusterapi"]="JS Bun Cluster|8047|9047|NodeBunClusterApi"
  ["pythonsanic"]="Python Sanic|8098|9098|PythonSanic"
  ["pythonquart"]="Python Quart|8099|9099|PythonQuart"
  ["rustrocket"]="Rust Rocket|8100|9100|RustRocket"
  ["rustwarp"]="Rust Warp|8101|9101|RustWarp"
)

ORDER=(dotnetapi gochi goechoapi gofiber expressapi expressclusterapi bunapi bunclusterapi pythonsanic pythonquart rustrocket rustwarp)

# ── Ensure bench binary ──────────────────────────────────────────────────
if [ ! -x "$BENCH_BIN" ]; then
  echo "Building bench binary..."
  (cd "$SCRIPT_DIR" && cargo build --release)
fi

# ── Ensure DB is up ──────────────────────────────────────────────────────
echo "=== Starting database ==="
docker compose -f "$COMPOSE_FILE" up -d db 2>&1 | tail -1
echo "Waiting for DB to be healthy..."
until docker compose -f "$COMPOSE_FILE" ps db --format json 2>/dev/null | grep -q '"Health":"healthy"'; do
  sleep 1
done
echo "DB is healthy."

# ── Header ───────────────────────────────────────────────────────────────
printf "\n%-26s | %8s | %8s | %6s | %8s | %8s | %6s | %10s\n" \
  "Framework" "REST RPS" "R Mem" "R CPU" "gRPC RPS" "G Mem" "G CPU" "Δ REST→gRPC"
printf "%-26s-|-%-8s-|-%-8s-|-%-6s-|-%-8s-|-%-8s-|-%-6s-|-%-10s\n" \
  "--------------------------" "--------" "--------" "------" "--------" "--------" "------" "----------"

# ── helpers ──────────────────────────────────────────────────────────────
extract_rps() { echo "$1" | sed -n 's/.*RPS:\s*\([0-9.]*\).*/\1/p' | head -1; }

capture_stats() {
  local svc=$1
  local json=$(docker compose -f "$COMPOSE_FILE" stats --no-stream --format json "$svc" 2>/dev/null)
  local mem_raw=$(echo "$json" | sed 's/.*"MemUsage":"\([^"]*\)".*/\1/')
  local cpu_raw=$(echo "$json" | sed 's/.*"CPUPerc":"\([^"]*\)".*/\1/')
  local pids_raw=$(echo "$json" | sed 's/.*"PIDs":"\([^"]*\)".*/\1/')
  local mem_used=$(echo "$mem_raw" | sed 's/ \/ .*//')
  echo "${mem_used}|${cpu_raw}|${pids_raw}"
}

# ── Run benchmarks ───────────────────────────────────────────────────────
SUMMARY_ROWS=""
SUMMARY_DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

for svc in "${ORDER[@]}"; do
  IFS='|' read -r name http_port grpc_port dir_name <<< "${SERVICES[$svc]}"

  echo "=== Starting $name ===" >&2
  docker compose -f "$COMPOSE_FILE" up -d "$svc" 2>&1 | tail -1

  # Wait for HTTP /orders
  for i in $(seq 1 60); do
    if curl -s -o /dev/null -w '%{http_code}' "http://127.0.0.1:${http_port}/orders" 2>/dev/null | grep -q 200; then break; fi
    sleep 1
  done
  # Wait for gRPC port
  for i in $(seq 1 30); do
    if timeout 1 bash -c "echo >/dev/tcp/127.0.0.1/${grpc_port}" 2>/dev/null; then break; fi
    sleep 1
  done
  sleep 2

  # ── REST bench ──────────────────────────────────────────────────────────
  rest_out=$("$BENCH_BIN" --mode rest --url "http://127.0.0.1:${http_port}/orders" \
    --name "$name" --concurrency "$CONCURRENCY" --requests "$TOTAL" 2>/dev/null)
  rest_rps=$(extract_rps "$rest_out"); rest_rps="${rest_rps:-0}"
  echo "  $rest_out" >&2

  # Snapshot resources after REST
  rest_stats=$(capture_stats "$svc")
  rest_mem=$(echo "$rest_stats" | cut -d'|' -f1); rest_mem="${rest_mem:-N/A}"
  rest_cpu=$(echo "$rest_stats" | cut -d'|' -f2); rest_cpu="${rest_cpu:-N/A}"
  rest_pids=$(echo "$rest_stats" | cut -d'|' -f3); rest_pids="${rest_pids:-N/A}"

  # ── gRPC bench ──────────────────────────────────────────────────────────
  grpc_out=$("$BENCH_BIN" --mode grpc --url "http://127.0.0.1:${grpc_port}" \
    --endpoint orders --name "$name" --concurrency "$CONCURRENCY" --requests "$TOTAL" 2>/dev/null)
  grpc_rps=$(extract_rps "$grpc_out"); grpc_rps="${grpc_rps:-0}"
  echo "  $grpc_out" >&2

  # Snapshot resources after gRPC
  grpc_stats=$(capture_stats "$svc")
  grpc_mem=$(echo "$grpc_stats" | cut -d'|' -f1); grpc_mem="${grpc_mem:-N/A}"
  grpc_cpu=$(echo "$grpc_stats" | cut -d'|' -f2); grpc_cpu="${grpc_cpu:-N/A}"
  grpc_pids=$(echo "$grpc_stats" | cut -d'|' -f3); grpc_pids="${grpc_pids:-N/A}"

  # ── Compute ratio ──────────────────────────────────────────────────────
  ratio_str="N/A"
  if command -v bc &>/dev/null; then
    rest_is_pos=$(echo "$rest_rps > 0" | bc -l 2>/dev/null || echo "0")
    if [ "$rest_is_pos" = "1" ]; then
      ratio=$(echo "scale=1; ($grpc_rps - $rest_rps) * 100 / $rest_rps" | bc -l 2>/dev/null)
      ratio_str="${ratio}%"
    fi
  fi

  printf "%-26s | %8s | %8s | %6s | %8s | %8s | %6s | %10s\n" \
    "$name" "$rest_rps" "$rest_mem" "$rest_cpu" "$grpc_rps" "$grpc_mem" "$grpc_cpu" "$ratio_str"

  # ── Save per-framework result ───────────────────────────────────────────
  RESULT_DIR="$RESULTS_DIR/$dir_name"
  mkdir -p "$RESULT_DIR"
  cat > "$RESULT_DIR/UnifiedOrders.md" <<MDEOF
# $name — Unified REST + gRPC Benchmark (Orders)

**Tested**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, unified REST + gRPC)
**Endpoint**: /orders (Orders)
**Concurrency**: $CONCURRENCY | **Total requests**: $TOTAL (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | $(echo "$rest_out" | sed -n 's/.*RPS: \([0-9.]*\).*p50: \([0-9.]*\)ms.*p99: \([0-9.]*\)ms.*p999: \([0-9.]*\)ms.*/\1 | \2ms | \3ms | \4ms/p') |
| gRPC  | $(echo "$grpc_out" | sed -n 's/.*RPS: \([0-9.]*\).*p50: \([0-9.]*\)ms.*p99: \([0-9.]*\)ms.*p999: \([0-9.]*\)ms.*/\1 | \2ms | \3ms | \4ms/p') |

**gRPC vs REST**: $ratio_str

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | $rest_mem | $rest_cpu | $rest_pids |
| gRPC  | $grpc_mem | $grpc_cpu | $grpc_pids |

## Raw Output

### REST
\`\`\`
$rest_out
\`\`\`

### gRPC
\`\`\`
$grpc_out
\`\`\`
MDEOF

  SUMMARY_ROWS+="| $name | $rest_rps | $rest_mem | $rest_cpu | $grpc_rps | $grpc_mem | $grpc_cpu | $ratio_str |"$'\n'

  # ── Cleanup ─────────────────────────────────────────────────────────────
  docker compose -f "$COMPOSE_FILE" down "$svc" 2>&1 | tail -1
  sleep 2
done

# ── Write summary ────────────────────────────────────────────────────────
cat > "$RESULTS_DIR/Summary.UnifiedOrders.md" <<MDEOF
# Unified REST + gRPC Performance Results (Orders) — Summary

**Generated**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, unified \`reqwest\` + \`tonic\`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: $CONCURRENCY | **Total requests**: $TOTAL (10% warmup)

## Results

| Framework | REST RPS | R Mem | R CPU | gRPC RPS | G Mem | G CPU | Δ REST→gRPC |
| --- | --- | --- | --- | --- | --- | --- | --- |
$SUMMARY_ROWS
MDEOF

echo ""
echo "Orders benchmark complete. Results saved to:"
echo "  Per-framework: results/<Framework>/UnifiedOrders.md"
echo "  Summary:       results/Summary.UnifiedOrders.md"
echo "Done."
