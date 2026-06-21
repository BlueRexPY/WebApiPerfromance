#!/usr/bin/env bash
# Quick run: orders benchmark against 8 existing services (skips new 4)
set -euo pipefail

cd /home/admin/Projects/Python/WebApiPerfromance

BENCH_BIN="./bench/target/release/bench"
COMPOSE="./docker-compose.yml"
RESULTS="./results"
TOTAL=100000
CONC=120

declare -A SERVICES=(
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

extract_rps() { echo "$1" | sed -n 's/.*RPS:\s*\([0-9.]*\).*/\1/p' | head -1; }

capture_stats() {
  local svc=$1 json mem_raw cpu_raw pids_raw mem_used
  json=$(docker compose -f "$COMPOSE" stats --no-stream --format json "$svc" 2>/dev/null || true)
  if [ -z "$json" ] || [ "$json" = "{}" ]; then
    echo "N/A|N/A|N/A"
    return
  fi
  mem_raw=$(echo "$json" | sed -n 's/.*"MemUsage":"\([^"]*\)".*/\1/p')
  cpu_raw=$(echo "$json" | sed -n 's/.*"CPUPerc":"\([^"]*\)".*/\1/p')
  pids_raw=$(echo "$json" | sed -n 's/.*"PIDs":"\([^"]*\)".*/\1/p')
  mem_used=$(echo "${mem_raw:-N/A}" | sed 's/ \/ .*//')
  echo "${mem_used:-N/A}|${cpu_raw:-N/A}|${pids_raw:-N/A}"
}

# Start DB
echo "=== Starting database ==="
docker compose -f "$COMPOSE" up -d db 2>&1 | tail -1
until docker compose -f "$COMPOSE" ps db --format json 2>/dev/null | grep -q '"Health":"healthy"'; do sleep 1; done
echo "DB healthy."

printf "\n%-26s | %8s | %8s | %6s | %8s | %8s | %6s | %10s\n" \
  "Framework" "REST RPS" "R Mem" "R CPU" "gRPC RPS" "G Mem" "G CPU" "Δ REST→gRPC"
printf "%-26s-|-%-8s-|-%-8s-|-%-6s-|-%-8s-|-%-8s-|-%-6s-|-%-10s\n" \
  "--------------------------" "--------" "--------" "------" "--------" "--------" "------" "----------"

SUMMARY_ROWS=""
SUMMARY_DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

for svc in "${ORDER[@]}"; do
  IFS='|' read -r name http_port grpc_port dir_name <<< "${SERVICES[$svc]}"

  echo "=== $name ===" >&2

  # Start service
  docker compose -f "$COMPOSE" up -d "$svc" 2>&1 | tail -1

  # Health check
  ok=0
  for i in $(seq 1 60); do
    if curl -s -o /dev/null -w '%{http_code}' "http://127.0.0.1:${http_port}/orders" 2>/dev/null | grep -q 200; then
      ok=1; break
    fi
    sleep 1
  done
  if [ "$ok" = "0" ]; then
    echo "  SKIP: $name not healthy" >&2
    docker compose -f "$COMPOSE" down "$svc" 2>/dev/null || true
    continue
  fi

  # Wait for gRPC
  for i in $(seq 1 15); do
    if timeout 1 bash -c "echo >/dev/tcp/127.0.0.1/${grpc_port}" 2>/dev/null; then break; fi
    sleep 1
  done
  sleep 2

  # REST
  rest_out=$("$BENCH_BIN" --mode rest --url "http://127.0.0.1:${http_port}/orders" \
    --name "$name" --concurrency "$CONC" --requests "$TOTAL" 2>/dev/null)
  rest_rps=$(extract_rps "$rest_out"); rest_rps="${rest_rps:-0}"
  echo "  $rest_out" >&2
  rest_stats=$(capture_stats "$svc")
  rest_mem=$(echo "$rest_stats" | cut -d'|' -f1)
  rest_cpu=$(echo "$rest_stats" | cut -d'|' -f2)
  rest_pids=$(echo "$rest_stats" | cut -d'|' -f3)

  # gRPC
  grpc_out=$("$BENCH_BIN" --mode grpc --url "http://127.0.0.1:${grpc_port}" \
    --endpoint orders --name "$name" --concurrency "$CONC" --requests "$TOTAL" 2>/dev/null)
  grpc_rps=$(extract_rps "$grpc_out"); grpc_rps="${grpc_rps:-0}"
  echo "  $grpc_out" >&2
  grpc_stats=$(capture_stats "$svc")
  grpc_mem=$(echo "$grpc_stats" | cut -d'|' -f1)
  grpc_cpu=$(echo "$grpc_stats" | cut -d'|' -f2)
  grpc_pids=$(echo "$grpc_stats" | cut -d'|' -f3)

  # Ratio
  ratio_str="N/A"
  if command -v bc &>/dev/null && [ "$rest_rps" != "0" ]; then
    ratio=$(echo "scale=1; ($grpc_rps - $rest_rps) * 100 / $rest_rps" | bc -l 2>/dev/null)
    ratio_str="${ratio}%"
  fi

  printf "%-26s | %8s | %8s | %6s | %8s | %8s | %6s | %10s\n" \
    "$name" "$rest_rps" "$rest_mem" "$rest_cpu" "$grpc_rps" "$grpc_mem" "$grpc_cpu" "$ratio_str"

  # Save
  RESULT_DIR="$RESULTS/$dir_name"
  mkdir -p "$RESULT_DIR"
  cat > "$RESULT_DIR/UnifiedOrders.md" <<MDEOF
# $name — Unified REST + gRPC Benchmark (Orders)

**Tested**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, unified REST + gRPC)
**Endpoint**: /orders (Orders)
**Concurrency**: $CONC | **Total requests**: $TOTAL (10% warmup discarded)

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

  # Cleanup
  docker compose -f "$COMPOSE" stop -t 2 "$svc" 2>/dev/null || true
  docker compose -f "$COMPOSE" rm -f "$svc" 2>/dev/null || true
  # Kill stale DB connections left by the stopped service
  docker compose -f "$COMPOSE" exec -T db psql -U apiuser -d ordersdb \
    -c "SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname='ordersdb' AND state='idle' AND pid <> pg_backend_pid();" 2>/dev/null || true
  sleep 3
done

# Summary
cat > "$RESULTS/Summary.UnifiedOrders.md" <<MDEOF
# Unified REST + gRPC Performance Results (Orders) — Summary

**Generated**: $SUMMARY_DATE
**Tool**: \`bench\` (Rust, unified \`reqwest\` + \`tonic\`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: $CONC | **Total requests**: $TOTAL (10% warmup)

## Results

| Framework | REST RPS | R Mem | R CPU | gRPC RPS | G Mem | G CPU | Δ REST→gRPC |
| --- | --- | --- | --- | --- | --- | --- | --- |
$SUMMARY_ROWS
MDEOF

echo ""
echo "=== DONE ==="
echo "Summary: $RESULTS/Summary.UnifiedOrders.md"
