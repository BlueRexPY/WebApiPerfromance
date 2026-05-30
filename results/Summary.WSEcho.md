# WS Echo Performance Test Results — Summary

**Generated**: 2026-05-30 19:09:38 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/echo`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/echo` (WS Echo)

## Results

| Framework   | Port | Req/sec  | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ----------- | ---- | -------- | ----------- | ----------- | -------------- | ------------ | -------- |
| C# .NET API | 8001 | 3,265.54 | 5.041246ms  | 60ms        | 65,438         | N/A          | 46.49MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
