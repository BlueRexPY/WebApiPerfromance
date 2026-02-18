# Orders Performance Test Results — Summary

**Generated**: 2026-02-18 03:17:39 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Orders)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Rust Actix | 8005 | 17,724.81 | 21.65ms | 203.89ms | 354,579 | 188.85MB | 14.46MiB |
| C++ Drogon | 8017 | 14,947.58\* | 23.54ms | 92.20ms | 299,670 | 3.68MB | 54.71MiB |
| Bun API | 8002 | 14,309.52 | 8.38ms | 26.66ms | 286,237 | 152.71MB | 22.9MiB |
| .NET AOT | 8013 | 9,852.22 | 18.38ms | 95.76ms | 197,422 | 104.67MB | 34.27MiB |
| .NET API | 8001 | 9,152.07 | 19.79ms | 98.98ms | 183,224 | 97.23MB | 59.26MiB |
| Go Fiber | 8008 | 5,964.18 | 32.33ms | 613.24ms | 119,451 | 65.37MB | 61.2MiB |
| C Microhttpd | 8018 | 5,287.82 | 26.65ms | 95.46ms | 105,779 | 57.37MB | 3.141MiB |
| Elixir Phoenix | 8007 | 4,850.30 | 24.72ms | 65.22ms | 97,068 | 53.24MB | 196MiB |
| Fastify API | 8003 | 3,712.32 | 32.75ms | 290.46ms | 74,266 | 39.84MB | 46.36MiB |
| Express API | 8014 | 3,198.75 | 41.46ms | 963.49ms | 63,992 | 34.33MB | 47.3MiB |
| Python FastAPI | 8004 | 3,162.28 | 38.75ms | 166.03ms | 63,290 | 34.40MB | 201.4MiB |
| Python Litestar | 8000 | 3,161.15 | 39.86ms | 180.15ms | 63,269 | 34.39MB | 155.8MiB |
| Erlang Cowboy | 8010 | 2,623.33 | 45.70ms | 141.05ms | 52,503 | 26.78MB | 152.8MiB |
| Deno API | 8011 | 1,433.79 | 83.48ms | 146.43ms | 28,700 | 15.33MB | 102.6MiB |
| Haskell Servant | 8006 | 1,011.93 | 118.11ms | 240.93ms | 20,251 | 11.03MB | 258.1MiB |
| Django API | 8016 | 894.62\* | 135.13ms | 467.39ms | 17,919 | 9.86MB | 128.1MiB |
| Swift Vapor | 8012 | 674.79 | 191.26ms | 879.95ms | 13,520 | 6.97MB | 24.9MiB |
| Java Spring Boot | 8009 | 633.20 | 219.87ms | 1.72s | 12,685 | 7.22MB | 219.4MiB |
| Ruby Rails | 8015 | 345.32\* | 260.45ms | 1.60s | 6,925 | 3.44MB | 315.2MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
