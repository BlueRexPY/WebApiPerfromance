# Java Spring Boot — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:39:29 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 816.17 |
| Avg Latency | 161.31ms |
| Max Latency | 953.90ms |
| Total Requests | 16,366 |
| Transfer/sec | 8.26MB |
| Port | 8009 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 161.31ms | 122.30ms | 953.90ms | 74.98% |
| Req/Sec | 411.36 | 246.87 | 1.37k | 63.87% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 297.7MiB |
| Memory Limit | 1GiB |
| Memory % | 29.07% |
| CPU % | 0.12% |
| PIDs | 34 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   161.31ms  122.30ms 953.90ms   74.98%
    Req/Sec   411.36    246.87     1.37k    63.87%
  16366 requests in 20.05s, 165.59MB read
Requests/sec:    816.17
Transfer/sec:      8.26MB
```
