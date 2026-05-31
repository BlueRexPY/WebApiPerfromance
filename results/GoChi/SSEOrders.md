# Go Chi — SSE Orders Benchmark

**Tested**: 2026-05-31 18:30:46 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8023/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,270.77 |
| Avg Latency | 31.38ms |
| Max Latency | 206.66ms |
| Total Requests | 85,787 |
| Transfer/sec | 50.10MB |
| Port | 8023 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 31.38ms | 28.49ms | 206.66ms | 70.42% |
| Req/Sec | 2.15k | 394.04 | 4.31k | 71.14% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 70.92MiB |
| Memory Limit | 1GiB |
| Memory % | 6.93% |
| CPU % | 0.00% |
| PIDs | 56 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8023/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    31.38ms   28.49ms 206.66ms   70.42%
    Req/Sec     2.15k   394.04     4.31k    71.14%
  85787 requests in 20.09s, 0.98GB read
Requests/sec:   4270.77
Transfer/sec:     50.10MB
```
