# .NET API — Orders Benchmark

**Tested**: 2026-02-18 04:20:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 12,014.96 |
| Avg Latency | 17.01ms |
| Max Latency | 93.08ms |
| Total Requests | 240,632 |
| Transfer/sec | 127.65MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 17.01ms | 19.42ms | 93.08ms | 81.07% |
| Req/Sec | 6.04k | 1.43k | 8.92k | 69.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 70.85MiB |
| Memory Limit | 1GiB |
| Memory % | 6.92% |
| CPU % | 0.02% |
| PIDs | 24 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.01ms   19.42ms  93.08ms   81.07%
    Req/Sec     6.04k     1.43k    8.92k    69.00%
  240632 requests in 20.03s, 2.50GB read
Requests/sec:  12014.96
Transfer/sec:    127.65MB
```
