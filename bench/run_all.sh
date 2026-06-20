#!/usr/bin/env bash
#
# run_all.sh — Unified REST + gRPC benchmark for all frameworks.
#
# Usage:
#   ./bench/run_all.sh
#
# Prerequisites:
#   - Docker + Docker Compose
#   - bench binary built: cd bench && cargo build --release
#
# Note: Docker bridge adds ~10-15% overhead to absolute RPS vs bare metal,
# but the REST vs gRPC ratio is valid (both go through the same bridge).
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
BENCH_BIN="$SCRIPT_DIR/target/release/bench"
COMPOSE_FILE="$PROJECT_ROOT/docker-compose.yml"
RESULTS_DIR="$PROJECT_ROOT/results"
TOTAL=100000
CONCURRENCY=120

# ── Service registry: compose_name → display_name|http_port|grpc_port|dir_name ─
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

# ── Ensure bench binary exists ───────────────────────────────────────────
if [ ! -x "$BENCH_BIN" ]; then
  echo "Building bench binary..."
  (cd "$SCRIPT_DIR" && cargo build --release)
fi

# ── Ensure DB is up ──────────────────────────────────────────────────────────
echo "=== Starting database ==="
docker compose -f "$COMPOSE_FILE" up -d db 2>&1 | tail -1
echo "Waiting for DB to be healthy..."
until docker compose -f "$COMPOSE_FILE" ps db --format json 2>/dev/null | grep -q '"Health":"healthy"'; do
  sleep 1
done
echo "DB is healthy."

# ── Header ───────────────────────────────────────────────────────────────────
printf "\n%-28s | %10s | %10s | %14s\n" "Framework" "REST RPS" "gRPC RPS" "gRPC vs REST %"
printf "%-28s-|-%-10s-|-%-10s-|-%-14s\n" "----------------------------" "----------" "----------" "--------------"

# ── extract_rps (sed-based, no grep -P dependency) ───────────────────────
extract_rps() {
  echo "$1" | sed -n 's/.*RPS:\s*\([0-9.]*\).*/\1/p' | head -1
}

# ── Run benchmarks ───────────────────────────────────────────────────────────
SUMMARY_ROWS=""
SUMMARY_DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

for svc in "${ORDER[@]}"; do
  IFS='|' read -r name http_port grpc_port dir_name <<< "${SERVICES[$svc]}"

  echo "=== Starting $name ===" >&2
  docker compose -f "$COMPOSE_FILE" up -d "$svc" 2>&1 | tail -1

  # Wait for HTTP
  for i in $(seq 1 60); do
    if curl -s -o /dev/null -w '%{http_code}' "http://127.0.0.1:${http_port}/" 2>/dev/null | grep -q 200; then
      break
    fi
    sleep 1
  done

  # Wait for gRPC port
  for i in $(seq 1 30); do
    if timeout 1 bash -c "echo >/dev/tcp/127.0.0.1/${grpc_port}" 2>/dev/null; then
      break
    fi
    sleep 1
  done
  sleep 2  # extra settle time

  # ── REST bench ──────────────────────────────────────────────────────────
  rest_out=$("$BENCH_BIN" \
    --mode rest \
    --url "http://127.0.0.1:${http_port}/" \
    --name "$name" \
    --concurrency "$CONCURRENCY" \
    --requests "$TOTAL" 2>/dev/null)
  rest_rps=$(extract_rps "$rest_out")
  rest_rps="${rest_rps:-0}"
  echo "  $rest_out" >&2

  # ── gRPC bench ──────────────────────────────────────────────────────────
  grpc_out=$("$BENCH_BIN" \
    --mode grpc \
    --url "http://127.0.0.1:${grpc_port}" \
    --name "$name" \
    --concurrency "$CONCURRENCY" \
    --requests "$TOTAL" 2>/dev/null)
  grpc_rps=$(extract_rps "$grpc_out")
  grpc_rps="${grpc_rps:-0}"
  echo "  $grpc_out" >&2

  # ── Compute ratio: gRPC / REST * 100 ────────────────────────────────────
  ratio_str="N/A"
  if command -v bc &>/dev/null; then
    rest_is_pos=$(echo "$rest_rps > 0" | bc -l 2>/dev/null || echo "0")
    if [ "$rest_is_pos" = "1" ]; then
      ratio=$(echo "scale=0; $grpc_rps / $rest_rps * 100" | bc -l 2>/dev/null)
      ratio_str="${ratio}%"
    fi
  fi

  printf "%-28s | %10s | %10s | %14s\n" "$name" "$rest_rps" "$grpc_rps" "$ratio_str"

  # ── Save per-framework result ───────────────────────────────────────────
  RESULT_DIR="$RESULTS_DIR/$dir_name"
  mkdir -p "$RESULT_DIR"
  cat > "$RESULT_DIR/Unified.md" <<MDEOF
# $name — Unified REST + gRPC Benchmark

**Tested**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, unified REST + gRPC)
**Concurrency**: $CONCURRENCY | **Total requests**: $TOTAL (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | $(echo "$rest_out" | sed -n 's/.*RPS: \([0-9.]*\).*p50: \([0-9.]*\)ms.*p99: \([0-9.]*\)ms.*p999: \([0-9.]*\)ms.*/\1 | \2ms | \3ms | \4ms/p') |
| gRPC  | $(echo "$grpc_out" | sed -n 's/.*RPS: \([0-9.]*\).*p50: \([0-9.]*\)ms.*p99: \([0-9.]*\)ms.*p999: \([0-9.]*\)ms.*/\1 | \2ms | \3ms | \4ms/p') |

**gRPC vs REST**: $ratio_str

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

  # ── Accumulate summary row ──────────────────────────────────────────────
  SUMMARY_ROWS+="| $name | $rest_rps | $grpc_rps | $ratio_str |"$'\n'

  # ── Cleanup ─────────────────────────────────────────────────────────────
  docker compose -f "$COMPOSE_FILE" down "$svc" 2>&1 | tail -1
  sleep 2
done

# ── Write summary ────────────────────────────────────────────────────────────
cat > "$RESULTS_DIR/Summary.Unified.md" <<MDEOF
# Unified REST + gRPC Performance Results — Summary

**Generated**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, unified \`reqwest\` + \`tonic\`)
**Concurrency**: $CONCURRENCY | **Total requests**: $TOTAL (10% warmup)

## Results

| Framework | REST RPS | gRPC RPS | gRPC vs REST |
| --- | --- | --- | --- |
$SUMMARY_ROWS
MDEOF

echo ""
echo "Results saved to:"
echo "  Per-framework: results/<Framework>/Unified.md"
echo "  Summary:       results/Summary.Unified.md"
echo "Done."
