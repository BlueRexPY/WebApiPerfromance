# Hello World Performance Test Results — Summary

**Generated**: 2026-02-18 04:17:34 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results

| Framework        | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Haskell Servant  | 8006 | 137,467.54 | 0.96ms      | 105.72ms    | 2,749,565      | 25.04MB      | 233.2MiB |
| .NET AOT         | 8013 | 109,601.23 | 4.93ms      | 71.35ms     | 2,192,307      | 19.44MB      | 15.47MiB |
| Rust Actix       | 8005 | 109,437.17 | 9.72ms      | 63.08ms     | 2,188,924      | 14.09MB      | 4.516MiB |
| Bun API          | 8002 | 109,049.66 | 1.14ms      | 52.55ms     | 2,181,135      | 14.04MB      | 15.36MiB |
| Deno API         | 8011 | 106,969.31 | 1.16ms      | 49.06ms     | 2,139,575      | 16.12MB      | 45.88MiB |
| .NET API         | 8001 | 104,993.59 | 5.33ms      | 79.85ms     | 2,101,416      | 18.62MB      | 32.11MiB |
| C Microhttpd     | 8018 | 86,707.59  | 10.99ms     | 67.06ms     | 1,735,387      | 11.16MB      | 3.035MiB |
| Erlang Cowboy    | 8010 | 81,949.53  | 1.53ms      | 43.57ms     | 1,639,094      | 11.80MB      | 95.89MiB |
| Fastify API      | 8003 | 77,541.28  | 1.95ms      | 250.10ms    | 1,551,078      | 14.64MB      | 27.5MiB  |
| Elixir Phoenix   | 8007 | 52,176.80  | 2.59ms      | 30.83ms     | 1,043,659      | 12.64MB      | 166.3MiB |
| Go Fiber         | 8008 | 44,459.89  | 16.73ms     | 80.90ms     | 890,398        | 6.36MB       | 13.11MiB |
| C++ Drogon       | 8017 | 40,079.92  | 15.84ms     | 92.62ms     | 802,993        | 6.57MB       | 39.84MiB |
| Swift Vapor      | 8012 | 33,271.14  | 3.64ms      | 47.88ms     | 665,452        | 4.89MB       | 4.582MiB |
| Java Spring Boot | 8009 | 32,631.75  | 12.44ms     | 241.28ms    | 653,114        | 3.05MB       | 140.5MiB |
| Python FastAPI   | 8004 | 23,455.92  | 12.17ms     | 75.56ms     | 469,673        | 3.40MB       | 190.4MiB |
| Express API      | 8014 | 23,261.88  | 6.50ms      | 533.98ms    | 465,312        | 4.37MB       | 38.89MiB |
| Python Litestar  | 8000 | 15,136.85  | 19.02ms     | 78.58ms     | 302,749        | 2.19MB       | 145.7MiB |
| Ruby Rails       | 8015 | 3,842.95   | 35.45ms     | 936.16ms    | 76,964         | 1.05MB       | 274.7MiB |
| Django API       | 8016 | 2,545.96\* | 55.53ms     | 417.33ms    | 50,949         | 750.58KB     | 137.7MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
