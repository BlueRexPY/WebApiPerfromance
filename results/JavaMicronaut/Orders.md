# Java Micronaut — Orders Benchmark

**Tested**: 2026-02-20 05:32:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8026/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,096.13 |
| Avg Latency | 147.81ms |
| Max Latency | 1.90s |
| Total Requests | 21,982 |
| Transfer/sec | 11.69MB |
| Port | 8026 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 147.81ms | 172.52ms | 1.90s | 89.56% |
| Req/Sec | 550.93 | 393.81 | 2.05k | 67.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 172.9MiB |
| Memory Limit | 1GiB |
| Memory % | 16.88% |
| CPU % | 1.86% |
| PIDs | 147 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8026/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   147.81ms  172.52ms   1.90s    89.56%
    Req/Sec   550.93    393.81     2.05k    67.50%
  21982 requests in 20.05s, 234.37MB read
Requests/sec:   1096.13
Transfer/sec:     11.69MB
```
