# Orders Performance Test Results — Summary

**Generated**: 2026-02-21 06:19:30 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Orders)

## Results

| Framework                 | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ------------------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Bun                    | 8002 | 15,455.76  | 7.76ms      | 25.50ms     | 309,152        | 164.94MB     | 71.47MiB |
| Rust Axum                 | 8022 | 14,961.55  | 11.05ms     | 273.42ms    | 299,291        | 162.52MB     | 9.605MiB |
| C# .NET AOT               | 8013 | 8,970.70   | 19.63ms     | 96.22ms     | 179,745        | 95.30MB      | 35.16MiB |
| C# Carter AOT             | 8036 | 8,850.36   | 19.94ms     | 96.12ms     | 177,465        | 94.03MB      | 29.59MiB |
| Rust Actix                | 8005 | 8,736.44   | 28.93ms     | 626.57ms    | 174,953        | 94.90MB      | 15.66MiB |
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
| JS Deno                   | 8011 | 1,662.90   | 72.51ms     | 311.88ms    | 33,311         | 17.78MB      | 177MiB   |
| C++ Drogon                | 8017 | 1,418.49   | 88.88ms     | 403.18ms    | 28,442         | 15.44MB      | 43.52MiB |
| Ruby Sinatra              | 8033 | 1,246.67   | 229.73ms    | 1.18s       | 24,955         | 13.52MB      | 66.74MiB |
| Java Micronaut            | 8026 | 1,096.13   | 147.81ms    | 1.90s       | 21,982         | 11.69MB      | 172.9MiB |
| Kotlin Ktor               | 8027 | 1,026.68\* | 139.66ms    | 1.29s       | 20,590         | 11.12MB      | 213.5MiB |
| PHP Swoole                | 8028 | 1,006.90   | 120.00ms    | 499.73ms    | 20,195         | 10.97MB      | 60.59MiB |
| Haskell Servant           | 8006 | 796.44\*   | 135.25ms    | 1.95s       | 15,974         | 8.68MB       | 317.1MiB |
| Swift Vapor               | 8012 | 579.65     | 206.29ms    | 698.48ms    | 11,633         | 5.99MB       | 60.86MiB |
| Java Spring Boot          | 8009 | 571.97\*   | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Python Django             | 8016 | 470.49\*   | 265.57ms    | 1.99s       | 9,428          | 5.19MB       | 490.1MiB |
| Ruby Rails                | 8015 | 423.29\*   | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
