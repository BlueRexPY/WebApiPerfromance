# PHP Swoole — Orders Benchmark

**Tested**: 2026-02-20 04:46:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8028/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,006.90 |
| Avg Latency | 120.00ms |
| Max Latency | 499.73ms |
| Total Requests | 20,195 |
| Transfer/sec | 10.97MB |
| Port | 8028 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 120.00ms | 55.84ms | 499.73ms | 69.56% |
| Req/Sec | 505.73 | 138.74 | 0.92k | 68.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 60.59MiB |
| Memory Limit | 1GiB |
| Memory % | 5.92% |
| CPU % | 201.47% |
| PIDs | 32 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8028/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   120.00ms   55.84ms 499.73ms   69.56%
    Req/Sec   505.73    138.74     0.92k    68.25%
  20195 requests in 20.06s, 220.12MB read
Requests/sec:   1006.90
Transfer/sec:     10.97MB
```
