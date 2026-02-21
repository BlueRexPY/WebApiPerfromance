# JS Bun NestJS Express Cluster — Orders Benchmark

**Tested**: 2026-02-21 11:48:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8059/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,637.79 |
| Avg Latency | 22.54ms |
| Max Latency | 350.10ms |
| Total Requests | 112,797 |
| Transfer/sec | 60.61MB |
| Port | 8059 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 22.54ms | 16.98ms | 350.10ms | 93.54% |
| Req/Sec | 2.83k | 447.93 | 3.56k | 86.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 173.1MiB |
| Memory Limit | 1GiB |
| Memory % | 16.91% |
| CPU % | 8.93% |
| PIDs | 82 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8059/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.54ms   16.98ms 350.10ms   93.54%
    Req/Sec     2.83k   447.93     3.56k    86.25%
  112797 requests in 20.01s, 1.18GB read
Requests/sec:   5637.79
Transfer/sec:     60.61MB
```
