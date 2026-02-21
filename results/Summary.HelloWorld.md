# Hello World Performance Test Results — Summary

**Generated**: 2026-02-21 06:40:21 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results

| Framework                 | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Haskell Servant           | 8006 | 185,813.73 | 703.71us    | 84.63ms     | 3,716,357      | 33.85MB      | 297.1MiB |
| JS Deno Parallel          | 8048 | 166,758.54 | 0.90ms      | 74.78ms     | 3,335,523      | 25.13MB      | 82.07MiB |
| Rust Axum                 | 8022 | 160,085.78 | 714.95us    | 47.65ms     | 3,202,007      | 20.61MB      | 3.754MiB |
| JS Fastify Cluster        | 8042 | 154,504.70 | 1.60ms      | 197.81ms    | 3,090,521      | 29.17MB      | 67.56MiB |
| JS Deno                   | 8011 | 142,008.63 | 0.89ms      | 55.51ms     | 2,840,349      | 21.40MB      | 108.3MiB |
| JS Bun                    | 8002 | 138,779.81 | 0.99ms      | 89.17ms     | 2,775,838      | 17.87MB      | 61.32MiB |
| JS Bun Cluster            | 8047 | 133,348.37 | 1.37ms      | 53.44ms     | 2,668,839      | 17.17MB      | 44.05MiB |
| JS Koa Cluster            | 8044 | 128,326.33 | 1.44ms      | 148.60ms    | 2,566,940      | 24.11MB      | 64.74MiB |
| JS NestJS Fastify Cluster | 8046 | 125,338.02 | 1.67ms      | 204.23ms    | 2,507,133      | 23.67MB      | 86.33MiB |
| Erlang Cowboy             | 8010 | 108,596.31 | 1.18ms      | 69.26ms     | 2,172,176      | 15.64MB      | 110.1MiB |
| JS Fastify                | 8003 | 100,921.74 | 1.64ms      | 245.68ms    | 2,018,702      | 19.06MB      | 90.28MiB |
| JS Hono Cluster           | 8043 | 92,498.68  | 2.27ms      | 261.50ms    | 1,850,262      | 16.05MB      | 65.12MiB |
| JS NestJS Fastify         | 8030 | 87,719.48  | 1.86ms      | 244.97ms    | 1,754,643      | 16.56MB      | 33.78MiB |
| C# .NET AOT               | 8013 | 80,032.55  | 3.98ms      | 70.59ms     | 1,600,855      | 14.20MB      | 15.34MiB |
| C# Carter AOT             | 8036 | 73,824.65  | 4.72ms      | 74.36ms     | 1,476,848      | 13.10MB      | 14.98MiB |
| C# Carter                 | 8035 | 70,599.66  | 4.23ms      | 79.56ms     | 1,412,302      | 12.52MB      | 31.99MiB |
| F# .NET AOT               | 8020 | 70,274.78  | 5.07ms      | 74.13ms     | 1,406,681      | 12.47MB      | 15.45MiB |
| Elixir Plug               | 8034 | 69,919.49  | 2.07ms      | 71.02ms     | 1,398,547      | 14.54MB      | 160.5MiB |
| C# .NET API               | 8001 | 68,495.90  | 5.84ms      | 80.25ms     | 1,370,303      | 12.15MB      | 32.61MiB |
| F# .NET API               | 8019 | 68,313.43  | 5.66ms      | 81.19ms     | 1,367,428      | 12.12MB      | 39.94MiB |
| Elixir Phoenix            | 8007 | 67,091.97  | 2.12ms      | 88.15ms     | 1,342,011      | 16.25MB      | 186.7MiB |
| C Microhttpd              | 8018 | 59,634.69  | 12.47ms     | 70.84ms     | 1,194,125      | 7.68MB       | 11.93MiB |
| JS Koa                    | 8038 | 57,831.27  | 2.62ms      | 306.44ms    | 1,156,768      | 10.86MB      | 26.36MiB |
| Rust Actix                | 8005 | 51,658.53  | 11.60ms     | 65.38ms     | 1,033,337      | 6.65MB       | 4.469MiB |
| Zig zap                   | 8024 | 46,060.17  | 14.64ms     | 78.95ms     | 922,067        | 8.79MB       | 31.94MiB |
| C++ Drogon                | 8017 | 43,358.87  | 13.77ms     | 72.20ms     | 867,315        | 7.11MB       | 16.37MiB |
| JS Hono                   | 8039 | 42,931.40  | 3.86ms      | 420.64ms    | 858,748        | 7.45MB       | 28.5MiB  |
| JS Express Cluster        | 8041 | 41,453.36  | 4.91ms      | 301.45ms    | 829,224        | 7.79MB       | 85.52MiB |
| Swift Vapor               | 8012 | 39,226.07  | 3.14ms      | 89.18ms     | 784,615        | 6.51MB       | 38.1MiB  |
| C libuv                   | 8031 | 36,984.32  | 2.60ms      | 40.81ms     | 740,036        | 4.13MB       | 4.035MiB |
| Java Quarkus              | 8021 | 36,468.24  | 10.92ms     | 121.21ms    | 729,580        | 3.90MB       | 160.3MiB |
| Go Fiber                  | 8008 | 33,699.88  | 18.91ms     | 136.12ms    | 674,858        | 4.82MB       | 13.04MiB |
| Ruby Falcon               | 8040 | 33,294.17  | 11.29ms     | 63.36ms     | 666,781        | 3.84MB       | 89.22MiB |
| JS NestJS Express Cluster | 8045 | 32,234.77  | 6.27ms      | 377.36ms    | 644,756        | 8.05MB       | 102.5MiB |
| Java Spring Boot          | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
| Java Micronaut            | 8026 | 30,816.49  | 13.84ms     | 127.61ms    | 616,499        | 3.97MB       | 111.4MiB |
| JS Express                | 8014 | 30,646.63  | 4.87ms      | 406.17ms    | 613,046        | 5.76MB       | 39.7MiB  |
| Kotlin Ktor               | 8027 | 26,392.53  | 13.53ms     | 108.33ms    | 527,895        | 2.47MB       | 173.5MiB |
| Python FastAPI            | 8004 | 26,128.34  | 12.14ms     | 68.81ms     | 522,898        | 3.79MB       | 209.5MiB |
| JS NestJS Express         | 8029 | 22,594.41  | 7.17ms      | 539.74ms    | 451,933        | 5.65MB       | 45.64MiB |
| Go Chi                    | 8023 | 20,670.33  | 21.06ms     | 94.38ms     | 413,480        | 2.68MB       | 18.82MiB |
| Go net/http               | 8032 | 19,104.87  | 21.36ms     | 133.70ms    | 382,352        | 2.48MB       | 17.21MiB |
| PHP Swoole                | 8028 | 15,856.33  | 24.44ms     | 98.82ms     | 317,270        | 2.83MB       | 57.5MiB  |
| Python Litestar           | 8000 | 13,861.22  | 19.59ms     | 78.61ms     | 277,275        | 2.01MB       | 184.7MiB |
| Ruby Sinatra              | 8033 | 3,419.24   | 132.06ms    | 700.13ms    | 68,422         | 440.74KB     | 63.75MiB |
| PHP Laravel               | 8037 | 3,299.74   | 45.12ms     | 281.49ms    | 66,111         | 712.15KB     | 156.8MiB |
| Ruby Rails                | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Python Django             | 8016 | 1,082.71\* | 149.23ms    | 1.69s       | 21,723         | 319.34KB     | 437.3MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
