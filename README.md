# Web API Performance Comparison

This repository contains performance-focused web API implementations in JS (Bun, Deno, Fastify, Express), Python (FastAPI, Litestar, Django), Rust (Actix), Go (Fiber), Elixir (Phoenix), Erlang (Cowboy), C# (.NET API and AOT), F# (.NET API and AOT), Java (Spring Boot and Quarkus), Haskell (Servant), C++ (Drogon), Swift (Vapor), and Ruby (Rails). The APIs expose two endpoints: a simple "Hello World" (`GET /`) and a more complex "Orders" endpoint (`GET /orders`).

## Benchmark Results

**Test Configuration**: `wrk -t 2 -c 120 -d 20s` — 2 threads, 120 connections, 20 seconds  
**Tested**: 2026-02-20 03:34:48 UTC

### Hello World (`GET /`)

| Framework        | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Bun           | 8002 | 139,902.76 | 0.95ms      | 74.63ms     | 2,798,451      | 18.01MB      | 60.37MiB |
| Haskell Servant  | 8006 | 115,297.04 | 1.11ms      | 106.67ms    | 2,306,053      | 21.00MB      | 213.8MiB |
| JS Deno          | 8011 | 85,530.71  | 1.46ms      | 73.17ms     | 1,710,746      | 12.89MB      | 34.98MiB |
| C# .NET AOT      | 8013 | 80,032.55  | 3.98ms      | 70.59ms     | 1,600,855      | 14.20MB      | 15.34MiB |
| F# .NET AOT      | 8020 | 70,274.78  | 5.07ms      | 74.13ms     | 1,406,681      | 12.47MB      | 15.45MiB |
| C# .NET API      | 8001 | 68,495.90  | 5.84ms      | 80.25ms     | 1,370,303      | 12.15MB      | 32.61MiB |
| F# .NET API      | 8019 | 68,313.43  | 5.66ms      | 81.19ms     | 1,367,428      | 12.12MB      | 39.94MiB |
| C Microhttpd     | 8018 | 59,634.69  | 12.47ms     | 70.84ms     | 1,194,125      | 7.68MB       | 11.93MiB |
| Erlang Cowboy    | 8010 | 56,637.99  | 2.23ms      | 94.27ms     | 1,132,835      | 8.16MB       | 96.49MiB |
| Rust Actix       | 8005 | 53,865.99  | 11.64ms     | 66.69ms     | 1,077,485      | 6.94MB       | 7.629MiB |
| C++ Drogon       | 8017 | 52,921.37  | 13.04ms     | 70.24ms     | 1,058,558      | 8.68MB       | 10.98MiB |
| Elixir Phoenix   | 8007 | 39,730.31  | 3.33ms      | 59.24ms     | 794,640        | 9.62MB       | 162.5MiB |
| Java Quarkus     | 8021 | 36,468.24  | 10.92ms     | 121.21ms    | 729,580        | 3.90MB       | 160.3MiB |
| Go Fiber         | 8008 | 35,962.46  | 18.89ms     | 155.80ms    | 721,358        | 5.14MB       | 21.54MiB |
| JS Fastify       | 8003 | 32,725.09  | 10.49ms     | 1.04s       | 654,643        | 6.18MB       | 27.62MiB |
| Java Spring Boot | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
| JS Express       | 8014 | 25,475.41  | 5.52ms      | 398.78ms    | 509,579        | 4.79MB       | 38.84MiB |
| Swift Vapor      | 8012 | 24,274.85  | 4.99ms      | 60.93ms     | 485,537        | 4.03MB       | 4.625MiB |
| Python FastAPI   | 8004 | 20,748.27  | 12.73ms     | 61.11ms     | 414,988        | 3.01MB       | 192.3MiB |
| Python Litestar  | 8000 | 13,671.14  | 19.49ms     | 77.36ms     | 274,003        | 1.98MB       | 147.9MiB |
| Ruby Rails       | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Python Django    | 8016 | 1,417.66\* | 164.76ms    | 1.61s       | 28,376         | 418.07KB     | 421.4MiB |

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred

### Orders (`GET /orders`)

| Framework        | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Bun           | 8002 | 15,168.57 | 7.91ms      | 25.50ms     | 303,448        | 161.87MB     | 71.4MiB  |
| C# .NET AOT      | 8013 | 8,970.70  | 19.63ms     | 96.22ms     | 179,745        | 95.30MB      | 35.16MiB |
| F# .NET AOT      | 8020 | 8,718.01  | 18.82ms     | 97.55ms     | 174,505        | 93.45MB      | 51.04MiB |
| Java Quarkus     | 8021 | 8,660.41  | 27.97ms     | 830.87ms    | 173,299        | 91.50MB      | 206.4MiB |
| Rust Actix       | 8005 | 8,495.25  | 28.42ms     | 453.51ms    | 170,393        | 92.28MB      | 18.82MiB |
| F# .NET API      | 8019 | 8,281.61  | 22.79ms     | 103.14ms    | 165,899        | 87.98MB      | 59.96MiB |
| C# .NET API      | 8001 | 8,193.76  | 21.65ms     | 102.03ms    | 164,048        | 87.05MB      | 61.7MiB  |
| C Microhttpd     | 8018 | 5,580.41  | 25.67ms     | 94.12ms     | 111,624        | 60.55MB      | 12.16MiB |
| Go Fiber         | 8008 | 4,414.08  | 40.54ms     | 953.34ms    | 88,421         | 48.38MB      | 69.99MiB |
| Elixir Phoenix   | 8007 | 3,411.77  | 35.18ms     | 110.29ms    | 68,284         | 37.45MB      | 187.7MiB |
| Python Litestar  | 8000 | 3,275.96  | 38.73ms     | 180.56ms    | 65,554         | 35.64MB      | 159.9MiB |
| JS Express       | 8014 | 2,752.77  | 45.45ms     | 532.15ms    | 55,087         | 29.54MB      | 48.51MiB |
| Erlang Cowboy    | 8010 | 2,240.62  | 53.50ms     | 168.07ms    | 44,832         | 22.88MB      | 162.1MiB |
| C++ Drogon       | 8017 | 2,169.70  | 58.65ms     | 300.55ms    | 43,500         | 23.62MB      | 42.31MiB |
| Python FastAPI   | 8004 | 1,912.48  | 62.77ms     | 194.96ms    | 38,260         | 20.81MB      | 202.2MiB |
| JS Fastify       | 8003 | 1,502.87  | 88.97ms     | 1.85s       | 30,077         | 16.13MB      | 45.64MiB |
| JS Deno          | 8011 | 1,135.43  | 105.51ms    | 317.83ms    | 22,736         | 12.14MB      | 104.5MiB |
| Python Django    | 8016 | 832.70\*  | 142.94ms    | 2.00s       | 16,674         | 9.18MB       | 396.6MiB |
| Haskell Servant  | 8006 | 618.77\*  | 180.92ms    | 1.93s       | 12,397         | 6.74MB       | 248.4MiB |
| Swift Vapor      | 8012 | 592.98    | 203.72ms    | 838.94ms    | 11,891         | 6.12MB       | 20.16MiB |
| Java Spring Boot | 8009 | 571.97\*  | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Ruby Rails       | 8015 | 423.29\*  | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred
