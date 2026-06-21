#!/usr/bin/env bash
set -euo pipefail
cd /home/admin/Projects/Python/WebApiPerfromance
BENCH=./bench/target/release/bench

# service_name|http_port|grpc_port|display_name
SERVICES=(
  "dotnetapi|8001|9001|C# .NET API"
  "gochi|8023|9023|Go Chi"
  "goechoapi|8096|9096|Go Echo"
  "gofiber|8008|9008|Go Fiber"
  "expressapi|8014|9014|JS Node Express"
  "expressclusterapi|8041|9041|JS Node Express Cluster"
  "bunapi|8002|9002|JS Bun"
  "bunclusterapi|8047|9047|JS Bun Cluster"
  "pythonsanic|8098|9098|Python Sanic"
  "pythonquart|8099|9099|Python Quart"
  "rustrocket|8100|9100|Rust Rocket"
  "rustwarp|8101|9101|Rust Warp"
)

docker compose down 2>/dev/null
docker compose up -d db 2>&1 | tail -1
until docker compose ps db --format json 2>/dev/null | grep -q '"Health":"healthy"'; do sleep 1; done
echo "DB ready"

echo "Framework | REST RPS | gRPC RPS | gRPC vs REST"
echo "--- | --- | --- | ---"

for entry in "${SERVICES[@]}"; do
  IFS='|' read svc hp gp name <<< "$entry"
  echo "=== $name ===" >&2
  docker compose up -d "$svc" 2>&1 | tail -1
  sleep 15
  
  echo "  REST..." >&2
  rest_out=$($BENCH --mode rest --url "http://127.0.0.1:${hp}/orders" --name "$name" -c 120 -n 100000 2>&1) || true
  rest_rps=$(echo "$rest_out" | sed -n 's/.*RPS: \([0-9.]*\).*/\1/p')
  echo "  $rest_out" >&2
  
  echo "  gRPC..." >&2
  grpc_out=$($BENCH --mode grpc --url "http://127.0.0.1:${gp}" --name "$name" --endpoint orders -c 120 -n 100000 2>&1) || true
  grpc_rps=$(echo "$grpc_out" | sed -n 's/.*RPS: \([0-9.]*\).*/\1/p')
  echo "  $grpc_out" >&2
  
  pct="N/A"
  [ -n "$rest_rps" ] && [ -n "$grpc_rps" ] && [ "$rest_rps" != "0" ] && pct=$(echo "scale=1; ($grpc_rps - $rest_rps) / $rest_rps * 100" | bc) && pct="${pct}%"
  echo "| $name | $rest_rps | $grpc_rps | $pct |"
  
  docker compose down "$svc" 2>/dev/null
done

echo "DONE"
