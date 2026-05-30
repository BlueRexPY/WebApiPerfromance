# WS Orders Performance Test Results — Summary

**Generated**: 2026-05-30 21:15:46 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/orders`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/orders` (WS Orders)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| C# .NET AOT | 8013 | 3,049.43 | 8.043334ms | 63ms | 61,136 | N/A | 60.82MiB |
| Rust Actix | 8005 | 2,992.05 | 9.990471ms | 445ms | 59,959 | N/A | 11.31MiB |
| F# .NET AOT | 8020 | 2,981.39 | 9.058304ms | 77ms | 59,747 | N/A | 60.55MiB |
| C# Carter AOT | 8036 | 2,961.26 | 9.970103ms | 118ms | 59,346 | N/A | 57.62MiB |
| Rust Axum | 8022 | 2,949.83 | 9.369969ms | 157ms | 59,113 | N/A | 9.691MiB |
| C# .NET API | 8001 | 2,664.70 | 18.879532ms | 146ms | 53,411 | N/A | 79.7MiB |
| JS Node Bun Cluster | 8047 | 2,601.38 | 23.960936ms | 384ms | 52,123 | N/A | 81.34MiB |
| F# .NET API | 8019 | 2,577.43 | 18.490002ms | 194ms | 51,653 | N/A | 86.99MiB |
| C# Carter | 8035 | 2,467.31 | 21.309035ms | 218ms | 49,456 | N/A | 84.09MiB |
| JS Bun | 8002 | 2,234.80 | 31.331987ms | 355ms | 44,816 | N/A | 46.45MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
