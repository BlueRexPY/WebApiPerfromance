# Web API Performance Comparison

This repository contains performance-focused web API implementations in JS (Bun, Deno, Fastify, Express), Python (FastAPI, Litestar, Django), Rust (Actix), Go (Fiber), Elixir (Phoenix), Erlang (Cowboy), C# (.NET API and AOT), F# (.NET API and AOT), Java (Spring Boot and Quarkus), Haskell (Servant), C++ (Drogon), Swift (Vapor), and Ruby (Rails). The APIs expose two endpoints: a simple "Hello World" (`GET /`) and a more complex "Orders" endpoint (`GET /orders`).

## Benchmark Results

**Test Configuration**: `wrk -t 2 -c 120 -d 20s` — 2 threads, 120 connections, 20 seconds  
**Tested**: 2026-02-20 03:34:48 UTC

### Hello World (`GET /`)

| Framework                 | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Rust Actix                | 8005 | 204,901.52 | 563.69us    | 51.45ms     | 4,098,380      | 26.38MB      | 5.477MiB |
| Haskell Servant           | 8006 | 185,813.73 | 703.71us    | 84.63ms     | 3,716,357      | 33.85MB      | 297.1MiB |
| JS Deno Parallel          | 8048 | 167,880.22 | 841.65us    | 62.51ms     | 3,358,386      | 25.30MB      | 72.3MiB  |
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
| C++ Drogon                | 8017 | 57,398.12  | 13.89ms     | 72.96ms     | 1,148,704      | 9.42MB       | 15.43MiB |
| Zig zap                   | 8024 | 46,060.17  | 14.64ms     | 78.95ms     | 922,067        | 8.79MB       | 31.94MiB |
| JS Hono                   | 8039 | 42,931.40  | 3.86ms      | 420.64ms    | 858,748        | 7.45MB       | 28.5MiB  |
| JS Express Cluster        | 8041 | 41,453.36  | 4.91ms      | 301.45ms    | 829,224        | 7.79MB       | 85.52MiB |
| Swift Vapor               | 8012 | 39,226.07  | 3.14ms      | 89.18ms     | 784,615        | 6.51MB       | 38.1MiB  |
| C libuv                   | 8031 | 36,984.32  | 2.60ms      | 40.81ms     | 740,036        | 4.13MB       | 4.035MiB |
| Java Quarkus              | 8021 | 36,468.24  | 10.92ms     | 121.21ms    | 729,580        | 3.90MB       | 160.3MiB |
| Go Fiber                  | 8008 | 33,699.88  | 18.91ms     | 136.12ms    | 674,858        | 4.82MB       | 13.04MiB |
| Ruby Falcon               | 8040 | 33,294.17  | 11.29ms     | 63.36ms     | 666,781        | 3.84MB       | 89.22MiB |
| Java Micronaut            | 8026 | 32,341.25  | 13.54ms     | 89.91ms     | 648,245        | 4.16MB       | 173.4MiB |
| JS NestJS Express Cluster | 8045 | 32,234.77  | 6.27ms      | 377.36ms    | 644,756        | 8.05MB       | 102.5MiB |
| Java Spring Boot          | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
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

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred

### Orders (`GET /orders`)

