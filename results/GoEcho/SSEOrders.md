# Go Echo — SSE Orders Benchmark

**Tested**: 2026-05-31 18:33:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8096/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,238.62 |
| Avg Latency | 33.05ms |
| Max Latency | 369.16ms |
| Total Requests | 105,077 |
| Transfer/sec | 61.46MB |
| Port | 8096 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 33.05ms | 35.61ms | 369.16ms | 80.02% |
| Req/Sec | 2.64k | 371.88 | 3.73k | 74.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 56.5MiB |
| Memory Limit | 1GiB |
| Memory % | 5.52% |
| CPU % | 0.00% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8096/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    33.05ms   35.61ms 369.16ms   80.02%
    Req/Sec     2.64k   371.88     3.73k    74.50%
  105077 requests in 20.06s, 1.20GB read
Requests/sec:   5238.62
Transfer/sec:     61.46MB
```
