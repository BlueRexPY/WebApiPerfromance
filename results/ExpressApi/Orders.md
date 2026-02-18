# Express API — Orders Benchmark

**Tested**: 2026-02-18 03:34:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,821.47 |
| Avg Latency | 46.60ms |
| Max Latency | 1.06s |
| Total Requests | 56,450 |
| Transfer/sec | 30.28MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 46.60ms | 50.07ms | 1.06s | 98.53% |
| Req/Sec | 1.42k | 200.23 | 1.72k | 76.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.04MiB |
| Memory Limit | 1GiB |
| Memory % | 4.59% |
| CPU % | 0.01% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    46.60ms   50.07ms   1.06s    98.53%
    Req/Sec     1.42k   200.23     1.72k    76.25%
  56450 requests in 20.01s, 605.75MB read
Requests/sec:   2821.47
Transfer/sec:     30.28MB
```
