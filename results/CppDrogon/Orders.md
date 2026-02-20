# C++ Drogon — Orders Benchmark

**Tested**: 2026-02-20 11:21:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,418.49 |
| Avg Latency | 88.88ms |
| Max Latency | 403.18ms |
| Total Requests | 28,442 |
| Transfer/sec | 15.44MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 88.88ms | 61.83ms | 403.18ms | 61.46% |
| Req/Sec | 712.74 | 186.13 | 1.70k | 77.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 43.52MiB |
| Memory Limit | 1GiB |
| Memory % | 4.25% |
| CPU % | 7.12% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    88.88ms   61.83ms 403.18ms   61.46%
    Req/Sec   712.74    186.13     1.70k    77.00%
  28442 requests in 20.05s, 309.60MB read
Requests/sec:   1418.49
Transfer/sec:     15.44MB
```
