# PostgreSQL Orders Performance Test Results — Summary

**Generated**: 2026-02-19 06:52:32 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/postgresql/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/postgresql/orders` (PostgreSQL Orders)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Bun API | 8002 | 14,966.10 | 8.02ms | 30.99ms | 299,364 | 159.71MB | 38.77MiB |
| .NET API | 8001 | 13,271.98 | 17.36ms | 90.61ms | 265,587 | 141.00MB | 69.98MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
