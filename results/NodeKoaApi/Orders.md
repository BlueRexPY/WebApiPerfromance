# JS Koa — Orders Benchmark

**Tested**: 2026-02-21 05:32:18 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8038/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,750.58 |
| Avg Latency | 33.74ms |
| Max Latency | 765.63ms |
| Total Requests | 75,029 |
| Transfer/sec | 40.25MB |
| Port | 8038 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 33.74ms | 26.36ms | 765.63ms | 98.88% |
| Req/Sec | 1.88k | 154.47 | 2.11k | 82.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.28MiB |
| Memory Limit | 1GiB |
| Memory % | 4.62% |
| CPU % | 0.01% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8038/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    33.74ms   26.36ms 765.63ms   98.88%
    Req/Sec     1.88k   154.47     2.11k    82.75%
  75029 requests in 20.00s, 805.12MB read
Requests/sec:   3750.58
Transfer/sec:     40.25MB
```
