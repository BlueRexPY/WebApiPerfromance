# Bun API — Orders Benchmark

**Tested**: 2026-02-18 03:21:00 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 12,079.60 |
| Avg Latency | 9.93ms |
| Max Latency | 29.31ms |
| Total Requests | 241,671 |
| Transfer/sec | 128.91MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 9.93ms | 1.04ms | 29.31ms | 89.88% |
| Req/Sec | 6.07k | 338.52 | 6.79k | 70.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 19.44MiB |
| Memory Limit | 1GiB |
| Memory % | 1.90% |
| CPU % | 1.40% |
| PIDs | 15 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     9.93ms    1.04ms  29.31ms   89.88%
    Req/Sec     6.07k   338.52     6.79k    70.75%
  241671 requests in 20.01s, 2.52GB read
Requests/sec:  12079.60
Transfer/sec:    128.91MB
```
