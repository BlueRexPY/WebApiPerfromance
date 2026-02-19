# Bun API — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:02:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 607.25 |
| Avg Latency | 224.14ms |
| Max Latency | 1.60s |
| Total Requests | 12,151 |
| Transfer/sec | 6.45MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 224.14ms | 195.29ms | 1.60s | 78.49% |
| Req/Sec | 304.95 | 227.25 | 1.53k | 89.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 93.6MiB |
| Memory Limit | 1GiB |
| Memory % | 9.14% |
| CPU % | 4.06% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   224.14ms  195.29ms   1.60s    78.49%
    Req/Sec   304.95    227.25     1.53k    89.25%
  12151 requests in 20.01s, 129.16MB read
Requests/sec:    607.25
Transfer/sec:      6.45MB
```
