# WS Echo Performance Test Results — Summary

**Generated**: 2026-05-30 23:54:56 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/echo`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/echo` (WS Echo)

## Results

| Framework                      | Port | Req/sec  | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------------ | ---- | -------- | ----------- | ----------- | -------------- | ------------ | -------- |
| C# .NET AOT                    | 8013 | 3,421.39 | 2.433218ms  | 35ms        | 68,576         | N/A          | 42.44MiB |
| JS Bun                         | 8002 | 3,306.41 | 1.875678ms  | 21ms        | 66,256         | N/A          | 17.94MiB |
| C# Carter AOT                  | 8036 | 3,285.39 | 2.659972ms  | 26ms        | 65,894         | N/A          | 42.16MiB |
| Rust Actix                     | 8005 | 3,273.95 | 1.040941ms  | 17ms        | 65,638         | N/A          | 4.555MiB |
| Rust Axum                      | 8022 | 3,252.22 | 1.223297ms  | 26ms        | 65,177         | N/A          | 3.07MiB  |
| F# .NET AOT                    | 8020 | 3,248.73 | 2.597882ms  | 33ms        | 65,148         | N/A          | 38.65MiB |
| JS Bun Fastify Cluster         | 8056 | 3,179.15 | 1.840888ms  | 49ms        | 63,729         | N/A          | 168.7MiB |
| JS Bun Express Cluster         | 8055 | 3,174.30 | 1.781474ms  | 53ms        | 63,636         | N/A          | 94.72MiB |
| JS Bun Hono Cluster            | 8057 | 3,172.46 | 1.226711ms  | 36ms        | 63,606         | N/A          | 53.13MiB |
| C# Carter                      | 8035 | 3,154.32 | 4.845277ms  | 51ms        | 63,245         | N/A          | 46.7MiB  |
| C# .NET API                    | 8001 | 3,146.18 | 5.273728ms  | 61ms        | 63,072         | N/A          | 46.19MiB |
| JS Bun Koa Cluster             | 8058 | 3,145.75 | 1.822884ms  | 52ms        | 63,149         | N/A          | 81.47MiB |
| JS Bun NestJS Express Cluster  | 8059 | 3,103.79 | 2.070683ms  | 49ms        | 62,218         | N/A          | 102.2MiB |
| F# .NET API                    | 8019 | 3,098.91 | 5.449474ms  | 48ms        | 62,115         | N/A          | 46.3MiB  |
| JS Bun NestJS Fastify          | 8054 | 3,092.72 | 3.2932ms    | 42ms        | 62,000         | N/A          | 47.41MiB |
| JS Bun NestJS Express          | 8053 | 3,072.45 | 2.75523ms   | 35ms        | 61,593         | N/A          | 84.99MiB |
| JS Bun NestJS Fastify Cluster  | 8060 | 3,070.99 | 2.079582ms  | 46ms        | 61,594         | N/A          | 123.9MiB |
| JS Node AdonisJS               | 8088 | 2,988.29 | 0ms         | 0ms         | 59,917         | N/A          | 45.76MiB |
| JS Bun Elysia                  | 8086 | 2,876.51 | 3.172423ms  | 26ms        | 57,684         | N/A          | 48.49MiB |
| JS Bun Elysia Cluster          | 8087 | 2,829.74 | 3.219279ms  | 65ms        | 56,719         | N/A          | 135.2MiB |
| JS Node Nitro                  | 8089 | 2,789.05 | 0ms         | 0ms         | 55,902         | N/A          | 31.7MiB  |
| JS Node Fastify Cluster        | 8042 | 2,731.03 | 0.877591ms  | 80ms        | 54,730         | N/A          | 97.08MiB |
| JS Node NestJS Fastify Cluster | 8046 | 2,726.66 | 0.821897ms  | 65ms        | 54,667         | N/A          | 114.7MiB |
| JS Node NestJS Express         | 8029 | 2,714.05 | 0.437995ms  | 17ms        | 54,392         | N/A          | 23.57MiB |
| JS Node Nitro Cluster          | 8093 | 2,662.30 | 0ms         | 0ms         | 53,367         | N/A          | 87.78MiB |
| JS Node Express Cluster        | 8041 | 2,656.40 | 0.96784ms   | 61ms        | 53,230         | N/A          | 94.75MiB |
| JS Node NestJS Express Cluster | 8045 | 2,645.64 | 0.901447ms  | 52ms        | 53,021         | N/A          | 108.3MiB |
| JS Node Hono Cluster           | 8043 | 2,628.17 | 1.475734ms  | 61ms        | 52,705         | N/A          | 93.27MiB |
| JS Node Hono                   | 8039 | 2,552.14 | 0.53989ms   | 35ms        | 51,170         | N/A          | 17.95MiB |
| JS Node NestJS Fastify         | 8030 | 2,382.30 | 0.763961ms  | 50ms        | 47,765         | N/A          | 30.57MiB |
| JS Node Koa                    | 8038 | 2,291.79 | 0.414436ms  | 23ms        | 45,939         | N/A          | 18.55MiB |
| JS Deno                        | 8011 | 2,225.12 | 6.631169ms  | 40ms        | 44,603         | N/A          | 24.98MiB |
| JS Deno Parallel               | 8048 | 2,196.13 | 2.678768ms  | 20ms        | 44,021         | N/A          | 72.12MiB |
| JS Node Bun Cluster            | 8047 | 2,140.26 | 1.865965ms  | 38ms        | 42,904         | N/A          | 41.38MiB |
| JS Bun Hono                    | 8051 | 2,125.38 | 2.333985ms  | 26ms        | 42,606         | N/A          | 18.34MiB |
| JS Bun Express                 | 8049 | 2,119.38 | 3.115103ms  | 24ms        | 42,480         | N/A          | 36.31MiB |
| JS Bun Koa                     | 8052 | 2,071.59 | 3.601675ms  | 26ms        | 41,526         | N/A          | 36.67MiB |
| JS Bun Fastify                 | 8050 | 2,049.08 | 3.151311ms  | 50ms        | 41,078         | N/A          | 40.45MiB |
| JS Node Koa Cluster            | 8044 | 2,021.33 | 6.369718ms  | 25ms        | 40,525         | N/A          | 49.52MiB |
| JS Node AdonisJS Cluster       | 8091 | 1,961.71 | 0ms         | 0ms         | 39,300         | N/A          | 96.71MiB |
| JS Bun AdonisJS                | 8090 | 0.88     | 0ms         | 0ms         | 44             | N/A          | 67.82MiB |
| JS Bun AdonisJS Cluster        | 8092 | 0.36     | 0ms         | 0ms         | 18             | N/A          | 176.4MiB |
| JS Node Fastify                | 8003 | 0.00     | 0ms         | 0ms         | 0              | N/A          | 20.56MiB |
| JS Node Express                | 8014 | 0.00     | 0ms         | 0ms         | 0              | N/A          | 19.83MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
