# gRPC Orders Performance Test Results — Summary

**Generated**: 2026-05-31 18:25:38 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/api.ApiService/GetOrders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/api.ApiService/GetOrders` (gRPC Orders)

## Results

| Framework               | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ----------------------- | ---- | ------- | ----------- | ----------- | -------------- | ------------ | -------- |
| C# .NET API             | 8001 | 374.77  | 0ms         | 0ms         | 18,739         | N/A          | 785MiB   |
| JS Node Bun Cluster     | 8047 | 0.06    | 0ms         | 0ms         | 3              | N/A          | 278.9MiB |
| JS Bun                  | 8002 | 0.02    | 0ms         | 0ms         | 1              | N/A          | 205.2MiB |
| JS Node Express         | 8014 | 0.02    | 0ms         | 0ms         | 1              | N/A          | 34.32MiB |
| JS Node Express Cluster | 8041 | 0.02    | 0ms         | 0ms         | 1              | N/A          | 76.25MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
