#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
BENCH_BIN="$SCRIPT_DIR/target/release/bench"
COMPOSE_FILE="$PROJECT_ROOT/docker-compose.yml"
RESULTS_DIR="$PROJECT_ROOT/results"
TOTAL=100000
CONCURRENCY=120

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
)

ORDER=(dotnetapi gochi goechoapi gofiber expressapi expressclusterapi bunapi bunclusterapi)

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

extract_rps() { echo "$1" | sed -n 's/.*RPS:\s*\([0-9.]*\).*/\1/p' | head -1; }

capture_stats() {
  local svc=$1
  local json
  json=$(docker compose -f "$COMPOSE_FILE" stats --no-stream --format json "$svc" 2>/dev/null || true)
  if [ -z "$json" ]; then
    echo "N/A|N/A"
    return
  fi
  local mem_raw cpu_raw mem_used
  mem_raw=$(echo "$json" | sed 's/.*"MemUsage":"\([^"]*\)".*/\1/')
  cpu_raw=$(echo "$json" | sed 's/.*"CPUPerc":"\([^"]*\)".*/\1/')
  mem_used=$(echo "${mem_raw:-N/A}" | sed 's/ \/ .*//')
  echo "${mem_used:-N/A}|${cpu_raw:-N/A}"
}

SUMMARY_ROWS=""
SUMMARY_DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

for svc in "${ORDER[@]}"; do
  IFS='|' read -r name http_port grpc_port dir_name <<< "${SERVICES[$svc]}"

  echo "=== Starting $name ===" >&2
  docker compose -f "$COMPOSE_FILE" up -d "$svc" 2>&1 | tail -1

  ok=0
  for i in $(seq 1 60); do
    if curl -s -o /dev/null -w '%{http_code}' "http://127.0.0.1:${http_port}/orders" 2>/dev/null | grep -q 200; then
      ok=1; break
    fi
    sleep 1
  done
  if [ "$ok" = "0" ]; then
    echo "  SKIP $name (orders endpoint not responding)" >&2
    docker compose -f "$COMPOSE_FILE" rm -sf "$svc" 2>/dev/null || true
    continue
  fi

  for i in $(seq 1 30); do
    if timeout 1 bash -c "echo >/dev/tcp/127.0.0.1/${grpc_port}" 2>/dev/null; then break; fi
    sleep 1
  done
  sleep 2

  # ── REST bench ──────────────────────────────────────────────────────────
  rest_out=$("$BENCH_BIN" --mode rest --url "http://127.0.0.1:${http_port}/orders" \
    --name "$name" --concurrency "$CONCURRENCY" --requests "$TOTAL" 2>/dev/null || echo "RPS: 0")
  rest_rps=$(extract_rps "$rest_out")
  rest_rps="${rest_rps:-0}"
  echo "  $rest_out" >&2

  rest_stats=$(capture_stats "$svc")
  rest_mem=$(echo "$rest_stats" | cut -d'|' -f1)
  rest_cpu=$(echo "$rest_stats" | cut -d'|' -f2)

  # ── gRPC bench ──────────────────────────────────────────────────────────
  grpc_out=$("$BENCH_BIN" --mode grpc --url "http://127.0.0.1:${grpc_port}" \
    --endpoint orders --name "$name" --concurrency "$CONCURRENCY" --requests "$TOTAL" 2>/dev/null || echo "RPS: 0")
  grpc_rps=$(extract_rps "$grpc_out")
  grpc_rps="${grpc_rps:-0}"
  echo "  $grpc_out" >&2

  grpc_stats=$(capture_stats "$svc")
  grpc_mem=$(echo "$grpc_stats" | cut -d'|' -f1)
  grpc_cpu=$(echo "$grpc_stats" | cut -d'|' -f2)

  # ── Compute ratio ──────────────────────────────────────────────────────
  ratio_str="N/A"
  if command -v bc &>/dev/null; then
    rest_is_pos=$(echo "$rest_rps > 0" | bc -l 2>/dev/null || echo "0")
    if [ "$rest_is_pos" = "1" ]; then
      ratio=$(echo "scale=1; ($grpc_rps - $rest_rps) * 100 / $rest_rps" | bc -l 2>/dev/null || echo "N/A")
      if [ "$ratio" != "N/A" ]; then
        ratio_str="${ratio}%"
      fi
    fi
  fi

  printf "%-26s | %8s | %8s | %6s | %8s | %8s | %6s | %10s\n" \
    "$name" "$rest_rps" "$rest_mem" "$rest_cpu" "$grpc_rps" "$grpc_mem" "$grpc_cpu" "$ratio_str"

  # ── Save per-framework result ───────────────────────────────────────────
  RESULT_DIR="$RESULTS_DIR/$dir_name"
  mkdir -p "$RESULT_DIR"

  rest_p50=$(echo "$rest_out" | sed -n 's/.*p50: \([0-9.]*\)ms.*/\1/p' | head -1)
  rest_p99=$(echo "$rest_out" | sed -n 's/.*p99: \([0-9.]*\)ms.*/\1/p' | head -1)
  rest_p999=$(echo "$rest_out" | sed -n 's/.*p999: \([0-9.]*\)ms.*/\1/p' | head -1)
  grpc_p50=$(echo "$grpc_out" | sed -n 's/.*p50: \([0-9.]*\)ms.*/\1/p' | head -1)
  grpc_p99=$(echo "$grpc_out" | sed -n 's/.*p99: \([0-9.]*\)ms.*/\1/p' | head -1)
  grpc_p999=$(echo "$grpc_out" | sed -n 's/.*p999: \([0-9.]*\)ms.*/\1/p' | head -1)

  cat > "$RESULT_DIR/UnifiedOrders.md" <<MDEOF
# $name — Unified REST + gRPC Benchmark (Orders)

**Tested**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, \`reqwest\` + \`tonic\`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: $CONCURRENCY | **Total requests**: $TOTAL (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | $rest_rps | ${rest_p50:-N/A}ms | ${rest_p99:-N/A}ms | ${rest_p999:-N/A}ms |
| gRPC  | $grpc_rps | ${grpc_p50:-N/A}ms | ${grpc_p99:-N/A}ms | ${grpc_p999:-N/A}ms |

**gRPC vs REST**: $ratio_str

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | $rest_mem | $rest_cpu |
| gRPC  | $grpc_mem | $grpc_cpu |

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

  docker compose -f "$COMPOSE_FILE" rm -sf "$svc" 2>/dev/null || true
  sleep 3
done

cat > "$RESULTS_DIR/Summary.UnifiedOrders.md" <<MDEOF
# Unified REST + gRPC Performance Results (Orders) — Summary

**Generated**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, \`reqwest\` HTTP/1.1 + \`tonic\` gRPC)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: $CONCURRENCY | **Total requests**: $TOTAL (10% warmup)

## Results

| Framework | REST RPS | R Mem | R CPU | gRPC RPS | G Mem | G CPU | Δ REST→gRPC |
| --- | --- | --- | --- | --- | --- | --- | --- |
$SUMMARY_ROWS
MDEOF

echo ""
echo "Orders benchmark complete. Results:"
echo "  Per-framework: results/<Framework>/UnifiedOrders.md"
echo "  Summary:       $RESULTS_DIR/Summary.UnifiedOrders.md"
echo "Done."
