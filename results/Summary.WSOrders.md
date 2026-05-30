# WS Orders Performance Test Results — Summary

**Generated**: 2026-05-30 21:25:48 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/orders`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/orders` (WS Orders)

## Results

| Framework           | Port | Req/sec  | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------- | ---- | -------- | ----------- | ----------- | -------------- | ------------ | -------- |
| C# .NET AOT         | 8013 | 3,049.43 | 8.043334ms  | 63ms        | 61,136         | N/A          | 60.82MiB |
| JS Node Bun Cluster | 8047 | 3,049.00 | 4.663735ms  | 39ms        | 61,180         | N/A          | 53.44MiB |
| Rust Actix          | 8005 | 2,992.05 | 9.990471ms  | 445ms       | 59,959         | N/A          | 11.31MiB |
| F# .NET AOT         | 8020 | 2,981.39 | 9.058304ms  | 77ms        | 59,747         | N/A          | 60.55MiB |
| C# Carter AOT       | 8036 | 2,961.26 | 9.970103ms  | 118ms       | 59,346         | N/A          | 57.62MiB |
| Rust Axum           | 8022 | 2,949.83 | 9.369969ms  | 157ms       | 59,113         | N/A          | 9.691MiB |
| JS Bun              | 8002 | 2,697.11 | 7.786266ms  | 44ms        | 54,057         | N/A          | 23.1MiB  |
| C# .NET API         | 8001 | 2,664.70 | 18.879532ms | 146ms       | 53,411         | N/A          | 79.7MiB  |
| F# .NET API         | 8019 | 2,577.43 | 18.490002ms | 194ms       | 51,653         | N/A          | 86.99MiB |
| C# Carter           | 8035 | 2,467.31 | 21.309035ms | 218ms       | 49,456         | N/A          | 84.09MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
