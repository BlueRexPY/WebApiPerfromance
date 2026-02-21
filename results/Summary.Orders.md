# Orders Performance Test Results — Summary

**Generated**: 2026-02-21 13:44:48 UTC
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
| JS Bun Hono Cluster            | 8057 | 27,308.21  | 4.41ms      | 22.64ms     | 546,327        | 291.79MB     | 60.23MiB |
| JS Deno Parallel               | 8048 | 18,937.49  | 6.33ms      | 17.64ms     | 378,848        | 202.51MB     | 76.05MiB |
| JS Bun Hono                    | 8051 | 15,884.25  | 7.55ms      | 28.31ms     | 317,760        | 169.72MB     | 24.7MiB  |
| JS Bun                         | 8002 | 15,455.76  | 7.76ms      | 25.50ms     | 309,152        | 164.94MB     | 71.47MiB |
| Rust Axum                      | 8022 | 14,961.55  | 11.05ms     | 273.42ms    | 299,291        | 162.52MB     | 9.605MiB |
| JS Bun Express                 | 8049 | 14,649.64  | 8.19ms      | 39.19ms     | 293,110        | 156.54MB     | 58.61MiB |
| C Microhttpd                   | 8018 | 10,254.81  | 25.10ms     | 186.54ms    | 205,312        | 111.26MB     | 5.809MiB |
| Rust Actix                     | 8005 | 10,015.38  | 14.88ms     | 171.72ms    | 200,328        | 108.79MB     | 12.2MiB  |
| C# Carter AOT                  | 8036 | 9,015.45   | 19.81ms     | 96.70ms     | 180,493        | 95.78MB      | 31.76MiB |
| C# .NET AOT                    | 8013 | 8,970.70   | 19.63ms     | 96.22ms     | 179,745        | 95.30MB      | 35.16MiB |
| Java Quarkus                   | 8021 | 8,660.41   | 27.97ms     | 830.87ms    | 173,299        | 91.50MB      | 206.4MiB |
| F# .NET AOT                    | 8020 | 8,347.39   | 19.35ms     | 93.80ms     | 167,313        | 89.48MB      | 49.88MiB |
| Zig zap                        | 8024 | 8,331.74   | 27.98ms     | 106.42ms    | 167,054        | 90.92MB      | 35.02MiB |
| C# .NET API                    | 8001 | 8,193.76   | 21.65ms     | 102.03ms    | 164,048        | 87.05MB      | 61.7MiB  |
| C# Carter                      | 8035 | 7,705.86   | 22.85ms     | 101.23ms    | 154,404        | 81.87MB      | 54.94MiB |
| F# .NET API                    | 8019 | 7,505.31   | 23.10ms     | 96.60ms     | 150,420        | 79.74MB      | 59.72MiB |
| JS Node Express                | 8014 | 7,062.54   | 21.13ms     | 973.39ms    | 141,295        | 75.79MB      | 104MiB   |
| Ruby Falcon                    | 8040 | 7,012.41   | 26.65ms     | 733.92ms    | 140,349        | 75.99MB      | 112.8MiB |
| Go Gin                         | 8066 | 6,719.73   | 29.75ms     | 372.20ms    | 134,574        | 73.76MB      | 60.76MiB |
| JS Bun NestJS Fastify Cluster  | 8060 | 6,619.76   | 19.69ms     | 321.59ms    | 132,426        | 70.74MB      | 182MiB   |
| JS Bun Koa Cluster             | 8058 | 6,267.72   | 24.85ms     | 678.06ms    | 125,408        | 66.98MB      | 131MiB   |
| Elixir Plug                    | 8034 | 5,976.94   | 20.40ms     | 150.91ms    | 119,584        | 65.40MB      | 209.5MiB |
| JS Bun Fastify Cluster         | 8056 | 5,866.15   | 27.04ms     | 697.98ms    | 117,354        | 62.69MB      | 169.9MiB |
| JS Bun NestJS Express Cluster  | 8059 | 5,637.79   | 22.54ms     | 350.10ms    | 112,797        | 60.61MB      | 173.1MiB |
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
| JS Node Hono Cluster           | 8043 | 4,578.65   | 28.34ms     | 541.61ms    | 91,593         | 49.07MB      | 90.64MiB |
| JS Node NestJS Fastify Cluster | 8046 | 4,541.06   | 29.08ms     | 815.96ms    | 90,849         | 48.73MB      | 112.9MiB |
| JS Bun NestJS Fastify          | 8054 | 4,442.57   | 29.65ms     | 457.81ms    | 88,884         | 47.47MB      | 93.96MiB |
| JS Bun NestJS Express          | 8053 | 4,380.24   | 27.53ms     | 144.06ms    | 87,619         | 47.09MB      | 81.44MiB |
| JS Bun Koa                     | 8052 | 4,221.26   | 34.09ms     | 719.09ms    | 84,466         | 45.11MB      | 63.89MiB |
| JS Bun Fastify                 | 8050 | 4,174.03   | 32.39ms     | 616.92ms    | 83,500         | 44.60MB      | 74.01MiB |
| JS Node NestJS Express Cluster | 8045 | 4,094.54   | 31.76ms     | 833.64ms    | 81,911         | 44.20MB      | 109.9MiB |
| JS Node Fastify                | 8003 | 3,846.61   | 35.55ms     | 701.60ms    | 76,981         | 41.28MB      | 108.2MiB |
| Python Litestar                | 8000 | 3,776.86   | 34.83ms     | 162.60ms    | 75,553         | 41.09MB      | 197.5MiB |
| JS Node Koa                    | 8038 | 3,750.58   | 33.74ms     | 765.63ms    | 75,029         | 40.25MB      | 47.28MiB |
| JS Node NestJS Fastify         | 8030 | 3,393.83   | 39.34ms     | 1.03s       | 67,904         | 36.42MB      | 50.28MiB |
| Erlang Cowboy                  | 8010 | 3,389.72   | 35.37ms     | 104.03ms    | 67,829         | 34.61MB      | 170.4MiB |
| Python FastAPI                 | 8004 | 3,385.60   | 36.43ms     | 90.21ms     | 67,720         | 36.83MB      | 219.2MiB |
| JS Node uWS                    | 8064 | 3,239.11   | 37.44ms     | 309.31ms    | 64,792         | 34.62MB      | 43.41MiB |
| JS Node Hono                   | 8039 | 3,068.89   | 40.59ms     | 706.47ms    | 61,399         | 32.89MB      | 49.7MiB  |
| JS Node NestJS Express         | 8029 | 2,785.96   | 49.84ms     | 1.23s       | 55,753         | 30.07MB      | 53.66MiB |
| C libuv                        | 8031 | 2,484.98\* | 42.26ms     | 220.51ms    | 49,744         | 26.92MB      | 9.461MiB |
| PHP Laravel                    | 8037 | 2,165.20   | 60.50ms     | 273.60ms    | 43,316         | 23.67MB      | 161.7MiB |
| Gleam Wisp                     | 8063 | 2,126.94   | 56.37ms     | 159.72ms    | 42,581         | 23.16MB      | 120.3MiB |
| C++ Drogon                     | 8017 | 1,889.10   | 66.90ms     | 394.96ms    | 37,859         | 20.56MB      | 44.86MiB |
| JS Deno                        | 8011 | 1,662.90   | 72.51ms     | 311.88ms    | 33,311         | 17.78MB      | 177MiB   |
| Python Flask                   | 8067 | 1,616.70\* | 74.86ms     | 204.13ms    | 32,388         | 17.62MB      | 90.04MiB |
| Ruby Sinatra                   | 8033 | 1,246.67   | 229.73ms    | 1.18s       | 24,955         | 13.52MB      | 66.74MiB |
| Kotlin Ktor                    | 8027 | 1,026.68\* | 139.66ms    | 1.29s       | 20,590         | 11.12MB      | 213.5MiB |
| Java Micronaut                 | 8026 | 978.53     | 136.32ms    | 942.33ms    | 19,607         | 10.43MB      | 206.2MiB |
| Haskell Servant                | 8006 | 796.44\*   | 135.25ms    | 1.95s       | 15,974         | 8.68MB       | 317.1MiB |
| Swift Vapor                    | 8012 | 579.65     | 206.29ms    | 698.48ms    | 11,633         | 5.99MB       | 60.86MiB |
| Java Spring Boot               | 8009 | 571.97\*   | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Java Spring WebFlux            | 8065 | 542.12\*   | 217.04ms    | 1.91s       | 10,868         | 6.03MB       | 236.4MiB |
| Crystal Kemal                  | 8061 | 483.99     | 270.64ms    | 1.18s       | 9,689          | 5.00MB       | 35.81MiB |
| Python Django                  | 8016 | 470.49\*   | 265.57ms    | 1.99s       | 9,428          | 5.19MB       | 490.1MiB |
| Crystal Lucky                  | 8062 | 465.35     | 276.11ms    | 1.18s       | 9,318          | 4.84MB       | 51.9MiB  |
| Ruby Rails                     | 8015 | 423.29\*   | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
