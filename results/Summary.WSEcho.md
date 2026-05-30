# WS Echo Performance Test Results — Summary

**Generated**: 2026-05-30 21:16:50 UTC
**Test Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:PORT/ws/echo`

**Test Configuration**:

- VUs: 120
- Duration: 20 seconds
- Endpoint: `/ws/echo` (WS Echo)

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
| JS Node Bun Cluster | 8047 | 3,451.95 | 1.077663ms | 32ms | 69,180 | N/A | 43.36MiB |
| C# .NET AOT | 8013 | 3,421.39 | 2.433218ms | 35ms | 68,576 | N/A | 42.44MiB |
| C# Carter AOT | 8036 | 3,285.39 | 2.659972ms | 26ms | 65,894 | N/A | 42.16MiB |
| Rust Actix | 8005 | 3,273.95 | 1.040941ms | 17ms | 65,638 | N/A | 4.555MiB |
| Rust Axum | 8022 | 3,252.22 | 1.223297ms | 26ms | 65,177 | N/A | 3.07MiB |
| F# .NET AOT | 8020 | 3,248.73 | 2.597882ms | 33ms | 65,148 | N/A | 38.65MiB |
| JS Bun | 8002 | 3,225.87 | 1.883002ms | 21ms | 64,640 | N/A | 17.66MiB |
| C# Carter | 8035 | 3,154.32 | 4.845277ms | 51ms | 63,245 | N/A | 46.7MiB |
| C# .NET API | 8001 | 3,146.18 | 5.273728ms | 61ms | 63,072 | N/A | 46.19MiB |
| F# .NET API | 8019 | 3,098.91 | 5.449474ms | 48ms | 62,115 | N/A | 46.3MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
