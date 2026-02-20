# Web API Performance Comparison

This repository contains performance-focused web API implementations in JS (Bun, Deno, Fastify, Express), Python (FastAPI, Litestar, Django), Rust (Actix), Go (Fiber), Elixir (Phoenix), Erlang (Cowboy), C# (.NET API and AOT), F# (.NET API and AOT), Java (Spring Boot and Quarkus), Haskell (Servant), C++ (Drogon), Swift (Vapor), and Ruby (Rails). The APIs expose two endpoints: a simple "Hello World" (`GET /`) and a more complex "Orders" endpoint (`GET /orders`).

## Benchmark Results

**Test Configuration**: `wrk -t 2 -c 120 -d 20s` — 2 threads, 120 connections, 20 seconds  
**Tested**: 2026-02-20 03:34:48 UTC

### Hello World (`GET /`)

| Framework         | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ----------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Rust Axum         | 8022 | 160,085.78 | 714.95us    | 47.65ms     | 3,202,007      | 20.61MB      | 3.754MiB |
| JS Bun            | 8002 | 139,902.76 | 0.95ms      | 74.63ms     | 2,798,451      | 18.01MB      | 60.37MiB |
| Haskell Servant   | 8006 | 115,297.04 | 1.11ms      | 106.67ms    | 2,306,053      | 21.00MB      | 213.8MiB |
| JS NestJS Fastify | 8030 | 87,719.48  | 1.86ms      | 244.97ms    | 1,754,643      | 16.56MB      | 33.78MiB |
| JS Deno           | 8011 | 85,530.71  | 1.46ms      | 73.17ms     | 1,710,746      | 12.89MB      | 34.98MiB |
| C# .NET AOT       | 8013 | 80,032.55  | 3.98ms      | 70.59ms     | 1,600,855      | 14.20MB      | 15.34MiB |
| C# Carter AOT     | 8036 | 73,824.65  | 4.72ms      | 74.36ms     | 1,476,848      | 13.10MB      | 14.98MiB |
| C# Carter         | 8035 | 70,599.66  | 4.23ms      | 79.56ms     | 1,412,302      | 12.52MB      | 31.99MiB |
| F# .NET AOT       | 8020 | 70,274.78  | 5.07ms      | 74.13ms     | 1,406,681      | 12.47MB      | 15.45MiB |
| Elixir Plug       | 8034 | 69,919.49  | 2.07ms      | 71.02ms     | 1,398,547      | 14.54MB      | 160.5MiB |
| C# .NET API       | 8001 | 68,495.90  | 5.84ms      | 80.25ms     | 1,370,303      | 12.15MB      | 32.61MiB |
| F# .NET API       | 8019 | 68,313.43  | 5.66ms      | 81.19ms     | 1,367,428      | 12.12MB      | 39.94MiB |
| C Microhttpd      | 8018 | 59,634.69  | 12.47ms     | 70.84ms     | 1,194,125      | 7.68MB       | 11.93MiB |
| Erlang Cowboy     | 8010 | 56,637.99  | 2.23ms      | 94.27ms     | 1,132,835      | 8.16MB       | 96.49MiB |
| Rust Actix        | 8005 | 53,865.99  | 11.64ms     | 66.69ms     | 1,077,485      | 6.94MB       | 7.629MiB |
| C++ Drogon        | 8017 | 52,921.37  | 13.04ms     | 70.24ms     | 1,058,558      | 8.68MB       | 10.98MiB |
| Zig zap           | 8024 | 46,060.17  | 14.64ms     | 78.95ms     | 922,067        | 8.79MB       | 31.94MiB |
| Elixir Phoenix    | 8007 | 39,730.31  | 3.33ms      | 59.24ms     | 794,640        | 9.62MB       | 162.5MiB |
| C libuv           | 8031 | 36,984.32  | 2.60ms      | 40.81ms     | 740,036        | 4.13MB       | 4.035MiB |
| Java Quarkus      | 8021 | 36,468.24  | 10.92ms     | 121.21ms    | 729,580        | 3.90MB       | 160.3MiB |
| Go Fiber          | 8008 | 35,962.46  | 18.89ms     | 155.80ms    | 721,358        | 5.14MB       | 21.54MiB |
| JS Fastify        | 8003 | 32,725.09  | 10.49ms     | 1.04s       | 654,643        | 6.18MB       | 27.62MiB |
| Java Spring Boot  | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
| Java Micronaut    | 8026 | 30,816.49  | 13.84ms     | 127.61ms    | 616,499        | 3.97MB       | 111.4MiB |
| Kotlin Ktor       | 8027 | 26,392.53  | 13.53ms     | 108.33ms    | 527,895        | 2.47MB       | 173.5MiB |
| JS Express        | 8014 | 25,475.41  | 5.52ms      | 398.78ms    | 509,579        | 4.79MB       | 38.84MiB |
| Swift Vapor       | 8012 | 24,274.85  | 4.99ms      | 60.93ms     | 485,537        | 4.03MB       | 4.625MiB |
| JS NestJS Express | 8029 | 22,594.41  | 7.17ms      | 539.74ms    | 451,933        | 5.65MB       | 45.64MiB |
| Python FastAPI    | 8004 | 20,748.27  | 12.73ms     | 61.11ms     | 414,988        | 3.01MB       | 192.3MiB |
| Go Chi            | 8023 | 20,670.33  | 21.06ms     | 94.38ms     | 413,480        | 2.68MB       | 18.82MiB |
| Go net/http       | 8032 | 19,104.87  | 21.36ms     | 133.70ms    | 382,352        | 2.48MB       | 17.21MiB |
| PHP Swoole        | 8028 | 15,856.33  | 24.44ms     | 98.82ms     | 317,270        | 2.83MB       | 57.5MiB  |
| Python Litestar   | 8000 | 13,671.14  | 19.49ms     | 77.36ms     | 274,003        | 1.98MB       | 147.9MiB |
| Ruby Sinatra      | 8033 | 3,419.24   | 132.06ms    | 700.13ms    | 68,422         | 440.74KB     | 63.75MiB |
| Ruby Rails        | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Python Django     | 8016 | 1,417.66\* | 164.76ms    | 1.61s       | 28,376         | 418.07KB     | 421.4MiB |

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred

