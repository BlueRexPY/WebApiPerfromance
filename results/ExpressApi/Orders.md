# JS Express — Orders Benchmark

**Tested**: 2026-02-21 09:02:15 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 7,062.54 |
| Avg Latency | 21.13ms |
| Max Latency | 973.39ms |
| Total Requests | 141,295 |
| Transfer/sec | 75.79MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 21.13ms | 45.37ms | 973.39ms | 98.73% |
| Req/Sec | 3.55k | 228.02 | 4.40k | 86.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 104MiB |
| Memory Limit | 1GiB |
| Memory % | 10.15% |
| CPU % | 0.02% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.13ms   45.37ms 973.39ms   98.73%
    Req/Sec     3.55k   228.02     4.40k    86.00%
  141295 requests in 20.01s, 1.48GB read
Requests/sec:   7062.54
Transfer/sec:     75.79MB
```
