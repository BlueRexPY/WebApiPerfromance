# Orders Performance Test Results — Summary

**Generated**: 2026-02-20 03:21:12 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Orders)

## Results

| Framework        | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Bun API          | 8002 | 13,926.52 | 8.61ms      | 25.04ms     | 278,570        | 148.62MB     | 22.21MiB |
| .NET AOT         | 8013 | 8,970.70  | 19.63ms     | 96.22ms     | 179,745        | 95.30MB      | 35.16MiB |
| F# AOT           | 8020 | 8,718.01  | 18.82ms     | 97.55ms     | 174,505        | 93.45MB      | 51.04MiB |
| Rust Actix       | 8005 | 8,495.25  | 28.42ms     | 453.51ms    | 170,393        | 92.28MB      | 18.82MiB |
| F# API           | 8019 | 8,281.61  | 22.79ms     | 103.14ms    | 165,899        | 87.98MB      | 59.96MiB |
| .NET API         | 8001 | 8,193.76  | 21.65ms     | 102.03ms    | 164,048        | 87.05MB      | 61.7MiB  |
| Go Fiber         | 8008 | 8,051.70  | 28.15ms     | 516.70ms    | 161,447        | 88.24MB      | 60.96MiB |
| C Microhttpd     | 8018 | 5,598.50  | 25.25ms     | 137.41ms    | 112,180        | 60.74MB      | 4.691MiB |
| Elixir Phoenix   | 8007 | 3,411.77  | 35.18ms     | 110.29ms    | 68,284         | 37.45MB      | 187.7MiB |
| Python Litestar  | 8000 | 3,275.96  | 38.73ms     | 180.56ms    | 65,554         | 35.64MB      | 159.9MiB |
| Express API      | 8014 | 2,752.77  | 45.45ms     | 532.15ms    | 55,087         | 29.54MB      | 48.51MiB |
| Erlang Cowboy    | 8010 | 2,240.62  | 53.50ms     | 168.07ms    | 44,832         | 22.88MB      | 162.1MiB |
| C++ Drogon       | 8017 | 2,169.70  | 58.65ms     | 300.55ms    | 43,500         | 23.62MB      | 42.31MiB |
| Python FastAPI   | 8004 | 1,912.48  | 62.77ms     | 194.96ms    | 38,260         | 20.81MB      | 202.2MiB |
| Fastify API      | 8003 | 1,502.87  | 88.97ms     | 1.85s       | 30,077         | 16.13MB      | 45.64MiB |
| Deno API         | 8011 | 1,135.43  | 105.51ms    | 317.83ms    | 22,736         | 12.14MB      | 104.5MiB |
| Django API       | 8016 | 832.70\*  | 142.94ms    | 2.00s       | 16,674         | 9.18MB       | 396.6MiB |
| Haskell Servant  | 8006 | 618.77\*  | 180.92ms    | 1.93s       | 12,397         | 6.74MB       | 248.4MiB |
| Swift Vapor      | 8012 | 592.98    | 203.72ms    | 838.94ms    | 11,891         | 6.12MB       | 20.16MiB |
| Java Spring Boot | 8009 | 571.97\*  | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Ruby Rails       | 8015 | 423.29\*  | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