### Orders (`GET /orders`)

| Framework         | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ----------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Bun            | 8002 | 15,168.57  | 7.91ms      | 25.50ms     | 303,448        | 161.87MB     | 71.4MiB  |
| Rust Axum         | 8022 | 14,961.55  | 11.05ms     | 273.42ms    | 299,291        | 162.52MB     | 9.605MiB |
| C# .NET AOT       | 8013 | 8,970.70   | 19.63ms     | 96.22ms     | 179,745        | 95.30MB      | 35.16MiB |
| C# Carter AOT     | 8036 | 8,850.36   | 19.94ms     | 96.12ms     | 177,465        | 94.03MB      | 29.59MiB |
| F# .NET AOT       | 8020 | 8,718.01   | 18.82ms     | 97.55ms     | 174,505        | 93.45MB      | 51.04MiB |
| Java Quarkus      | 8021 | 8,660.41   | 27.97ms     | 830.87ms    | 173,299        | 91.50MB      | 206.4MiB |
| Rust Actix        | 8005 | 8,495.25   | 28.42ms     | 453.51ms    | 170,393        | 92.28MB      | 18.82MiB |
| Zig zap           | 8024 | 8,331.74   | 27.98ms     | 106.42ms    | 167,054        | 90.92MB      | 35.02MiB |
| C# Carter         | 8035 | 8,324.23   | 21.96ms     | 100.35ms    | 166,644        | 88.44MB      | 57.09MiB |
| F# .NET API       | 8019 | 8,281.61   | 22.79ms     | 103.14ms    | 165,899        | 87.98MB      | 59.96MiB |
| C# .NET API       | 8001 | 8,193.76   | 21.65ms     | 102.03ms    | 164,048        | 87.05MB      | 61.7MiB  |
| Elixir Plug       | 8034 | 5,976.94   | 20.40ms     | 150.91ms    | 119,584        | 65.40MB      | 209.5MiB |
| C Microhttpd      | 8018 | 5,580.41   | 25.67ms     | 94.12ms     | 111,624        | 60.55MB      | 12.16MiB |
| Go Chi            | 8023 | 4,929.02   | 36.65ms     | 653.67ms    | 98,804         | 54.04MB      | 62.18MiB |
| Go net/http       | 8032 | 4,927.33   | 36.62ms     | 677.12ms    | 98,605         | 54.02MB      | 59.77MiB |
| Go Fiber          | 8008 | 4,414.08   | 40.54ms     | 953.34ms    | 88,421         | 48.38MB      | 69.99MiB |
| Elixir Phoenix    | 8007 | 3,411.77   | 35.18ms     | 110.29ms    | 68,284         | 37.45MB      | 187.7MiB |
| JS NestJS Fastify | 8030 | 3,393.83   | 39.34ms     | 1.03s       | 67,904         | 36.42MB      | 50.28MiB |
| Python Litestar   | 8000 | 3,275.96   | 38.73ms     | 180.56ms    | 65,554         | 35.64MB      | 159.9MiB |
| JS NestJS Express | 8029 | 2,785.96   | 49.84ms     | 1.23s       | 55,753         | 30.07MB      | 53.66MiB |
| JS Express        | 8014 | 2,752.77   | 45.45ms     | 532.15ms    | 55,087         | 29.54MB      | 48.51MiB |
| C libuv           | 8031 | 2,484.98\* | 42.26ms     | 220.51ms    | 49,744         | 26.92MB      | 9.461MiB |
| Erlang Cowboy     | 8010 | 2,240.62   | 53.50ms     | 168.07ms    | 44,832         | 22.88MB      | 162.1MiB |
| C++ Drogon        | 8017 | 2,169.70   | 58.65ms     | 300.55ms    | 43,500         | 23.62MB      | 42.31MiB |
| Python FastAPI    | 8004 | 1,912.48   | 62.77ms     | 194.96ms    | 38,260         | 20.81MB      | 202.2MiB |
| JS Fastify        | 8003 | 1,502.87   | 88.97ms     | 1.85s       | 30,077         | 16.13MB      | 45.64MiB |
| Ruby Sinatra      | 8033 | 1,246.67   | 229.73ms    | 1.18s       | 24,955         | 13.52MB      | 66.74MiB |
| JS Deno           | 8011 | 1,135.43   | 105.51ms    | 317.83ms    | 22,736         | 12.14MB      | 104.5MiB |
| Java Micronaut    | 8026 | 1,096.13   | 147.81ms    | 1.90s       | 21,982         | 11.69MB      | 172.9MiB |
| Kotlin Ktor       | 8027 | 1,026.68\* | 139.66ms    | 1.29s       | 20,590         | 11.12MB      | 213.5MiB |
| PHP Swoole        | 8028 | 1,006.90   | 120.00ms    | 499.73ms    | 20,195         | 10.97MB      | 60.59MiB |
| Python Django     | 8016 | 832.70\*   | 142.94ms    | 2.00s       | 16,674         | 9.18MB       | 396.6MiB |
| Haskell Servant   | 8006 | 618.77\*   | 180.92ms    | 1.93s       | 12,397         | 6.74MB       | 248.4MiB |
| Swift Vapor       | 8012 | 592.98     | 203.72ms    | 838.94ms    | 11,891         | 6.12MB       | 20.16MiB |
| Java Spring Boot  | 8009 | 571.97\*   | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Ruby Rails        | 8015 | 423.29\*   | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred
