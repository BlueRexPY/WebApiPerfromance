# Hello World Performance Test Results — Summary

**Generated**: 2026-02-21 12:39:24 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results

| Framework                      | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------------ | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Rust Actix                     | 8005 | 204,901.52 | 563.69us    | 51.45ms     | 4,098,380      | 26.38MB      | 5.477MiB |
| Haskell Servant                | 8006 | 185,813.73 | 703.71us    | 84.63ms     | 3,716,357      | 33.85MB      | 297.1MiB |
| JS Deno Parallel               | 8048 | 167,880.22 | 841.65us    | 62.51ms     | 3,358,386      | 25.30MB      | 72.3MiB  |
| Rust Axum                      | 8022 | 160,085.78 | 714.95us    | 47.65ms     | 3,202,007      | 20.61MB      | 3.754MiB |
| JS Node Fastify Cluster        | 8042 | 154,504.70 | 1.60ms      | 197.81ms    | 3,090,521      | 29.17MB      | 67.56MiB |
| JS Deno                        | 8011 | 142,008.63 | 0.89ms      | 55.51ms     | 2,840,349      | 21.40MB      | 108.3MiB |
| JS Bun                         | 8002 | 138,779.81 | 0.99ms      | 89.17ms     | 2,775,838      | 17.87MB      | 61.32MiB |
| JS Node Bun Cluster            | 8047 | 133,348.37 | 1.37ms      | 53.44ms     | 2,668,839      | 17.17MB      | 44.05MiB |
| JS Bun Hono                    | 8051 | 130,175.76 | 1.00ms      | 77.87ms     | 2,603,818      | 18.50MB      | 21.14MiB |
| JS Node Koa Cluster            | 8044 | 128,326.33 | 1.44ms      | 148.60ms    | 2,566,940      | 24.11MB      | 64.74MiB |
| JS Node NestJS Fastify Cluster | 8046 | 125,338.02 | 1.67ms      | 204.23ms    | 2,507,133      | 23.67MB      | 86.33MiB |
| JS Bun Koa Cluster             | 8058 | 124,823.41 | 3.10ms      | 133.26ms    | 2,497,100      | 17.86MB      | 126.5MiB |
| JS Bun Express Cluster         | 8055 | 111,382.24 | 2.99ms      | 84.28ms     | 2,227,946      | 15.93MB      | 124.7MiB |
| JS Bun Fastify                 | 8050 | 109,846.64 | 1.28ms      | 74.82ms     | 2,197,276      | 15.71MB      | 47.46MiB |
| Erlang Cowboy                  | 8010 | 108,596.31 | 1.18ms      | 69.26ms     | 2,172,176      | 15.64MB      | 110.1MiB |
| JS Bun Hono Cluster            | 8057 | 104,025.87 | 1.65ms      | 63.01ms     | 2,080,852      | 14.78MB      | 52.55MiB |
| JS Bun NestJS Fastify Cluster  | 8060 | 103,569.44 | 3.32ms      | 84.12ms     | 2,072,523      | 14.82MB      | 161.6MiB |
| JS Node Fastify                | 8003 | 100,921.74 | 1.64ms      | 245.68ms    | 2,018,702      | 19.06MB      | 90.28MiB |
| JS Bun NestJS Fastify          | 8054 | 99,648.49  | 1.45ms      | 100.88ms    | 1,993,263      | 14.25MB      | 68.2MiB  |
| JS Bun Fastify Cluster         | 8056 | 99,086.78  | 3.31ms      | 88.55ms     | 1,982,099      | 14.17MB      | 237.7MiB |
| JS Bun Express                 | 8049 | 98,480.07  | 1.36ms      | 90.91ms     | 1,969,829      | 14.09MB      | 55.44MiB |
| JS Bun NestJS Express Cluster  | 8059 | 95,976.10  | 3.06ms      | 95.22ms     | 1,919,943      | 19.68MB      | 160.8MiB |
| JS Node Hono Cluster           | 8043 | 92,498.68  | 2.27ms      | 261.50ms    | 1,850,262      | 16.05MB      | 65.12MiB |
| JS Bun Koa                     | 8052 | 88,181.55  | 1.56ms      | 67.38ms     | 1,763,855      | 12.61MB      | 60.54MiB |
| JS Node NestJS Fastify         | 8030 | 87,719.48  | 1.86ms      | 244.97ms    | 1,754,643      | 16.56MB      | 33.78MiB |
| C Microhttpd                   | 8018 | 87,121.48  | 13.23ms     | 99.02ms     | 1,742,720      | 11.22MB      | 5.348MiB |
| C# .NET AOT                    | 8013 | 80,032.55  | 3.98ms      | 70.59ms     | 1,600,855      | 14.20MB      | 15.34MiB |
| JS Bun NestJS Express          | 8053 | 76,837.89  | 1.74ms      | 78.85ms     | 1,536,990      | 15.75MB      | 71.61MiB |
| C# Carter AOT                  | 8036 | 73,044.17  | 4.80ms      | 74.32ms     | 1,461,660      | 12.96MB      | 15.17MiB |
| Elixir Plug                    | 8034 | 69,919.49  | 2.07ms      | 71.02ms     | 1,398,547      | 14.54MB      | 160.5MiB |
| F# .NET AOT                    | 8020 | 69,588.24  | 4.70ms      | 69.90ms     | 1,392,675      | 12.34MB      | 15.38MiB |
| C# .NET API                    | 8001 | 68,495.90  | 5.84ms      | 80.25ms     | 1,370,303      | 12.15MB      | 32.61MiB |
| F# .NET API                    | 8019 | 68,189.77  | 4.53ms      | 81.18ms     | 1,364,134      | 12.10MB      | 31.17MiB |
| C# Carter                      | 8035 | 67,702.93  | 6.49ms      | 81.36ms     | 1,355,735      | 12.01MB      | 32.25MiB |
| Elixir Phoenix                 | 8007 | 67,091.97  | 2.12ms      | 88.15ms     | 1,342,011      | 16.25MB      | 186.7MiB |
| JS Node Koa                    | 8038 | 57,831.27  | 2.62ms      | 306.44ms    | 1,156,768      | 10.86MB      | 26.36MiB |
| C++ Drogon                     | 8017 | 57,398.12  | 13.89ms     | 72.96ms     | 1,148,704      | 9.42MB       | 15.43MiB |
| Zig zap                        | 8024 | 46,060.17  | 14.64ms     | 78.95ms     | 922,067        | 8.79MB       | 31.94MiB |
| JS Node Hono                   | 8039 | 42,931.40  | 3.86ms      | 420.64ms    | 858,748        | 7.45MB       | 28.5MiB  |
| JS Node Express Cluster        | 8041 | 41,453.36  | 4.91ms      | 301.45ms    | 829,224        | 7.79MB       | 85.52MiB |
| Swift Vapor                    | 8012 | 39,226.07  | 3.14ms      | 89.18ms     | 784,615        | 6.51MB       | 38.1MiB  |
| C libuv                        | 8031 | 36,984.32  | 2.60ms      | 40.81ms     | 740,036        | 4.13MB       | 4.035MiB |
| PHP Swoole                     | 8028 | 36,746.54  | 18.87ms     | 96.30ms     | 734,981        | 6.55MB       | 47.66MiB |
| Java Quarkus                   | 8021 | 36,468.24  | 10.92ms     | 121.21ms    | 729,580        | 3.90MB       | 160.3MiB |
| Go Fiber                       | 8008 | 33,699.88  | 18.91ms     | 136.12ms    | 674,858        | 4.82MB       | 13.04MiB |
| Ruby Falcon                    | 8040 | 33,294.17  | 11.29ms     | 63.36ms     | 666,781        | 3.84MB       | 89.22MiB |
| Java Micronaut                 | 8026 | 32,341.25  | 13.54ms     | 89.91ms     | 648,245        | 4.16MB       | 173.4MiB |
| JS Node NestJS Express Cluster | 8045 | 32,234.77  | 6.27ms      | 377.36ms    | 644,756        | 8.05MB       | 102.5MiB |
| Java Spring Boot               | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
| JS Node Express                | 8014 | 28,702.16  | 4.95ms      | 375.47ms    | 574,069        | 5.39MB       | 101.7MiB |
| Go Gin                         | 8066 | 27,973.53  | 19.85ms     | 146.98ms    | 560,841        | 4.00MB       | 21.64MiB |
| Kotlin Ktor                    | 8027 | 26,392.53  | 13.53ms     | 108.33ms    | 527,895        | 2.47MB       | 173.5MiB |
| Python FastAPI                 | 8004 | 26,128.34  | 12.14ms     | 68.81ms     | 522,898        | 3.79MB       | 209.5MiB |
| JS Node NestJS Express         | 8029 | 22,594.41  | 7.17ms      | 539.74ms    | 451,933        | 5.65MB       | 45.64MiB |
| Java Spring WebFlux            | 8065 | 22,165.38  | 14.36ms     | 163.75ms    | 443,923        | 2.07MB       | 142.1MiB |
| Go Chi                         | 8023 | 20,670.33  | 21.06ms     | 94.38ms     | 413,480        | 2.68MB       | 18.82MiB |
| Go net/http                    | 8032 | 19,104.87  | 21.36ms     | 133.70ms    | 382,352        | 2.48MB       | 17.21MiB |
| Python Litestar                | 8000 | 13,861.22  | 19.59ms     | 78.61ms     | 277,275        | 2.01MB       | 184.7MiB |
| Ruby Sinatra                   | 8033 | 3,419.24   | 132.06ms    | 700.13ms    | 68,422         | 440.74KB     | 63.75MiB |
| PHP Laravel                    | 8037 | 3,299.74   | 45.12ms     | 281.49ms    | 66,111         | 712.15KB     | 156.8MiB |
| Ruby Rails                     | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Python Flask                   | 8067 | 2,727.53\* | 40.40ms     | 232.01ms    | 54,601         | 460.80KB     | 89.76MiB |
| Python Django                  | 8016 | 1,082.71\* | 149.23ms    | 1.69s       | 21,723         | 319.34KB     | 437.3MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
