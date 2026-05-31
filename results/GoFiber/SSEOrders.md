# Go Fiber — SSE Orders Benchmark

**Tested**: 2026-05-31 18:36:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,315.22 |
| Avg Latency | 32.73ms |
| Max Latency | 422.28ms |
| Total Requests | 106,542 |
| Transfer/sec | 62.34MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 32.73ms | 35.41ms | 422.28ms | 80.09% |
| Req/Sec | 2.67k | 368.02 | 3.75k | 74.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.11MiB |
| Memory Limit | 1GiB |
| Memory % | 4.60% |
| CPU % | 0.01% |
| PIDs | 45 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.73ms   35.41ms 422.28ms   80.09%
    Req/Sec     2.67k   368.02     3.75k    74.25%
  106542 requests in 20.04s, 1.22GB read
Requests/sec:   5315.22
Transfer/sec:     62.34MB
```
