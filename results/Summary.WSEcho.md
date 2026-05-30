# WS Echo Performance Test Results — Summary

**Generated**: 2026-05-30 22:42:11 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/echo`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/echo` (WS Echo)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| C# .NET AOT | 8013 | 3,421.39 | 2.433218ms | 35ms | 68,576 | N/A | 42.44MiB |
| JS Bun | 8002 | 3,306.41 | 1.875678ms | 21ms | 66,256 | N/A | 17.94MiB |
| C# Carter AOT | 8036 | 3,285.39 | 2.659972ms | 26ms | 65,894 | N/A | 42.16MiB |
| Rust Actix | 8005 | 3,273.95 | 1.040941ms | 17ms | 65,638 | N/A | 4.555MiB |
| Rust Axum | 8022 | 3,252.22 | 1.223297ms | 26ms | 65,177 | N/A | 3.07MiB |
| F# .NET AOT | 8020 | 3,248.73 | 2.597882ms | 33ms | 65,148 | N/A | 38.65MiB |
| C# Carter | 8035 | 3,154.32 | 4.845277ms | 51ms | 63,245 | N/A | 46.7MiB |
| C# .NET API | 8001 | 3,146.18 | 5.273728ms | 61ms | 63,072 | N/A | 46.19MiB |
| JS Node Bun Cluster | 8047 | 3,126.45 | 1.140738ms | 42ms | 62,679 | N/A | 42.55MiB |
| F# .NET API | 8019 | 3,098.91 | 5.449474ms | 48ms | 62,115 | N/A | 46.3MiB |
| JS Node NestJS Express | 8029 | 2,714.05 | 0.437995ms | 17ms | 54,392 | N/A | 23.57MiB |
| JS Deno | 8011 | 2,225.12 | 6.631169ms | 40ms | 44,603 | N/A | 24.98MiB |
| JS Node Hono | 8039 | 32.98 | 0ms | 0ms | 1,649 | N/A | 19.46MiB |
| JS Node Fastify | 8003 | 0.00 | 0ms | 0ms | 0 | N/A | 20.56MiB |
| JS Node Express | 8014 | 0.00 | 0ms | 0ms | 0 | N/A | 19.83MiB |
| JS Node NestJS Fastify | 8030 | 0.00 | 0ms | 0ms | 0 | N/A | 27.68MiB |
| JS Node Koa | 8038 | 0.00 | 0ms | 0ms | 0 | N/A | 19.38MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
