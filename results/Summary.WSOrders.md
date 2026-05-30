# WS Orders Performance Test Results — Summary

**Generated**: 2026-05-30 23:53:52 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/orders`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/orders` (WS Orders)

## Results

| Framework                      | Port | Req/sec  | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------------ | ---- | -------- | ----------- | ----------- | -------------- | ------------ | -------- |
| C# .NET AOT                    | 8013 | 3,049.43 | 8.043334ms  | 63ms        | 61,136         | N/A          | 60.82MiB |
| JS Node AdonisJS Cluster       | 8091 | 3,001.26 | 0ms         | 0ms         | 60,182         | N/A          | 121.4MiB |
| Rust Actix                     | 8005 | 2,992.05 | 9.990471ms  | 445ms       | 59,959         | N/A          | 11.31MiB |
| F# .NET AOT                    | 8020 | 2,981.39 | 9.058304ms  | 77ms        | 59,747         | N/A          | 60.55MiB |
| C# Carter AOT                  | 8036 | 2,961.26 | 9.970103ms  | 118ms       | 59,346         | N/A          | 57.62MiB |
| Rust Axum                      | 8022 | 2,949.83 | 9.369969ms  | 157ms       | 59,113         | N/A          | 9.691MiB |
| JS Node AdonisJS               | 8088 | 2,945.31 | 0ms         | 0ms         | 59,024         | N/A          | 49.56MiB |
| JS Node Nitro                  | 8089 | 2,753.51 | 0ms         | 0ms         | 55,182         | N/A          | 16.18MiB |
| JS Bun                         | 8002 | 2,697.11 | 7.786266ms  | 44ms        | 54,057         | N/A          | 23.1MiB  |
| C# .NET API                    | 8001 | 2,664.70 | 18.879532ms | 146ms       | 53,411         | N/A          | 79.7MiB  |
| F# .NET API                    | 8019 | 2,577.43 | 18.490002ms | 194ms       | 51,653         | N/A          | 86.99MiB |
| C# Carter                      | 8035 | 2,467.31 | 21.309035ms | 218ms       | 49,456         | N/A          | 84.09MiB |
| JS Bun Hono Cluster            | 8057 | 2,453.70 | 23.677489ms | 313ms       | 49,185         | N/A          | 104.1MiB |
| JS Node Nitro Cluster          | 8093 | 2,452.57 | 0ms         | 0ms         | 49,172         | N/A          | 57.3MiB  |
| JS Node Bun Cluster            | 8047 | 2,442.93 | 22.925916ms | 383ms       | 48,929         | N/A          | 111.7MiB |
| JS Bun Fastify Cluster         | 8056 | 2,413.43 | 25.467564ms | 303ms       | 48,371         | N/A          | 129.1MiB |
| JS Bun Express Cluster         | 8055 | 2,371.23 | 25.330913ms | 523ms       | 47,534         | N/A          | 114.6MiB |
| JS Bun Koa Cluster             | 8058 | 2,335.13 | 25.821093ms | 288ms       | 46,794         | N/A          | 121.1MiB |
| JS Bun NestJS Express Cluster  | 8059 | 2,306.40 | 31.109522ms | 192ms       | 46,253         | N/A          | 145.7MiB |
| JS Bun NestJS Fastify Cluster  | 8060 | 2,223.30 | 33.888728ms | 132ms       | 44,564         | N/A          | 142.1MiB |
| JS Bun Fastify                 | 8050 | 2,202.36 | 30.45977ms  | 330ms       | 44,186         | N/A          | 64.65MiB |
| JS Bun Elysia Cluster          | 8087 | 2,196.05 | 25.998938ms | 274ms       | 44,024         | N/A          | 151.5MiB |
| JS Bun NestJS Express          | 8053 | 2,182.78 | 32.350822ms | 76ms        | 43,739         | N/A          | 59.07MiB |
| JS Bun Express                 | 8049 | 2,152.86 | 32.748789ms | 292ms       | 43,181         | N/A          | 57.25MiB |
| JS Bun Hono                    | 8051 | 2,145.53 | 34.500369ms | 339ms       | 43,006         | N/A          | 44.48MiB |
| JS Deno Parallel               | 8048 | 2,091.08 | 31.836479ms | 383ms       | 41,912         | N/A          | 200.4MiB |
| JS Bun Elysia                  | 8086 | 2,044.21 | 34.065384ms | 341ms       | 40,993         | N/A          | 83.29MiB |
| JS Bun NestJS Fastify          | 8054 | 2,032.36 | 37.720789ms | 130ms       | 40,749         | N/A          | 63.37MiB |
| JS Bun Koa                     | 8052 | 1,935.94 | 40.581355ms | 409ms       | 38,810         | N/A          | 55.71MiB |
| JS Node Hono Cluster           | 8043 | 1,922.81 | 4.000957ms  | 101ms       | 38,525         | N/A          | 96.79MiB |
| JS Node NestJS Fastify Cluster | 8046 | 1,915.85 | 3.175166ms  | 73ms        | 38,400         | N/A          | 121MiB   |
| JS Node Express Cluster        | 8041 | 1,858.64 | 4.254489ms  | 131ms       | 37,303         | N/A          | 98.7MiB  |
| JS Node NestJS Express Cluster | 8045 | 1,801.37 | 3.388545ms  | 62ms        | 36,120         | N/A          | 114.5MiB |
| JS Node Fastify Cluster        | 8042 | 1,798.21 | 4.512097ms  | 202ms       | 36,041         | N/A          | 102.7MiB |
| JS Deno                        | 8011 | 1,652.45 | 38.274367ms | 379ms       | 33,118         | N/A          | 144.7MiB |
| JS Node Koa Cluster            | 8044 | 1,649.74 | 6.058386ms  | 489ms       | 33,104         | N/A          | 97.5MiB  |
| JS Node Express                | 8014 | 1,606.95 | 2.550537ms  | 84ms        | 32,213         | N/A          | 37.78MiB |
| JS Node NestJS Express         | 8029 | 1,561.86 | 2.080351ms  | 90ms        | 31,302         | N/A          | 44.14MiB |
| JS Node Hono                   | 8039 | 1,494.77 | 2.929763ms  | 178ms       | 29,956         | N/A          | 35.67MiB |
| JS Node Koa                    | 8038 | 1,348.00 | 2.98505ms   | 155ms       | 27,090         | N/A          | 37.02MiB |
| JS Node Fastify                | 8003 | 1,178.77 | 12.674553ms | 205ms       | 23,755         | N/A          | 40.14MiB |
| JS Node NestJS Fastify         | 8030 | 492.27   | 38.762891ms | 248ms       | 9,949          | N/A          | 45.66MiB |
| JS Bun AdonisJS                | 8090 | 1.36     | 0ms         | 0ms         | 68             | N/A          | 64.54MiB |
| JS Bun AdonisJS Cluster        | 8092 | 0.96     | 0ms         | 0ms         | 48             | N/A          | 178.8MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
