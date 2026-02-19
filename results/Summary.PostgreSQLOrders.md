# PostgreSQL Orders Performance Test Results — Summary

**Generated**: 2026-02-19 07:02:18 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/postgresql/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/postgresql/orders` (PostgreSQL Orders)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Bun API | 8002 | 14,602.34 | 8.21ms | 19.53ms | 292,062 | 155.83MB | 38.65MiB |
| .NET API | 8001 | 13,271.98 | 17.36ms | 90.61ms | 265,587 | 141.00MB | 69.98MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
