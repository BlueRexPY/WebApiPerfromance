# WS Orders Performance Test Results — Summary

**Generated**: 2026-05-30 19:10:44 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/orders`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/orders` (WS Orders)

## Results

| Framework   | Port | Req/sec  | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ----------- | ---- | -------- | ----------- | ----------- | -------------- | ------------ | -------- |
| C# .NET API | 8001 | 2,740.04 | 18.551785ms | 212ms       | 54,895         | N/A          | 83.18MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
