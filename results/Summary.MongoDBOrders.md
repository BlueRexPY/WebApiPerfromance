# MongoDB Orders Performance Test Results — Summary

**Generated**: 2026-02-19 06:52:32 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/mongodb/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/mongodb/orders` (MongoDB Orders)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| .NET API | 8001 | 3,927.45\* | 32.01ms | 193.26ms | 78,668 | 425.73KB | 86.09MiB |
| Bun API | 8002 | 3,088.52 | 38.82ms | 116.03ms | 61,788 | 32.84MB | 93.93MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
