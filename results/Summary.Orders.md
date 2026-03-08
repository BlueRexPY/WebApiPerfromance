# Orders Performance Test Results — Summary

**Generated**: 2026-03-08 22:53:29 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Orders)

## Results

| Framework                      | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------------ | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Node Bun Cluster            | 8047 | 27,628.28  | 4.36ms      | 24.95ms     | 552,627        | 294.84MB     | 47.51MiB |
| JS Bun Elysia Cluster          | 8087 | 27,539.99  | 4.38ms      | 29.04ms     | 550,886        | 294.26MB     | 116.1MiB |
| JS Bun Hono Cluster            | 8057 | 27,308.21  | 4.41ms      | 22.64ms     | 546,327        | 291.79MB     | 60.23MiB |
| JS Deno Parallel               | 8048 | 18,937.49  | 6.33ms      | 17.64ms     | 378,848        | 202.51MB     | 76.05MiB |
| JS Bun Hono                    | 8051 | 15,884.25  | 7.55ms      | 28.31ms     | 317,760        | 169.72MB     | 24.7MiB  |
| JS Bun                         | 8002 | 15,455.76  | 7.76ms      | 25.50ms     | 309,152        | 164.94MB     | 71.47MiB |
| Rust Axum                      | 8022 | 14,961.55  | 11.05ms     | 273.42ms    | 299,291        | 162.52MB     | 9.605MiB |
| JS Bun Express                 | 8049 | 14,649.64  | 8.19ms      | 39.19ms     | 293,110        | 156.54MB     | 58.61MiB |
| JS Bun Elysia                  | 8086 | 14,169.07  | 8.47ms      | 22.87ms     | 283,469        | 151.40MB     | 41.01MiB |
| C# Carter AOT EF Core          | 8074 | 11,542.63  | 16.35ms     | 92.28ms     | 231,351        | 122.63MB     | 75.02MiB |
| F# AOT Dapper                  | 8078 | 11,107.95  | 15.50ms     | 89.47ms     | 222,335        | 119.07MB     | 35.24MiB |
| C# .NET AOT                    | 8013 | 11,097.91  | 16.17ms     | 104.75ms    | 222,126        | 117.90MB     | 61.38MiB |
| C# EF Core AOT                 | 8069 | 10,837.59  | 16.96ms     | 94.23ms     | 217,138        | 115.14MB     | 120.9MiB |
| C Microhttpd                   | 8018 | 10,254.81  | 25.10ms     | 186.54ms    | 205,312        | 111.26MB     | 5.809MiB |
| C# Carter AOT Dapper           | 8075 | 10,180.90  | 18.66ms     | 98.35ms     | 203,973        | 108.16MB     | 58.77MiB |
| Rust Actix                     | 8005 | 10,015.38  | 14.88ms     | 171.72ms    | 200,328        | 108.79MB     | 12.2MiB  |
| F# Dapper                      | 8077 | 9,663.76   | 19.07ms     | 93.33ms     | 193,584        | 102.67MB     | 72.45MiB |
| C# Carter                      | 8035 | 9,483.80   | 19.69ms     | 94.97ms     | 189,802        | 100.76MB     | 58.09MiB |
| C# .NET API                    | 8001 | 8,885.70   | 20.70ms     | 100.33ms    | 177,834        | 94.40MB      | 70.48MiB |
| C# Carter Dapper               | 8073 | 8,841.10   | 20.51ms     | 97.02ms     | 177,008        | 93.93MB      | 71.13MiB |
| Java Quarkus                   | 8021 | 8,660.41   | 27.97ms     | 830.87ms    | 173,299        | 91.50MB      | 206.4MiB |
| C# Carter AOT                  | 8036 | 8,353.54   | 20.49ms     | 98.74ms     | 167,376        | 88.75MB      | 49.17MiB |
| Zig zap                        | 8024 | 8,331.74   | 27.98ms     | 106.42ms    | 167,054        | 90.92MB      | 35.02MiB |
| F# .NET AOT                    | 8020 | 8,228.84   | 19.39ms     | 93.36ms     | 164,780        | 88.21MB      | 58.41MiB |
| F# .NET API                    | 8019 | 8,107.83   | 21.66ms     | 95.25ms     | 162,566        | 86.14MB      | 57.63MiB |
| C# Dapper                      | 8071 | 7,858.15   | 21.71ms     | 114.75ms    | 157,322        | 83.48MB      | 60.66MiB |
| JS Node Express                | 8014 | 7,062.54   | 21.13ms     | 973.39ms    | 141,295        | 75.79MB      | 104MiB   |
| Ruby Falcon                    | 8040 | 7,012.41   | 26.65ms     | 733.92ms    | 140,349        | 75.99MB      | 112.8MiB |
| Go Gin                         | 8066 | 6,719.73   | 29.75ms     | 372.20ms    | 134,574        | 73.76MB      | 60.76MiB |
| JS Bun NestJS Fastify Cluster  | 8060 | 6,619.76   | 19.69ms     | 321.59ms    | 132,426        | 70.74MB      | 182MiB   |
| JS Bun Koa Cluster             | 8058 | 6,267.72   | 24.85ms     | 678.06ms    | 125,408        | 66.98MB      | 131MiB   |
| Elixir Plug                    | 8034 | 5,976.94   | 20.40ms     | 150.91ms    | 119,584        | 65.40MB      | 209.5MiB |
| JS Bun Fastify Cluster         | 8056 | 5,866.15   | 27.04ms     | 697.98ms    | 117,354        | 62.69MB      | 169.9MiB |
| Go Echo                        | 8096 | 5,848.89   | 33.62ms     | 890.00ms    | 117,124        | 64.13MB      | 55.9MiB  |
| JS Bun NestJS Express Cluster  | 8059 | 5,637.79   | 22.54ms     | 350.10ms    | 112,797        | 60.61MB      | 173.1MiB |
| JS Bun Nitro Cluster           | 8095 | 5,586.04   | 26.23ms     | 625.68ms    | 111,825        | 59.61MB      | 146MiB   |
| JS Node Fastify Cluster        | 8042 | 5,576.88   | 22.43ms     | 369.66ms    | 111,555        | 59.85MB      | 92.59MiB |
| PHP Swoole                     | 8028 | 5,500.98   | 32.79ms     | 208.24ms    | 110,352        | 59.96MB      | 54.55MiB |
| JS Node Koa Cluster            | 8044 | 5,395.38   | 23.29ms     | 432.50ms    | 107,990        | 57.90MB      | 89.57MiB |
| JS Bun Express Cluster         | 8055 | 5,383.80   | 25.50ms     | 522.14ms    | 107,705        | 57.53MB      | 160MiB   |
| Elixir Phoenix                 | 8007 | 5,369.43   | 22.34ms     | 64.47ms     | 107,447        | 58.93MB      | 213.6MiB |
| JS Node uWS Cluster            | 8068 | 5,155.84   | 24.26ms     | 320.72ms    | 103,135        | 55.10MB      | 82.21MiB |
| Go Chi                         | 8023 | 4,929.02   | 36.65ms     | 653.67ms    | 98,804         | 54.04MB      | 62.18MiB |
| Go net/http                    | 8032 | 4,927.33   | 36.62ms     | 677.12ms    | 98,605         | 54.02MB      | 59.77MiB |
| JS Node Express Cluster        | 8041 | 4,784.64   | 26.83ms     | 497.11ms    | 95,720         | 51.34MB      | 92.03MiB |
| Go Fiber                       | 8008 | 4,655.43   | 37.94ms     | 732.37ms    | 93,423         | 51.02MB      | 54.62MiB |
| JS Node Nitro Cluster          | 8093 | 4,606.21   | 27.32ms     | 502.98ms    | 92,199         | 49.36MB      | 98.76MiB |
| JS Node Hono Cluster           | 8043 | 4,578.65   | 28.34ms     | 541.61ms    | 91,593         | 49.07MB      | 90.64MiB |
| JS Node NestJS Fastify Cluster | 8046 | 4,541.06   | 29.08ms     | 815.96ms    | 90,849         | 48.73MB      | 112.9MiB |
| JS Bun NestJS Fastify          | 8054 | 4,442.57   | 29.65ms     | 457.81ms    | 88,884         | 47.47MB      | 93.96MiB |
| JS Bun AdonisJS Cluster        | 8092 | 4,441.34   | 31.56ms     | 656.07ms    | 88,860         | 47.46MB      | 260MiB   |
| JS Bun NestJS Express          | 8053 | 4,380.24   | 27.53ms     | 144.06ms    | 87,619         | 47.09MB      | 81.44MiB |
| JS Bun Koa                     | 8052 | 4,221.26   | 34.09ms     | 719.09ms    | 84,466         | 45.11MB      | 63.89MiB |
| Python BlackSheep              | 8097 | 4,211.39   | 31.25ms     | 156.88ms    | 84,248         | 45.81MB      | 167.3MiB |
| JS Bun Fastify                 | 8050 | 4,174.03   | 32.39ms     | 616.92ms    | 83,500         | 44.60MB      | 74.01MiB |
| JS Node NestJS Express Cluster | 8045 | 4,094.54   | 31.76ms     | 833.64ms    | 81,911         | 44.20MB      | 109.9MiB |
| JS Node Fastify                | 8003 | 3,846.61   | 35.55ms     | 701.60ms    | 76,981         | 41.28MB      | 108.2MiB |
| Python Litestar                | 8000 | 3,776.86   | 34.83ms     | 162.60ms    | 75,553         | 41.09MB      | 197.5MiB |
| JS Node Koa                    | 8038 | 3,750.58   | 33.74ms     | 765.63ms    | 75,029         | 40.25MB      | 47.28MiB |
| JS Bun Nitro                   | 8094 | 3,619.69   | 36.16ms     | 558.55ms    | 72,483         | 38.63MB      | 68.93MiB |
| JS Node Nitro                  | 8089 | 3,525.11   | 37.25ms     | 907.33ms    | 70,589         | 37.78MB      | 52.5MiB  |
| C# EF Core                     | 8070 | 3,502.58   | 39.30ms     | 204.96ms    | 70,255         | 37.21MB      | 91.77MiB |
| JS Node NestJS Fastify         | 8030 | 3,393.83   | 39.34ms     | 1.03s       | 67,904         | 36.42MB      | 50.28MiB |
| Erlang Cowboy                  | 8010 | 3,389.72   | 35.37ms     | 104.03ms    | 67,829         | 34.61MB      | 170.4MiB |
| Python FastAPI                 | 8004 | 3,385.60   | 36.43ms     | 90.21ms     | 67,720         | 36.83MB      | 219.2MiB |
| Lua OpenResty                  | 8084 | 3,335.69   | 43.07ms     | 365.08ms    | 66,802         | 36.42MB      | 62.12MiB |
| JS Node uWS                    | 8064 | 3,239.11   | 37.44ms     | 309.31ms    | 64,792         | 34.62MB      | 43.41MiB |
| Ada (GNAT.Sockets)             | 8079 | 3,234.96   | 40.82ms     | 104.05ms    | 64,829         | 35.04MB      | 5.969MiB |
| JS Node AdonisJS Cluster       | 8091 | 3,130.45   | 39.51ms     | 589.91ms    | 62,632         | 33.59MB      | 140.1MiB |
| JS Bun AdonisJS                | 8090 | 3,091.47   | 41.59ms     | 568.84ms    | 61,868         | 33.04MB      | 114.8MiB |
| JS Node Hono                   | 8039 | 3,068.89   | 40.59ms     | 706.47ms    | 61,399         | 32.89MB      | 49.7MiB  |
| COBOL GnuCOBOL                 | 8081 | 2,941.64   | 43.00ms     | 100.59ms    | 58,872         | 31.87MB      | 21.09MiB |
| JS Node NestJS Express         | 8029 | 2,785.96   | 49.84ms     | 1.23s       | 55,753         | 30.07MB      | 53.66MiB |
| JS Node AdonisJS               | 8088 | 2,558.87   | 48.73ms     | 570.89ms    | 51,192         | 27.46MB      | 64.14MiB |
| F# EF Core                     | 8076 | 2,532.90   | 49.01ms     | 295.17ms    | 50,838         | 26.91MB      | 104.4MiB |
| C libuv                        | 8031 | 2,484.98\* | 42.26ms     | 220.51ms    | 49,744         | 26.92MB      | 9.461MiB |
| C# Carter EF Core              | 8072 | 2,420.60   | 51.28ms     | 309.41ms    | 48,483         | 25.72MB      | 83.34MiB |
| PHP Laravel                    | 8037 | 2,165.20   | 60.50ms     | 273.60ms    | 43,316         | 23.67MB      | 161.7MiB |
| Gleam Wisp                     | 8063 | 2,126.94   | 56.37ms     | 159.72ms    | 42,581         | 23.16MB      | 120.3MiB |
| C++ Drogon                     | 8017 | 1,889.10   | 66.90ms     | 394.96ms    | 37,859         | 20.56MB      | 44.86MiB |
| JS Deno                        | 8011 | 1,662.90   | 72.51ms     | 311.88ms    | 33,311         | 17.78MB      | 177MiB   |
| Python Flask                   | 8067 | 1,616.70\* | 74.86ms     | 204.13ms    | 32,388         | 17.62MB      | 90.04MiB |
| Ruby Sinatra                   | 8033 | 1,246.67   | 229.73ms    | 1.18s       | 24,955         | 13.52MB      | 66.74MiB |
| Kotlin Ktor                    | 8027 | 1,026.68\* | 139.66ms    | 1.29s       | 20,590         | 11.12MB      | 213.5MiB |
| Java Micronaut                 | 8026 | 978.53     | 136.32ms    | 942.33ms    | 19,607         | 10.43MB      | 206.2MiB |
| Haskell Servant                | 8006 | 796.44\*   | 135.25ms    | 1.95s       | 15,974         | 8.68MB       | 317.1MiB |
| Dart Shelf                     | 8085 | 788.17\*   | 115.07ms    | 1.96s       | 15,793         | 8.74MB       | 106.6MiB |
| Swift Vapor                    | 8012 | 579.65     | 206.29ms    | 698.48ms    | 11,633         | 5.99MB       | 60.86MiB |
| Java Spring Boot               | 8009 | 571.97\*   | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Java Spring WebFlux            | 8065 | 542.12\*   | 217.04ms    | 1.91s       | 10,868         | 6.03MB       | 236.4MiB |
| Crystal Kemal                  | 8061 | 483.99     | 270.64ms    | 1.18s       | 9,689          | 5.00MB       | 35.81MiB |
| Python Django                  | 8016 | 470.49\*   | 265.57ms    | 1.99s       | 9,428          | 5.19MB       | 490.1MiB |
| Crystal Lucky                  | 8062 | 465.35     | 276.11ms    | 1.18s       | 9,318          | 4.84MB       | 51.9MiB  |
| Ruby Rails                     | 8015 | 423.29\*   | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |
| Pascal fpWeb                   | 8082 | 322.28\*   | 393.40ms    | 2.00s       | 6,450          | 4.01MB       | 5.184MiB |
| Fortran GFortran               | 8083 | 0.05       | 1.99ms      | 1.99ms      | 1              | 567.46B      | 14.47MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
