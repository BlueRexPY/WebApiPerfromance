# Orders Performance Test Results — Summary

**Generated**: 2026-02-18 04:17:34 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Orders)

## Results

| Framework        | Port | Req/sec     | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | ----------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Rust Actix       | 8005 | 13,382.30   | 20.71ms     | 240.98ms    | 268,146        | 142.58MB     | 14.38MiB |
| .NET AOT         | 8013 | 12,964.12   | 14.66ms     | 89.68ms     | 259,464        | 137.73MB     | 46.18MiB |
| C++ Drogon       | 8017 | 12,226.54\* | 25.02ms     | 97.03ms     | 244,705        | 3.01MB       | 62.34MiB |
| .NET API         | 8001 | 12,196.47   | 17.11ms     | 91.97ms     | 244,262        | 129.57MB     | 55.81MiB |
| Bun API          | 8002 | 12,079.60   | 9.93ms      | 29.31ms     | 241,671        | 128.91MB     | 19.44MiB |
| C Microhttpd     | 8018 | 7,885.34    | 20.54ms     | 82.12ms     | 157,718        | 85.56MB      | 3.148MiB |
| Go Fiber         | 8008 | 7,132.90    | 28.75ms     | 368.33ms    | 142,761        | 78.17MB      | 55.62MiB |
| Elixir Phoenix   | 8007 | 4,137.54    | 28.97ms     | 61.21ms     | 82,794         | 45.41MB      | 193.7MiB |
| Fastify API      | 8003 | 3,253.89    | 39.59ms     | 848.97ms    | 65,113         | 34.92MB      | 47.86MiB |
| Python Litestar  | 8000 | 2,964.28    | 42.49ms     | 178.29ms    | 59,307         | 32.25MB      | 153.6MiB |
| Python FastAPI   | 8004 | 2,906.74    | 41.98ms     | 169.17ms    | 58,150         | 31.62MB      | 200.6MiB |
| Express API      | 8014 | 2,821.47    | 46.60ms     | 1.06s       | 56,450         | 30.28MB      | 47.04MiB |
| Erlang Cowboy    | 8010 | 2,518.31    | 47.66ms     | 131.67ms    | 50,384         | 25.71MB      | 157.9MiB |
| Django API       | 8016 | 1,479.11\*  | 87.02ms     | 472.95ms    | 29,608         | 16.30MB      | 167.1MiB |
| Deno API         | 8011 | 1,329.41    | 90.02ms     | 128.34ms    | 26,623         | 14.22MB      | 104.3MiB |
| Haskell Servant  | 8006 | 952.22      | 125.63ms    | 247.54ms    | 19,053         | 10.38MB      | 240.6MiB |
| Swift Vapor      | 8012 | 842.21\*    | 164.67ms    | 1.14s       | 16,880         | 8.64MB       | 19.59MiB |
| Java Spring Boot | 8009 | 660.05      | 219.33ms    | 1.61s       | 13,216         | 7.53MB       | 222.1MiB |
| Ruby Rails       | 8015 | 608.09\*    | 179.30ms    | 1.84s       | 12,176         | 6.07MB       | 301.5MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
