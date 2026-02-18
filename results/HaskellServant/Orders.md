# Haskell Servant — Orders Benchmark

**Tested**: 2026-02-18 03:25:30 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 952.22 |
| Avg Latency | 125.63ms |
| Max Latency | 247.54ms |
| Total Requests | 19,053 |
| Transfer/sec | 10.38MB |
| Port | 8006 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 125.63ms | 49.92ms | 247.54ms | 61.89% |
| Req/Sec | 478.29 | 50.22 | 626.00 | 67.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 240.6MiB |
| Memory Limit | 1GiB |
| Memory % | 23.50% |
| CPU % | 0.10% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   125.63ms   49.92ms 247.54ms   61.89%
    Req/Sec   478.29     50.22   626.00     67.75%
  19053 requests in 20.01s, 207.69MB read
Requests/sec:    952.22
Transfer/sec:     10.38MB
```
