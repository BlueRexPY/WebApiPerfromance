# Fastify API — Orders Benchmark

**Tested**: 2026-02-18 03:22:13 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,253.89 |
| Avg Latency | 39.59ms |
| Max Latency | 848.97ms |
| Total Requests | 65,113 |
| Transfer/sec | 34.92MB |
| Port | 8003 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 39.59ms | 37.53ms | 848.97ms | 98.80% |
| Req/Sec | 1.64k | 146.12 | 1.95k | 69.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.86MiB |
| Memory Limit | 1GiB |
| Memory % | 4.67% |
| CPU % | 0.01% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.59ms   37.53ms 848.97ms   98.80%
    Req/Sec     1.64k   146.12     1.95k    69.50%
  65113 requests in 20.01s, 698.77MB read
Requests/sec:   3253.89
Transfer/sec:     34.92MB
```
