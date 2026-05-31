# JS Bun — SSE Orders Benchmark

**Tested**: 2026-05-31 17:28:54 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,435.01 |
| Avg Latency | 50.49ms |
| Max Latency | 377.13ms |
| Total Requests | 48,720 |
| Transfer/sec | 28.30MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 50.49ms | 19.63ms | 377.13ms | 98.38% |
| Req/Sec | 1.23k | 150.79 | 1.43k | 90.73% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 62.29MiB |
| Memory Limit | 1GiB |
| Memory % | 6.08% |
| CPU % | 0.25% |
| PIDs | 17 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    50.49ms   19.63ms 377.13ms   98.38%
    Req/Sec     1.23k   150.79     1.43k    90.73%
  48720 requests in 20.01s, 566.15MB read
Requests/sec:   2435.01
Transfer/sec:     28.30MB
```
