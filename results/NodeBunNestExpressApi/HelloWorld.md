# JS Bun NestJS Express — Hello World Benchmark

**Tested**: 2026-02-21 11:40:54 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8053/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 76,837.89 |
| Avg Latency | 1.74ms |
| Max Latency | 78.85ms |
| Total Requests | 1,536,990 |
| Transfer/sec | 15.75MB |
| Port | 8053 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.74ms | 2.56ms | 78.85ms | 98.98% |
| Req/Sec | 38.62k | 4.23k | 42.51k | 92.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 71.61MiB |
| Memory Limit | 1GiB |
| Memory % | 6.99% |
| CPU % | 3.48% |
| PIDs | 10 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8053/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.74ms    2.56ms  78.85ms   98.98%
    Req/Sec    38.62k     4.23k   42.51k    92.75%
  1536990 requests in 20.00s, 315.14MB read
Requests/sec:  76837.89
Transfer/sec:     15.75MB
```
