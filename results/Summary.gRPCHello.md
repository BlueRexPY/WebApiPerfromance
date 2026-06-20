# gRPC Hello Performance Test Results — Summary

**Generated**: 2026-06-19 23:50:31 UTC
**Test Command**: `ghz --insecure --proto api.proto --call api.ApiService/SayHello -c 120 -z 20s 127.0.0.1:PORT`

**Test Configuration**:

- Concurrency: 120
- Duration: 20 seconds
- Endpoint: `api.ApiService/SayHello` (gRPC Hello)

## Results

| Framework               | Port | Req/sec     | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| ----------------------- | ---- | ----------- | ----------- | ----------- | -------------- | ------------ | ------ |
| C# .NET API             | 8001 | 66,895.28\* | 1.53ms      | 72.73ms     | 1,337,910      |              | N/A    |
| Go Chi                  | 8023 | 27,480.13\* | 4.04ms      | 68.12ms     | 549,611        |              | N/A    |
| Go Fiber                | 8008 | 22,067.35\* | 5.06ms      | 70.63ms     | 441,357        |              | N/A    |
| Go Echo                 | 8096 | 21,711.14\* | 5.14ms      | 68.28ms     | 434,238        |              | N/A    |
| JS Node Express         | 8014 | 20,828.79\* | 5.41ms      | 27.24ms     | 416,580        |              | N/A    |
| JS Node Express Cluster | 8041 | 20,030.53\* | 5.64ms      | 53.86ms     | 400,615        |              | N/A    |
| JS Bun                  | 8002 | 17,675.11\* | 6.69ms      | 36.90ms     | 353,510        |              | N/A    |
| JS Node Bun Cluster     | 8047 | 17,547.09\* | 6.74ms      | 34.42ms     | 350,940        |              | N/A    |

**Note**: \* = Non-2xx or 3xx responses occurred during the test
