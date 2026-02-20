# Swift Vapor — Orders Benchmark

**Tested**: 2026-02-20 11:14:01 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 579.65 |
| Avg Latency | 206.29ms |
| Max Latency | 698.48ms |
| Total Requests | 11,633 |
| Transfer/sec | 5.99MB |
| Port | 8012 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 206.29ms | 101.02ms | 698.48ms | 68.24% |
| Req/Sec | 293.09 | 145.66 | 830.00 | 74.94% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 60.86MiB |
| Memory Limit | 1GiB |
| Memory % | 5.94% |
| CPU % | 0.04% |
| PIDs | 38 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   206.29ms  101.02ms 698.48ms   68.24%
    Req/Sec   293.09    145.66   830.00     74.94%
  11633 requests in 20.07s, 120.14MB read
Requests/sec:    579.65
Transfer/sec:      5.99MB
```
