# Java Micronaut — Orders Benchmark

**Tested**: 2026-02-21 06:55:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8026/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 978.53 |
| Avg Latency | 136.32ms |
| Max Latency | 942.33ms |
| Total Requests | 19,607 |
| Transfer/sec | 10.43MB |
| Port | 8026 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 136.32ms | 113.76ms | 942.33ms | 63.05% |
| Req/Sec | 491.88 | 331.54 | 1.91k | 80.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 206.2MiB |
| Memory Limit | 1GiB |
| Memory % | 20.13% |
| CPU % | 10.75% |
| PIDs | 147 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8026/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   136.32ms  113.76ms 942.33ms   63.05%
    Req/Sec   491.88    331.54     1.91k    80.00%
  19607 requests in 20.04s, 209.05MB read
Requests/sec:    978.53
Transfer/sec:     10.43MB
```
