#!/usr/bin/env bash
# Quick benchmark: 8 services, concurrency=30, HelloWorld endpoint
set -euo pipefail
cd /home/admin/Projects/Python/WebApiPerfromance

BENCH="./bench/target/release/bench"
COMPOSE="./docker-compose.yml"
RES="./results"
TOTAL=50000
CONC=30

declare -A S=(
  ["dotnetapi"]="C# .NET API|8001|9001|DotNetApi"
  ["gochi"]="Go Chi|8023|9023|GoChi"
  ["goechoapi"]="Go Echo|8096|9096|GoEcho"
  ["gofiber"]="Go Fiber|8008|9008|GoFiber"
  ["expressapi"]="JS Node Express|8014|9014|ExpressApi"
  ["expressclusterapi"]="JS Node Express Cluster|8041|9041|NodeExpressClusterApi"
  ["bunapi"]="JS Bun|8002|9002|BunApi"
  ["bunclusterapi"]="JS Bun Cluster|8047|9047|NodeBunClusterApi"
)
O="dotnetapi gochi goechoapi gofiber expressapi expressclusterapi bunapi bunclusterapi"

extract_rps() { echo "$1" | sed -n 's/.*RPS:\s*\([0-9.]*\).*/\1/p' | head -1; }

capture_stats() {
  local j=$(docker compose -f "$COMPOSE" stats --no-stream --format json "$1" 2>/dev/null || true)
  [ -z "$j" ] && { echo "N/A|N/A|N/A"; return; }
  local m=$(echo "$j" | sed -n 's/.*"MemUsage":"\([^"]*\)".*/\1/p')
  local c=$(echo "$j" | sed -n 's/.*"CPUPerc":"\([^"]*\)".*/\1/p')
  local p=$(echo "$j" | sed -n 's/.*"PIDs":"\([^"]*\)".*/\1/p')
  local mu=$(echo "${m:-N/A}" | sed 's/ \/ .*//')
  echo "${mu:-N/A}|${c:-N/A}|${p:-N/A}"
}

echo "=== DB ==="
docker compose -f "$COMPOSE" up -d db 2>&1 | tail -1
until docker compose -f "$COMPOSE" ps db --format json 2>/dev/null | grep -q '"Health":"healthy"'; do sleep 1; done

printf "\n%-26s | %8s | %8s | %6s | %8s | %8s | %6s | %10s\n" \
  "Framework" "REST RPS" "R Mem" "R CPU" "gRPC RPS" "G Mem" "G CPU" "Δ REST→gRPC"
printf "%-26s-|-%-8s-|-%-8s-|-%-6s-|-%-8s-|-%-8s-|-%-6s-|-%-10s\n" \
  "--------------------------" "--------" "--------" "------" "--------" "--------" "------" "----------"

ROWS=""
DT=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

for svc in $O; do
  IFS='|' read -r name hp gp dn <<< "${S[$svc]}"
  echo "=== $name ===" >&2
  docker compose -f "$COMPOSE" up -d "$svc" 2>&1 | tail -1
  ok=0
  for i in $(seq 1 60); do
    if curl -s -o /dev/null -w '%{http_code}' "http://127.0.0.1:${hp}/" 2>/dev/null | grep -q 200; then ok=1; break; fi
    sleep 1
  done
  [ "$ok" = "0" ] && { echo "SKIP $name" >&2; docker compose -f "$COMPOSE" stop -t 2 "$svc" 2>/dev/null; docker compose -f "$COMPOSE" rm -f "$svc" 2>/dev/null; continue; }
  for i in $(seq 1 15); do
    if timeout 1 bash -c "echo >/dev/tcp/127.0.0.1/${gp}" 2>/dev/null; then break; fi; sleep 1
  done
  sleep 2

  ro=$("$BENCH" --mode rest --url "http://127.0.0.1:${hp}/" --name "$name" --concurrency "$CONC" --requests "$TOTAL" 2>/dev/null)
  rr=$(extract_rps "$ro"); rr="${rr:-0}"
  echo "  $ro" >&2
  rs=$(capture_stats "$svc"); rm=$(echo "$rs"|cut -d'|' -f1); rc=$(echo "$rs"|cut -d'|' -f2); rp=$(echo "$rs"|cut -d'|' -f3)

  go=$("$BENCH" --mode grpc --url "http://127.0.0.1:${gp}" --name "$name" --concurrency "$CONC" --requests "$TOTAL" 2>/dev/null)
  gr=$(extract_rps "$go"); gr="${gr:-0}"
  echo "  $go" >&2
  gs=$(capture_stats "$svc"); gm=$(echo "$gs"|cut -d'|' -f1); gc=$(echo "$gs"|cut -d'|' -f2); gp2=$(echo "$gs"|cut -d'|' -f3)

  ratio="N/A"
  [ "$rr" != "0" ] && command -v bc &>/dev/null && ratio=$(echo "scale=1; ($gr - $rr) * 100 / $rr" | bc -l 2>/dev/null) && ratio="${ratio}%"

  printf "%-26s | %8s | %8s | %6s | %8s | %8s | %6s | %10s\n" "$name" "$rr" "$rm" "$rc" "$gr" "$gm" "$gc" "$ratio"

  mkdir -p "$RES/$dn"
  cat > "$RES/$dn/Unified.md" <<MDEOF
# $name — Unified REST + gRPC Benchmark

**Tested**: $DT
**Concurrency**: $CONC | **Total requests**: $TOTAL (10% warmup)

## Results
| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | $(echo "$ro"|sed -n 's/.*RPS: \([0-9.]*\).*p50: \([0-9.]*\)ms.*p99: \([0-9.]*\)ms.*p999: \([0-9.]*\)ms.*/\1 | \2ms | \3ms | \4ms/p') |
| gRPC  | $(echo "$go"|sed -n 's/.*RPS: \([0-9.]*\).*p50: \([0-9.]*\)ms.*p99: \([0-9.]*\)ms.*p999: \([0-9.]*\)ms.*/\1 | \2ms | \3ms | \4ms/p') |

**gRPC vs REST**: $ratio

## Resource Usage
| Phase | Memory | CPU | PIDs |
| ----- | ------ | --- | ---- |
| REST  | $rm | $rc | $rp |
| gRPC  | $gm | $gc | $gp2 |
MDEOF

  ROWS+="| $name | $rr | $rm | $rc | $gr | $gm | $gc | $ratio |"$'\n'

  docker compose -f "$COMPOSE" stop -t 2 "$svc" 2>/dev/null || true
  docker compose -f "$COMPOSE" rm -f "$svc" 2>/dev/null || true
  docker compose -f "$COMPOSE" exec -T db psql -U apiuser -d ordersdb -c "SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname='ordersdb' AND state='idle' AND pid <> pg_backend_pid();" 2>/dev/null || true
  sleep 3
done

cat > "$RES/Summary.Unified.md" <<MDEOF
# Unified REST + gRPC Performance Results — Summary

**Generated**: $DT  
**Concurrency**: $CONC | **Total requests**: $TOTAL (10% warmup)

## Results
| Framework | REST RPS | R Mem | R CPU | gRPC RPS | G Mem | G CPU | Δ REST→gRPC |
| --- | --- | --- | --- | --- | --- | --- | --- |
$ROWS
MDEOF

echo "=== DONE HelloWorld ==="
echo "Summary: $RES/Summary.Unified.md"
