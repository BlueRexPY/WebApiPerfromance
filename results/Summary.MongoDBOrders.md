# MongoDB Orders Performance Test Results — Summary

**Generated**: 2026-02-19 06:38:21 UTC
**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:PORT/mongodb/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/mongodb/orders` (MongoDB Orders)

## Results

| Framework | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| --------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Bun API   | 8002 | 3,035.29   | 39.61ms     | 158.83ms    | 60,730         | 32.28MB      | 116.6MiB |
| .NET API  | 8001 | 2,902.20\* | 42.08ms     | 209.74ms    | 58,182         | 314.59KB     | 88.54MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
