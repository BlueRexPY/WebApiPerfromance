# Web API Performance Comparison

<!-- Languages -->

![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Rust](https://img.shields.io/badge/Rust-000000?style=flat-square&logo=rust&logoColor=white)
![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white)
![Elixir](https://img.shields.io/badge/Elixir-4B275F?style=flat-square&logo=elixir&logoColor=white)
![Erlang](https://img.shields.io/badge/Erlang-A90533?style=flat-square&logo=erlang&logoColor=white)
![C#](https://img.shields.io/badge/C%23-239120?style=flat-square&logo=csharp&logoColor=white)
![F#](https://img.shields.io/badge/F%23-378BBA?style=flat-square&logo=fsharp&logoColor=white)
![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![Kotlin](https://img.shields.io/badge/Kotlin-7F52FF?style=flat-square&logo=kotlin&logoColor=white)
![Haskell](https://img.shields.io/badge/Haskell-5D4F85?style=flat-square&logo=haskell&logoColor=white)
![C++](https://img.shields.io/badge/C++-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![C](https://img.shields.io/badge/C-A8B9CC?style=flat-square&logo=c&logoColor=black)
![Swift](https://img.shields.io/badge/Swift-FA7343?style=flat-square&logo=swift&logoColor=white)
![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=flat-square&logo=ruby&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-777BB4?style=flat-square&logo=php&logoColor=white)
![Crystal](https://img.shields.io/badge/Crystal-000000?style=flat-square&logo=crystal&logoColor=white)
![Gleam](https://img.shields.io/badge/Gleam-FFAFF3?style=flat-square&logo=gleam&logoColor=black)
![Zig](https://img.shields.io/badge/Zig-F7A41D?style=flat-square&logo=zig&logoColor=white)

<!-- Runtimes -->

![Bun](https://img.shields.io/badge/Bun-000000?style=flat-square&logo=bun&logoColor=white)
![Deno](https://img.shields.io/badge/Deno-000000?style=flat-square&logo=deno&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=nodedotjs&logoColor=white)

<!-- JS Frameworks -->

![Fastify](https://img.shields.io/badge/Fastify-000000?style=flat-square&logo=fastify&logoColor=white)
![Express](https://img.shields.io/badge/Express-000000?style=flat-square&logo=express&logoColor=white)
![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=flat-square&logo=nestjs&logoColor=white)
![Hono](https://img.shields.io/badge/Hono-E36002?style=flat-square&logo=hono&logoColor=white)
![Koa](https://img.shields.io/badge/Koa-33333D?style=flat-square&logo=koa&logoColor=white)
![uWebSockets](https://img.shields.io/badge/uWebSockets-000000?style=flat-square&logoColor=white)

<!-- Python Frameworks -->

![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=flat-square&logo=fastapi&logoColor=white)
![Django](https://img.shields.io/badge/Django-092E20?style=flat-square&logo=django&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-000000?style=flat-square&logo=flask&logoColor=white)
![Litestar](https://img.shields.io/badge/Litestar-1C2333?style=flat-square&logoColor=white)

<!-- JVM Frameworks -->

![Spring Boot](https://img.shields.io/badge/Spring_Boot-6DB33F?style=flat-square&logo=springboot&logoColor=white)
![Spring WebFlux](https://img.shields.io/badge/Spring_WebFlux-6DB33F?style=flat-square&logo=spring&logoColor=white)
![Quarkus](https://img.shields.io/badge/Quarkus-4695EB?style=flat-square&logo=quarkus&logoColor=white)
![Micronaut](https://img.shields.io/badge/Micronaut-1F2D3D?style=flat-square&logoColor=white)
![Ktor](https://img.shields.io/badge/Ktor-087CFA?style=flat-square&logo=ktor&logoColor=white)

<!-- .NET Frameworks -->

![.NET](https://img.shields.io/badge/.NET-512BD4?style=flat-square&logo=dotnet&logoColor=white)

<!-- Other Frameworks -->

![Phoenix](https://img.shields.io/badge/Phoenix-FD4F00?style=flat-square&logo=phoenixframework&logoColor=white)
![Rails](https://img.shields.io/badge/Rails-CC0000?style=flat-square&logo=rubyonrails&logoColor=white)
![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=flat-square&logo=laravel&logoColor=white)
![Vapor](https://img.shields.io/badge/Vapor-2196F3?style=flat-square&logo=vapor&logoColor=white)

This repository contains performance-focused web API implementations across **20 languages** and **60+ frameworks/runtimes**:

- **JavaScript**: [Bun](apps/NodeBunApi/), [Deno](apps/NodeDenoApi/), [Node.js](apps/NodeExpressApi/) — with Fastify, Express, Koa, Hono, NestJS (Express & Fastify), uWebSockets (single & cluster modes)
- **Python**: [FastAPI](apps/PythonFastApi/), [Litestar](apps/PythonLightStar/), [Django](apps/DjangoApi/), [Flask](apps/PythonFlask/)
- **Rust**: [Actix](apps/RustActix/), [Axum](apps/RustAxum/)
- **Go**: [Fiber](apps/GoFiber/), [Gin](apps/GoGin/), [Chi](apps/GoChi/), [net/http](apps/GoNetHttp/)
- **Elixir**: [Phoenix](apps/ElixirPhoenix/), [Plug](apps/ElixirPlug/)
- **Erlang**: [Cowboy](apps/ErlangCowboy/)
- **C# / F#**: [.NET API](apps/DotNetApi/), [.NET AOT](apps/DotNetApiAot/), [Carter](apps/DotNetCarter/), [Carter AOT](apps/DotNetCarterAot/), [F# API](apps/FSharpApi/), [F# AOT](apps/FSharpApiAot/)
- **Java**: [Spring Boot](apps/JavaSpringBoot/), [Spring WebFlux](apps/JavaSpringWebFlux/), [Quarkus](apps/JavaQuarkus/), [Micronaut](apps/JavaMicronaut/)
- **Kotlin**: [Ktor](apps/KotlinKtor/)
- **Haskell**: [Servant](apps/HaskellServant/)
- **C++**: [Drogon](apps/CppDrogon/)
- **C**: [Microhttpd](apps/CMicrohttpd/), [libuv](apps/CLibuv/)
- **Swift**: [Vapor](apps/SwiftVapor/)
- **Ruby**: [Rails](apps/RubyRails/), [Sinatra](apps/RubySinatra/), [Falcon](apps/RubyFalcon/)
- **PHP**: [Laravel](apps/PhpLaravel/), [Swoole](apps/PhpSwoole/)
- **Crystal**: [Kemal](apps/CrystalKemal/), [Lucky](apps/CrystalLucky/)
- **Gleam**: [Wisp](apps/GleamApi/)
- **Zig**: [zap](apps/ZigZap/)

The APIs expose two endpoints: a simple "Hello World" (`GET /`) and a more complex "Orders" endpoint (`GET /orders`).

## Benchmark Results

**Test Configuration**: `wrk -t 2 -c 120 -d 20s` — 2 threads, 120 connections, 20 seconds  
**Tested**: 2026-02-20 03:34:48 UTC

### Hello World (`GET /`)

| Framework                      | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------------ | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Rust Actix                     | 8005 | 204,901.52 | 563.69us    | 51.45ms     | 4,098,380      | 26.38MB      | 5.477MiB |
| Haskell Servant                | 8006 | 185,813.73 | 703.71us    | 84.63ms     | 3,716,357      | 33.85MB      | 297.1MiB |
| JS Deno Parallel               | 8048 | 167,880.22 | 841.65us    | 62.51ms     | 3,358,386      | 25.30MB      | 72.3MiB  |
| Rust Axum                      | 8022 | 160,085.78 | 714.95us    | 47.65ms     | 3,202,007      | 20.61MB      | 3.754MiB |
| JS Node Fastify Cluster        | 8042 | 154,504.70 | 1.60ms      | 197.81ms    | 3,090,521      | 29.17MB      | 67.56MiB |
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
| JS Bun Fastify                 | 8050 | 109,846.64 | 1.28ms      | 74.82ms     | 2,197,276      | 15.71MB      | 47.46MiB |
| Erlang Cowboy                  | 8010 | 108,596.31 | 1.18ms      | 69.26ms     | 2,172,176      | 15.64MB      | 110.1MiB |
| JS Bun Hono Cluster            | 8057 | 104,025.87 | 1.65ms      | 63.01ms     | 2,080,852      | 14.78MB      | 52.55MiB |
| JS Bun NestJS Fastify Cluster  | 8060 | 103,569.44 | 3.32ms      | 84.12ms     | 2,072,523      | 14.82MB      | 161.6MiB |
| Crystal Kemal                  | 8061 | 101,919.44 | 1.19ms      | 37.71ms     | 2,038,644      | 17.50MB      | 15.11MiB |
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
| Crystal Lucky                  | 8062 | 66,714.76  | 1.80ms      | 21.13ms     | 1,334,446      | 16.03MB      | 14.34MiB |
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
| Gleam Wisp                     | 8063 | 12,317.78  | 13.37ms     | 63.39ms     | 246,535        | 2.04MB       | 93.26MiB |
| Ruby Sinatra                   | 8033 | 3,419.24   | 132.06ms    | 700.13ms    | 68,422         | 440.74KB     | 63.75MiB |
| PHP Laravel                    | 8037 | 3,299.74   | 45.12ms     | 281.49ms    | 66,111         | 712.15KB     | 156.8MiB |
| Ruby Rails                     | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Python Flask                   | 8067 | 2,727.53\* | 40.40ms     | 232.01ms    | 54,601         | 460.80KB     | 89.76MiB |
| Python Django                  | 8016 | 1,082.71\* | 149.23ms    | 1.69s       | 21,723         | 319.34KB     | 437.3MiB |

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred

### Orders (`GET /orders`)

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

**NOTE**: \* = Non-2xx/3xx responses or socket errors occurred
