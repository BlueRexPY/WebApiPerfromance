# JS Node Express — SSE Orders Benchmark

**Tested**: 2026-05-31 17:32:00 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,529.82 |
| Avg Latency | 79.13ms |
| Max Latency | 524.46ms |
| Total Requests | 30,616 |
| Transfer/sec | 18.38MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 79.13ms | 19.78ms | 524.46ms | 97.99% |
| Req/Sec | 770.47 | 94.32 | 0.95k | 82.71% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 52.31MiB |
| Memory Limit | 1GiB |
| Memory % | 5.11% |
| CPU % | 0.02% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    79.13ms   19.78ms 524.46ms   97.99%
    Req/Sec   770.47     94.32     0.95k    82.71%
  30616 requests in 20.01s, 367.74MB read
Requests/sec:   1529.82
Transfer/sec:     18.38MB
```
