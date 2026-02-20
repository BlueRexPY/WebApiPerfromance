# C Microhttpd — Orders Benchmark

**Tested**: 2026-02-20 03:34:47 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,580.41 |
| Avg Latency | 25.67ms |
| Max Latency | 94.12ms |
| Total Requests | 111,624 |
| Transfer/sec | 60.55MB |
| Port | 8018 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 25.67ms | 22.42ms | 94.12ms | 75.52% |
| Req/Sec | 2.80k | 1.08k | 7.59k | 91.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 12.16MiB |
| Memory Limit | 1GiB |
| Memory % | 1.19% |
| CPU % | 0.00% |
| PIDs | 9 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.67ms   22.42ms  94.12ms   75.52%
    Req/Sec     2.80k     1.08k    7.59k    91.75%
  111624 requests in 20.00s, 1.18GB read
Requests/sec:   5580.41
Transfer/sec:     60.55MB
```
