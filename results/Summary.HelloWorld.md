# Hello World Performance Test Results — Summary

**Generated**: 2026-02-18 02:58:54 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Haskell Servant | 8006 | 158,828.12 | 800.54us | 91.30ms | 3,176,712 | 28.93MB | 252.2MiB |
| Rust Actix | 8005 | 136,275.09 | 10.40ms | 63.43ms | 2,725,597 | 17.54MB | 4.5MiB |
| Bun API | 8002 | 128,261.01 | 0.99ms | 63.18ms | 2,565,540 | 16.51MB | 16.35MiB |
| Deno API | 8011 | 127,777.84 | 1.02ms | 75.07ms | 2,555,872 | 19.25MB | 43.31MiB |
| Erlang Cowboy | 8010 | 94,813.52 | 1.33ms | 59.39ms | 1,896,587 | 13.66MB | 99.94MiB |
| Fastify API | 8003 | 94,293.78 | 1.74ms | 262.72ms | 1,886,129 | 17.81MB | 28.61MiB |
| .NET AOT | 8013 | 88,743.25 | 4.99ms | 70.94ms | 1,775,163 | 15.74MB | 18.07MiB |
| .NET API | 8001 | 69,305.26 | 4.93ms | 76.90ms | 1,387,512 | 12.29MB | 31.32MiB |
| Elixir Phoenix | 8007 | 63,088.54 | 2.20ms | 59.78ms | 1,268,080 | 15.28MB | 169.9MiB |
| C++ Drogon | 8017 | 54,436.33 | 13.25ms | 70.48ms | 1,089,551 | 8.93MB | 7.906MiB |
| C Microhttpd | 8018 | 46,977.74 | 12.23ms | 68.22ms | 940,442 | 6.05MB | 3.047MiB |
| Go Fiber | 8008 | 31,542.32 | 18.61ms | 84.42ms | 632,287 | 4.51MB | 12.91MiB |
| Express API | 8014 | 26,751.77 | 5.73ms | 446.04ms | 535,113 | 5.03MB | 39.1MiB |
| Python FastAPI | 8004 | 24,245.88 | 12.33ms | 78.04ms | 485,065 | 3.51MB | 191.4MiB |
| Python Litestar | 8000 | 13,273.26 | 19.75ms | 76.94ms | 266,041 | 1.92MB | 147.6MiB |
| Java Spring Boot | 8009 | 3,789.60 | 37.66ms | 463.78ms | 75,980 | 362.68KB | 817.5MiB |
| Ruby Rails | 8015 | 2,118.87\* | 74.64ms | 1.98s | 42,428 | 593.86KB | 289.4MiB |
| Django API | 8016 | 1,937.01\* | 64.76ms | 418.89ms | 38,772 | 570.99KB | 137.8MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
