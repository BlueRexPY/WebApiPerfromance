# Hello World Performance Test Results — Summary

**Generated**: 2026-02-19 07:07:36 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Bun API | 8002 | 121,139.71 | 1.03ms | 54.61ms | 2,423,009 | 15.60MB | 34.34MiB |
| Haskell Servant | 8006 | 115,297.04 | 1.11ms | 106.67ms | 2,306,053 | 21.00MB | 213.8MiB |
| Rust Actix | 8005 | 111,793.63 | 8.65ms | 60.47ms | 2,236,041 | 14.39MB | 4.512MiB |
| .NET API | 8001 | 86,498.38 | 5.63ms | 81.89ms | 1,731,992 | 15.34MB | 35.76MiB |
| Deno API | 8011 | 85,530.71 | 1.46ms | 73.17ms | 1,710,746 | 12.89MB | 34.98MiB |
| .NET AOT | 8013 | 63,397.83 | 6.74ms | 74.39ms | 1,269,368 | 11.25MB | 18.13MiB |
| Go Fiber | 8008 | 62,286.61 | 15.70ms | 77.64ms | 1,245,847 | 8.91MB | 13.43MiB |
| Erlang Cowboy | 8010 | 56,637.99 | 2.23ms | 94.27ms | 1,132,835 | 8.16MB | 96.49MiB |
| C Microhttpd | 8018 | 54,935.98 | 12.34ms | 68.93ms | 1,098,912 | 7.07MB | 4.484MiB |
| C++ Drogon | 8017 | 52,921.37 | 13.04ms | 70.24ms | 1,058,558 | 8.68MB | 10.98MiB |
| Elixir Phoenix | 8007 | 39,730.31 | 3.33ms | 59.24ms | 794,640 | 9.62MB | 162.5MiB |
| Fastify API | 8003 | 32,725.09 | 10.49ms | 1.04s | 654,643 | 6.18MB | 27.62MiB |
| Java Spring Boot | 8009 | 31,265.68 | 13.21ms | 170.99ms | 625,607 | 2.92MB | 144.2MiB |
| Express API | 8014 | 25,475.41 | 5.52ms | 398.78ms | 509,579 | 4.79MB | 38.84MiB |
| Swift Vapor | 8012 | 24,274.85 | 4.99ms | 60.93ms | 485,537 | 4.03MB | 4.625MiB |
| Python FastAPI | 8004 | 20,748.27 | 12.73ms | 61.11ms | 414,988 | 3.01MB | 192.3MiB |
| Python Litestar | 8000 | 13,671.14 | 19.49ms | 77.36ms | 274,003 | 1.98MB | 147.9MiB |
| Ruby Rails | 8015 | 3,103.00 | 44.47ms | 1.16s | 62,156 | 869.69KB | 296.5MiB |
| Django API | 8016 | 1,417.66\* | 164.76ms | 1.61s | 28,376 | 418.07KB | 421.4MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
