# Hello World Performance Test Results — Summary

**Generated**: 2026-05-31 18:25:38 UTC
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
| JS Bun Elysia                  | 8086 | 154,051.09 | 837.13us    | 72.04ms     | 3,081,348      | 21.89MB      | 35.87MiB |
| JS Node uWS                    | 8064 | 146,561.93 | 0.87ms      | 38.71ms     | 2,931,886      | 21.25MB      | 12.59MiB |
| JS Deno                        | 8011 | 142,008.63 | 0.89ms      | 55.51ms     | 2,840,349      | 21.40MB      | 108.3MiB |
| JS Node uWS Cluster            | 8068 | 138,801.06 | 0.85ms      | 45.88ms     | 2,776,366      | 20.12MB      | 35.39MiB |
| JS Bun                         | 8002 | 138,779.81 | 0.99ms      | 89.17ms     | 2,775,838      | 17.87MB      | 61.32MiB |
| JS Node Bun Cluster            | 8047 | 133,348.37 | 1.37ms      | 53.44ms     | 2,668,839      | 17.17MB      | 44.05MiB |
| JS Bun Hono                    | 8051 | 130,175.76 | 1.00ms      | 77.87ms     | 2,603,818      | 18.50MB      | 21.14MiB |
| JS Node Koa Cluster            | 8044 | 128,326.33 | 1.44ms      | 148.60ms    | 2,566,940      | 24.11MB      | 64.74MiB |
| JS Node NestJS Fastify Cluster | 8046 | 125,338.02 | 1.67ms      | 204.23ms    | 2,507,133      | 23.67MB      | 86.33MiB |
| JS Bun Koa Cluster             | 8058 | 124,823.41 | 3.10ms      | 133.26ms    | 2,497,100      | 17.86MB      | 126.5MiB |
| JS Bun Express Cluster         | 8055 | 111,382.24 | 2.99ms      | 84.28ms     | 2,227,946      | 15.93MB      | 124.7MiB |
| JS Node AdonisJS Cluster       | 8091 | 110,843.26 | 2.19ms      | 217.30ms    | 2,217,420      | 20.82MB      | 116.1MiB |
| JS Bun Fastify                 | 8050 | 109,846.64 | 1.28ms      | 74.82ms     | 2,197,276      | 15.71MB      | 47.46MiB |
| Erlang Cowboy                  | 8010 | 108,596.31 | 1.18ms      | 69.26ms     | 2,172,176      | 15.64MB      | 110.1MiB |
| JS Bun Elysia Cluster          | 8087 | 107,099.52 | 1.81ms      | 51.86ms     | 2,142,261      | 15.22MB      | 108.3MiB |
| JS Bun Hono Cluster            | 8057 | 104,025.87 | 1.65ms      | 63.01ms     | 2,080,852      | 14.78MB      | 52.55MiB |
| JS Bun NestJS Fastify Cluster  | 8060 | 103,569.44 | 3.32ms      | 84.12ms     | 2,072,523      | 14.82MB      | 161.6MiB |
| Crystal Kemal                  | 8061 | 101,919.44 | 1.19ms      | 37.71ms     | 2,038,644      | 17.50MB      | 15.11MiB |
| F# AOT Dapper                  | 8078 | 101,445.39 | 5.68ms      | 77.67ms     | 2,029,641      | 17.99MB      | 16.78MiB |
| JS Node Fastify                | 8003 | 100,921.74 | 1.64ms      | 245.68ms    | 2,018,702      | 19.06MB      | 90.28MiB |
| JS Bun AdonisJS Cluster        | 8092 | 99,732.91  | 3.14ms      | 113.38ms    | 1,995,226      | 14.27MB      | 235.4MiB |
| JS Bun NestJS Fastify          | 8054 | 99,648.49  | 1.45ms      | 100.88ms    | 1,993,263      | 14.25MB      | 68.2MiB  |
| JS Bun Fastify Cluster         | 8056 | 99,086.78  | 3.31ms      | 88.55ms     | 1,982,099      | 14.17MB      | 237.7MiB |
| JS Bun Express                 | 8049 | 98,480.07  | 1.36ms      | 90.91ms     | 1,969,829      | 14.09MB      | 55.44MiB |
| C# Carter AOT EF Core          | 8074 | 96,485.39  | 4.62ms      | 73.46ms     | 1,929,793      | 17.11MB      | 50.23MiB |
| JS Bun NestJS Express Cluster  | 8059 | 95,976.10  | 3.06ms      | 95.22ms     | 1,919,943      | 19.68MB      | 160.8MiB |
| C# Carter AOT Dapper           | 8075 | 93,110.08  | 6.52ms      | 75.16ms     | 1,863,982      | 16.52MB      | 36.98MiB |
| JS Node Hono Cluster           | 8043 | 92,498.68  | 2.27ms      | 261.50ms    | 1,850,262      | 16.05MB      | 65.12MiB |
| JS Bun Koa                     | 8052 | 88,181.55  | 1.56ms      | 67.38ms     | 1,763,855      | 12.61MB      | 60.54MiB |
| JS Node NestJS Fastify         | 8030 | 87,719.48  | 1.86ms      | 244.97ms    | 1,754,643      | 16.56MB      | 33.78MiB |
| JS Bun AdonisJS                | 8090 | 87,663.28  | 1.62ms      | 83.73ms     | 1,753,565      | 12.54MB      | 100.7MiB |
| C Microhttpd                   | 8018 | 87,121.48  | 13.23ms     | 99.02ms     | 1,742,720      | 11.22MB      | 5.348MiB |
| C# .NET API                    | 8001 | 85,108.64  | 5.18ms      | 82.93ms     | 1,702,806      | 15.10MB      | 41.55MiB |
| C# Carter                      | 8035 | 83,960.09  | 4.17ms      | 83.95ms     | 1,679,575      | 14.89MB      | 34.27MiB |
| JS Node AdonisJS               | 8088 | 82,888.42  | 1.90ms      | 242.47ms    | 1,657,854      | 15.57MB      | 47.29MiB |
| C# Carter AOT                  | 8036 | 80,958.61  | 5.82ms      | 74.65ms     | 1,619,425      | 14.36MB      | 33.73MiB |
| JS Bun Nitro Cluster           | 8095 | 78,106.64  | 3.98ms      | 92.04ms     | 1,563,030      | 10.06MB      | 100.2MiB |
| Lua OpenResty                  | 8084 | 78,059.22  | 10.32ms     | 65.02ms     | 1,562,356      | 15.41MB      | 35.21MiB |
| JS Bun NestJS Express          | 8053 | 76,837.89  | 1.74ms      | 78.85ms     | 1,536,990      | 15.75MB      | 71.61MiB |
| C# EF Core                     | 8070 | 73,428.55  | 4.27ms      | 83.62ms     | 1,469,842      | 13.03MB      | 31.75MiB |
| C# .NET AOT                    | 8013 | 70,931.65  | 6.73ms      | 75.12ms     | 1,419,164      | 12.58MB      | 38.66MiB |
| C# Carter Dapper               | 8073 | 70,884.07  | 5.28ms      | 80.57ms     | 1,418,893      | 12.57MB      | 31.7MiB  |
| F# EF Core                     | 8076 | 70,492.79  | 5.35ms      | 79.70ms     | 1,410,387      | 12.50MB      | 33.68MiB |
| Elixir Plug                    | 8034 | 69,919.49  | 2.07ms      | 71.02ms     | 1,398,547      | 14.54MB      | 160.5MiB |
| C# Dapper                      | 8071 | 69,819.14  | 5.41ms      | 81.09ms     | 1,396,663      | 12.38MB      | 32.15MiB |
| F# .NET API                    | 8019 | 68,064.85  | 4.25ms      | 76.61ms     | 1,362,255      | 12.07MB      | 34.86MiB |
| F# Dapper                      | 8077 | 67,658.45  | 6.23ms      | 80.07ms     | 1,353,427      | 12.00MB      | 33.91MiB |
| Elixir Phoenix                 | 8007 | 67,091.97  | 2.12ms      | 88.15ms     | 1,342,011      | 16.25MB      | 186.7MiB |
| Crystal Lucky                  | 8062 | 66,714.76  | 1.80ms      | 21.13ms     | 1,334,446      | 16.03MB      | 14.34MiB |
| C# EF Core AOT                 | 8069 | 65,272.32  | 6.33ms      | 93.57ms     | 1,305,667      | 11.58MB      | 52.84MiB |
| F# .NET AOT                    | 8020 | 65,174.10  | 5.84ms      | 76.28ms     | 1,303,753      | 11.56MB      | 34.91MiB |
| JS Node Koa                    | 8038 | 57,831.27  | 2.62ms      | 306.44ms    | 1,156,768      | 10.86MB      | 26.36MiB |
| C++ Drogon                     | 8017 | 57,398.12  | 13.89ms     | 72.96ms     | 1,148,704      | 9.42MB       | 15.43MiB |
| C# Carter EF Core              | 8072 | 55,641.79  | 7.58ms      | 84.43ms     | 1,114,093      | 9.87MB       | 32.57MiB |
| JS Node Nitro Cluster          | 8093 | 54,803.56  | 4.68ms      | 150.50ms    | 1,096,387      | 9.51MB       | 83.88MiB |
| JS Bun Nitro                   | 8094 | 52,403.48  | 2.35ms      | 61.84ms     | 1,048,679      | 6.75MB       | 39.83MiB |
| JS Node Nitro                  | 8089 | 51,681.46  | 3.09ms      | 349.84ms    | 1,033,975      | 8.97MB       | 36.48MiB |
| Zig zap                        | 8024 | 46,060.17  | 14.64ms     | 78.95ms     | 922,067        | 8.79MB       | 31.94MiB |
| JS Node Hono                   | 8039 | 42,931.40  | 3.86ms      | 420.64ms    | 858,748        | 7.45MB       | 28.5MiB  |
| JS Node Express Cluster        | 8041 | 41,453.36  | 4.91ms      | 301.45ms    | 829,224        | 7.79MB       | 85.52MiB |
| Swift Vapor                    | 8012 | 39,226.07  | 3.14ms      | 89.18ms     | 784,615        | 6.51MB       | 38.1MiB  |
| COBOL GnuCOBOL                 | 8081 | 37,180.36  | 2.35ms      | 49.67ms     | 744,322        | 4.15MB       | 20.85MiB |
| C libuv                        | 8031 | 36,984.32  | 2.60ms      | 40.81ms     | 740,036        | 4.13MB       | 4.035MiB |
| PHP Swoole                     | 8028 | 36,746.54  | 18.87ms     | 96.30ms     | 734,981        | 6.55MB       | 47.66MiB |
| Java Quarkus                   | 8021 | 36,468.24  | 10.92ms     | 121.21ms    | 729,580        | 3.90MB       | 160.3MiB |
| Go Fiber                       | 8008 | 33,699.88  | 18.91ms     | 136.12ms    | 674,858        | 4.82MB       | 13.04MiB |
| Ruby Falcon                    | 8040 | 33,294.17  | 11.29ms     | 63.36ms     | 666,781        | 3.84MB       | 89.22MiB |
| Dart Shelf                     | 8085 | 32,659.47  | 3.72ms      | 89.60ms     | 653,260        | 8.38MB       | 49.86MiB |
| Java Micronaut                 | 8026 | 32,341.25  | 13.54ms     | 89.91ms     | 648,245        | 4.16MB       | 173.4MiB |
| JS Node NestJS Express Cluster | 8045 | 32,234.77  | 6.27ms      | 377.36ms    | 644,756        | 8.05MB       | 102.5MiB |
| Java Spring Boot               | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
| JS Node Express                | 8014 | 28,702.16  | 4.95ms      | 375.47ms    | 574,069        | 5.39MB       | 101.7MiB |
| Go Gin                         | 8066 | 27,973.53  | 19.85ms     | 146.98ms    | 560,841        | 4.00MB       | 21.64MiB |
| Kotlin Ktor                    | 8027 | 26,392.53  | 13.53ms     | 108.33ms    | 527,895        | 2.47MB       | 173.5MiB |
| Python FastAPI                 | 8004 | 26,128.34  | 12.14ms     | 68.81ms     | 522,898        | 3.79MB       | 209.5MiB |
| Python BlackSheep              | 8097 | 24,250.03  | 12.13ms     | 62.90ms     | 485,073        | 3.52MB       | 156.8MiB |
| JS Node NestJS Express         | 8029 | 22,594.41  | 7.17ms      | 539.74ms    | 451,933        | 5.65MB       | 45.64MiB |
| Java Spring WebFlux            | 8065 | 22,165.38  | 14.36ms     | 163.75ms    | 443,923        | 2.07MB       | 142.1MiB |
| Go Echo                        | 8096 | 21,563.48  | 20.81ms     | 130.26ms    | 431,640        | 2.80MB       | 18.28MiB |
| Go Chi                         | 8023 | 20,670.33  | 21.06ms     | 94.38ms     | 413,480        | 2.68MB       | 18.82MiB |
| Go net/http                    | 8032 | 19,104.87  | 21.36ms     | 133.70ms    | 382,352        | 2.48MB       | 17.21MiB |
| Python Litestar                | 8000 | 13,861.22  | 19.59ms     | 78.61ms     | 277,275        | 2.01MB       | 184.7MiB |
| Gleam Wisp                     | 8063 | 12,317.78  | 13.37ms     | 63.39ms     | 246,535        | 2.04MB       | 93.26MiB |
| Ada (GNAT.Sockets)             | 8079 | 11,495.25  | 13.88ms     | 79.92ms     | 230,215        | 1.28MB       | 3.809MiB |
| Fortran GFortran               | 8083 | 5,468.92   | 25.08ms     | 76.96ms     | 109,588        | 624.87KB     | 5.504MiB |
| Ruby Sinatra                   | 8033 | 3,419.24   | 132.06ms    | 700.13ms    | 68,422         | 440.74KB     | 63.75MiB |
| PHP Laravel                    | 8037 | 3,299.74   | 45.12ms     | 281.49ms    | 66,111         | 712.15KB     | 156.8MiB |
| Ruby Rails                     | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Python Flask                   | 8067 | 2,727.53\* | 40.40ms     | 232.01ms    | 54,601         | 460.80KB     | 89.76MiB |
| Pascal fpWeb                   | 8082 | 2,194.52\* | 236.76ms    | 1.90s       | 43,899         | 246.46KB     | 3.758MiB |
| Python Django                  | 8016 | 1,082.71\* | 149.23ms    | 1.69s       | 21,723         | 319.34KB     | 437.3MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
