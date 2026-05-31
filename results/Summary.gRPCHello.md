# gRPC Hello Performance Test Results — Summary

**Generated**: 2026-05-31 17:40:04 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/api.ApiService/SayHello`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/api.ApiService/SayHello` (gRPC Hello)

## Results

| Framework               | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ----------------------- | ---- | ------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Node Express         | 8014 | 636.10  | 0ms         | 0ms         | 31,806         | N/A          | 623.6MiB |
| JS Bun                  | 8002 | 632.05  | 0ms         | 0ms         | 31,610         | N/A          | 216MiB   |
| JS Node Bun Cluster     | 8047 | 631.62  | 0ms         | 0ms         | 31,582         | N/A          | 295.5MiB |
| JS Node Express Cluster | 8041 | 628.90  | 0ms         | 0ms         | 31,446         | N/A          | 663.9MiB |
| C# .NET API             | 8001 | 374.27  | 0ms         | 0ms         | 18,714         | N/A          | 61.25MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
