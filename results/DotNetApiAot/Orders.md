# .NET AOT — Orders Benchmark

**Tested**: 2026-02-20 03:18:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,970.70 |
| Avg Latency | 19.63ms |
| Max Latency | 96.22ms |
| Total Requests | 179,745 |
| Transfer/sec | 95.30MB |
| Port | 8013 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 19.63ms | 20.63ms | 96.22ms | 80.72% |
| Req/Sec | 4.51k | 1.64k | 9.00k | 74.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.16MiB |
| Memory Limit | 1GiB |
| Memory % | 3.43% |
| CPU % | 0.02% |
| PIDs | 21 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.63ms   20.63ms  96.22ms   80.72%
    Req/Sec     4.51k     1.64k    9.00k    74.00%
  179745 requests in 20.04s, 1.86GB read
Requests/sec:   8970.70
Transfer/sec:     95.30MB
```
