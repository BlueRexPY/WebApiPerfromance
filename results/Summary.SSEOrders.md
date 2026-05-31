# SSE Orders Performance Test Results — Summary

**Generated**: 2026-05-31 17:40:04 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/sse/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/sse/orders` (SSE Orders)

## Results

| Framework               | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ----------------------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ | -------- |
| C# .NET API             | 8001 | 11,747.36 | 11.75ms     | 105.09ms    | 235,125        | 139.69MB     | 61.12MiB |
| JS Node Bun Cluster     | 8047 | 4,080.44  | 30.14ms     | 336.11ms    | 81,621         | 47.42MB      | 223.7MiB |
| JS Bun                  | 8002 | 2,435.01  | 50.49ms     | 377.13ms    | 48,720         | 28.30MB      | 62.29MiB |
| JS Node Express Cluster | 8041 | 2,393.14  | 52.12ms     | 777.49ms    | 47,878         | 28.75MB      | 111.1MiB |
| JS Node Express         | 8014 | 1,529.82  | 79.13ms     | 524.46ms    | 30,616         | 18.38MB      | 52.31MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
