# F# API — Orders Benchmark

**Tested**: 2026-02-20 03:09:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8019/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,281.61 |
| Avg Latency | 22.79ms |
| Max Latency | 103.14ms |
| Total Requests | 165,899 |
| Transfer/sec | 87.98MB |
| Port | 8019 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 22.79ms | 24.60ms | 103.14ms | 79.80% |
| Req/Sec | 4.16k | 1.71k | 10.47k | 79.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 59.96MiB |
| Memory Limit | 1GiB |
| Memory % | 5.86% |
| CPU % | 0.03% |
| PIDs | 29 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8019/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.79ms   24.60ms 103.14ms   79.80%
    Req/Sec     4.16k     1.71k   10.47k    79.50%
  165899 requests in 20.03s, 1.72GB read
Requests/sec:   8281.61
Transfer/sec:     87.98MB
```
