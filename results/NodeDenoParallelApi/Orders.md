# JS Deno Parallel — Orders Benchmark

**Tested**: 2026-02-21 06:34:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8048/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,307.68 |
| Avg Latency | 53.61ms |
| Max Latency | 464.77ms |
| Total Requests | 46,196 |
| Transfer/sec | 24.68MB |
| Port | 8048 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 53.61ms | 28.71ms | 464.77ms | 94.24% |
| Req/Sec | 1.16k | 180.50 | 1.59k | 84.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 213.1MiB |
| Memory Limit | 1GiB |
| Memory % | 20.81% |
| CPU % | 0.00% |
| PIDs | 20 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8048/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    53.61ms   28.71ms 464.77ms   94.24%
    Req/Sec     1.16k   180.50     1.59k    84.50%
  46196 requests in 20.02s, 494.00MB read
Requests/sec:   2307.68
Transfer/sec:     24.68MB
```