| Framework                 | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Bun Cluster            | 8047 | 27,628.28  | 4.36ms      | 24.95ms     | 552,627        | 294.84MB     | 47.51MiB |
| JS Deno Parallel          | 8048 | 18,937.49  | 6.33ms      | 17.64ms     | 378,848        | 202.51MB     | 76.05MiB |
| JS Bun                    | 8002 | 15,455.76  | 7.76ms      | 25.50ms     | 309,152        | 164.94MB     | 71.47MiB |
| Rust Axum                 | 8022 | 14,961.55  | 11.05ms     | 273.42ms    | 299,291        | 162.52MB     | 9.605MiB |
| Rust Actix                | 8005 | 10,015.38  | 14.88ms     | 171.72ms    | 200,328        | 108.79MB     | 12.2MiB  |
| C# .NET AOT               | 8013 | 8,970.70   | 19.63ms     | 96.22ms     | 179,745        | 95.30MB      | 35.16MiB |
| C# Carter AOT             | 8036 | 8,850.36   | 19.94ms     | 96.12ms     | 177,465        | 94.03MB      | 29.59MiB |
| F# .NET AOT               | 8020 | 8,718.01   | 18.82ms     | 97.55ms     | 174,505        | 93.45MB      | 51.04MiB |
| Java Quarkus              | 8021 | 8,660.41   | 27.97ms     | 830.87ms    | 173,299        | 91.50MB      | 206.4MiB |
| Zig zap                   | 8024 | 8,331.74   | 27.98ms     | 106.42ms    | 167,054        | 90.92MB      | 35.02MiB |
| C# Carter                 | 8035 | 8,324.23   | 21.96ms     | 100.35ms    | 166,644        | 88.44MB      | 57.09MiB |
| F# .NET API               | 8019 | 8,281.61   | 22.79ms     | 103.14ms    | 165,899        | 87.98MB      | 59.96MiB |
| C# .NET API               | 8001 | 8,193.76   | 21.65ms     | 102.03ms    | 164,048        | 87.05MB      | 61.7MiB  |
| Ruby Falcon               | 8040 | 7,012.41   | 26.65ms     | 733.92ms    | 140,349        | 75.99MB      | 112.8MiB |
| Elixir Plug               | 8034 | 5,976.94   | 20.40ms     | 150.91ms    | 119,584        | 65.40MB      | 209.5MiB |
| C Microhttpd              | 8018 | 5,580.41   | 25.67ms     | 94.12ms     | 111,624        | 60.55MB      | 12.16MiB |
| JS Fastify Cluster        | 8042 | 5,576.88   | 22.43ms     | 369.66ms    | 111,555        | 59.85MB      | 92.59MiB |
| JS Koa Cluster            | 8044 | 5,395.38   | 23.29ms     | 432.50ms    | 107,990        | 57.90MB      | 89.57MiB |
| Elixir Phoenix            | 8007 | 5,369.43   | 22.34ms     | 64.47ms     | 107,447        | 58.93MB      | 213.6MiB |
| Go Chi                    | 8023 | 4,929.02   | 36.65ms     | 653.67ms    | 98,804         | 54.04MB      | 62.18MiB |
| Go net/http               | 8032 | 4,927.33   | 36.62ms     | 677.12ms    | 98,605         | 54.02MB      | 59.77MiB |
| JS Express Cluster        | 8041 | 4,784.64   | 26.83ms     | 497.11ms    | 95,720         | 51.34MB      | 92.03MiB |
| Go Fiber                  | 8008 | 4,655.43   | 37.94ms     | 732.37ms    | 93,423         | 51.02MB      | 54.62MiB |
| JS Hono Cluster           | 8043 | 4,578.65   | 28.34ms     | 541.61ms    | 91,593         | 49.07MB      | 90.64MiB |
| JS NestJS Fastify Cluster | 8046 | 4,541.06   | 29.08ms     | 815.96ms    | 90,849         | 48.73MB      | 112.9MiB |
| JS NestJS Express Cluster | 8045 | 4,094.54   | 31.76ms     | 833.64ms    | 81,911         | 44.20MB      | 109.9MiB |
| JS Fastify                | 8003 | 3,846.61   | 35.55ms     | 701.60ms    | 76,981         | 41.28MB      | 108.2MiB |
| Python Litestar           | 8000 | 3,776.86   | 34.83ms     | 162.60ms    | 75,553         | 41.09MB      | 197.5MiB |
| JS Koa                    | 8038 | 3,750.58   | 33.74ms     | 765.63ms    | 75,029         | 40.25MB      | 47.28MiB |
| JS Express                | 8014 | 3,420.65   | 38.69ms     | 634.20ms    | 68,439         | 36.71MB      | 49.36MiB |
| JS NestJS Fastify         | 8030 | 3,393.83   | 39.34ms     | 1.03s       | 67,904         | 36.42MB      | 50.28MiB |
| Erlang Cowboy             | 8010 | 3,389.72   | 35.37ms     | 104.03ms    | 67,829         | 34.61MB      | 170.4MiB |
| Python FastAPI            | 8004 | 3,385.60   | 36.43ms     | 90.21ms     | 67,720         | 36.83MB      | 219.2MiB |
| JS Hono                   | 8039 | 3,068.89   | 40.59ms     | 706.47ms    | 61,399         | 32.89MB      | 49.7MiB  |
| JS NestJS Express         | 8029 | 2,785.96   | 49.84ms     | 1.23s       | 55,753         | 30.07MB      | 53.66MiB |
| C libuv                   | 8031 | 2,484.98\* | 42.26ms     | 220.51ms    | 49,744         | 26.92MB      | 9.461MiB |
| PHP Laravel               | 8037 | 2,165.20   | 60.50ms     | 273.60ms    | 43,316         | 23.67MB      | 161.7MiB |
| C++ Drogon                | 8017 | 1,889.10   | 66.90ms     | 394.96ms    | 37,859         | 20.56MB      | 44.86MiB |
| JS Deno                   | 8011 | 1,662.90   | 72.51ms     | 311.88ms    | 33,311         | 17.78MB      | 177MiB   |
| Ruby Sinatra              | 8033 | 1,246.67   | 229.73ms    | 1.18s       | 24,955         | 13.52MB      | 66.74MiB |
| Kotlin Ktor               | 8027 | 1,026.68\* | 139.66ms    | 1.29s       | 20,590         | 11.12MB      | 213.5MiB |
| PHP Swoole                | 8028 | 1,006.90   | 120.00ms    | 499.73ms    | 20,195         | 10.97MB      | 60.59MiB |
| Java Micronaut            | 8026 | 978.53     | 136.32ms    | 942.33ms    | 19,607         | 10.43MB      | 206.2MiB |
| Haskell Servant           | 8006 | 796.44\*   | 135.25ms    | 1.95s       | 15,974         | 8.68MB       | 317.1MiB |
| Swift Vapor               | 8012 | 579.65     | 206.29ms    | 698.48ms    | 11,633         | 5.99MB       | 60.86MiB |
| Java Spring Boot          | 8009 | 571.97\*   | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Python Django             | 8016 | 470.49\*   | 265.57ms    | 1.99s       | 9,428          | 5.19MB       | 490.1MiB |
| Ruby Rails                | 8015 | 423.29\*   | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred
