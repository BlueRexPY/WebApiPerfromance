#!/bin/bash
services=("gochi" "goechoapi" "gofiber" "gogin" "gonethttp" "rustactix" "rustaxum")
for svc in "${services[@]}"; do
  echo ">>> Testing $svc..."
  python3 -m benchmarks run -s "$svc" -t sse_hello -t sse_orders -t grpc_hello -t grpc_orders
done
python3 -m benchmarks summary
echo "ALL TESTS COMPLETED"
