# Bun API — MongoDB Orders Benchmark

**Tested**: 2026-02-19 06:38:11 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,035.29 |
| Avg Latency | 39.61ms |
| Max Latency | 158.83ms |
| Total Requests | 60,730 |
| Transfer/sec | 32.28MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 39.61ms | 10.31ms | 158.83ms | 71.00% |
| Req/Sec | 1.53k | 165.60 | 1.72k | 87.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 116.6MiB |
| Memory Limit | 1GiB |
| Memory % | 11.39% |
| CPU % | 2.78% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.61ms   10.31ms 158.83ms   71.00%
    Req/Sec     1.53k   165.60     1.72k    87.25%
  60730 requests in 20.01s, 645.83MB read
Requests/sec:   3035.29
Transfer/sec:     32.28MB
```
