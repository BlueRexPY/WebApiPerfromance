# JS Bun Koa — Orders Benchmark

**Tested**: 2026-02-21 11:40:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8052/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,221.26 |
| Avg Latency | 34.09ms |
| Max Latency | 719.09ms |
| Total Requests | 84,466 |
| Transfer/sec | 45.11MB |
| Port | 8052 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 34.09ms | 48.59ms | 719.09ms | 97.70% |
| Req/Sec | 2.12k | 367.46 | 2.44k | 96.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 63.89MiB |
| Memory Limit | 1GiB |
| Memory % | 6.24% |
| CPU % | 9.03% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8052/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    34.09ms   48.59ms 719.09ms   97.70%
    Req/Sec     2.12k   367.46     2.44k    96.50%
  84466 requests in 20.01s, 0.88GB read
Requests/sec:   4221.26
Transfer/sec:     45.11MB
```
