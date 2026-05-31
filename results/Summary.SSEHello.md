# SSE Hello Performance Test Results — Summary

**Generated**: 2026-05-31 18:25:38 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/sse/hello`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/sse/hello` (SSE Hello)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| JS Node Bun Cluster | 8047 | 94,123.93 | 1.68ms | 56.81ms | 1,882,803 | 17.23MB | 89.19MiB |
| C# .NET API | 8001 | 87,282.52 | 6.67ms | 74.26ms | 1,747,041 | 18.98MB | 34.82MiB |
| JS Bun | 8002 | 63,616.51 | 1.93ms | 56.25ms | 1,272,418 | 11.65MB | 33.51MiB |
| Go Chi | 8023 | 29,891.27 | 19.95ms | 88.99ms | 598,248 | 6.70MB | 16.31MiB |
| Go Echo | 8096 | 27,246.21 | 15.77ms | 84.85ms | 545,526 | 6.11MB | 17.44MiB |
| JS Node Express Cluster | 8041 | 25,762.42 | 6.57ms | 357.08ms | 515,701 | 6.34MB | 103.8MiB |
| JS Node Express | 8014 | 19,205.29 | 8.21ms | 602.22ms | 384,118 | 4.73MB | 44.23MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
