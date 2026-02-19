# PostgreSQL Orders Performance Test Results — Summary

**Generated**: 2026-02-19 06:38:21 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/postgresql/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/postgresql/orders` (PostgreSQL Orders)

## Results

| Framework | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| --------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Bun API   | 8002 | 14,329.11 | 8.37ms      | 35.01ms     | 286,719        | 152.91MB     | 72.32MiB |
| .NET API  | 8001 | 8,544.47  | 21.23ms     | 119.86ms    | 171,119        | 90.78MB      | 70.07MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
