# Go Chi — Orders Benchmark

**Tested**: 2026-02-20 04:01:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8023/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,929.02 |
| Avg Latency | 36.65ms |
| Max Latency | 653.67ms |
| Total Requests | 98,804 |
| Transfer/sec | 54.04MB |
| Port | 8023 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 36.65ms | 48.76ms | 653.67ms | 85.77% |
| Req/Sec | 2.48k | 0.86k | 5.81k | 74.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 62.18MiB |
| Memory Limit | 1GiB |
| Memory % | 6.07% |
| CPU % | 0.00% |
| PIDs | 50 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8023/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.65ms   48.76ms 653.67ms   85.77%
    Req/Sec     2.48k     0.86k    5.81k    74.25%
  98804 requests in 20.05s, 1.06GB read
Requests/sec:   4929.02
Transfer/sec:     54.04MB
```
