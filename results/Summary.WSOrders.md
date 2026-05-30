# WS Orders Performance Test Results — Summary

**Generated**: 2026-05-30 22:43:18 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/orders`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/orders` (WS Orders)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| C# .NET AOT | 8013 | 3,049.43 | 8.043334ms | 63ms | 61,136 | N/A | 60.82MiB |
| JS Node Bun Cluster | 8047 | 3,049.00 | 4.663735ms | 39ms | 61,180 | N/A | 53.44MiB |
| Rust Actix | 8005 | 2,992.05 | 9.990471ms | 445ms | 59,959 | N/A | 11.31MiB |
| F# .NET AOT | 8020 | 2,981.39 | 9.058304ms | 77ms | 59,747 | N/A | 60.55MiB |
| C# Carter AOT | 8036 | 2,961.26 | 9.970103ms | 118ms | 59,346 | N/A | 57.62MiB |
| Rust Axum | 8022 | 2,949.83 | 9.369969ms | 157ms | 59,113 | N/A | 9.691MiB |
| JS Bun | 8002 | 2,697.11 | 7.786266ms | 44ms | 54,057 | N/A | 23.1MiB |
| C# .NET API | 8001 | 2,664.70 | 18.879532ms | 146ms | 53,411 | N/A | 79.7MiB |
| F# .NET API | 8019 | 2,577.43 | 18.490002ms | 194ms | 51,653 | N/A | 86.99MiB |
| C# Carter | 8035 | 2,467.31 | 21.309035ms | 218ms | 49,456 | N/A | 84.09MiB |
| JS Deno | 8011 | 1,652.45 | 38.274367ms | 379ms | 33,118 | N/A | 144.7MiB |
| JS Node Express | 8014 | 1,606.95 | 2.550537ms | 84ms | 32,213 | N/A | 37.78MiB |
| JS Node NestJS Express | 8029 | 1,561.86 | 2.080351ms | 90ms | 31,302 | N/A | 44.14MiB |
| JS Node Hono | 8039 | 1,494.77 | 2.929763ms | 178ms | 29,956 | N/A | 35.67MiB |
| JS Node Koa | 8038 | 1,348.00 | 2.98505ms | 155ms | 27,090 | N/A | 37.02MiB |
| JS Node Fastify | 8003 | 1,178.77 | 12.674553ms | 205ms | 23,755 | N/A | 40.14MiB |
| JS Node NestJS Fastify | 8030 | 492.27 | 38.762891ms | 248ms | 9,949 | N/A | 45.66MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
