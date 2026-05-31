# Go Chi — SSE Orders Benchmark

**Tested**: 2026-05-31 18:26:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8023/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,135.58 |
| Avg Latency | 32.88ms |
| Max Latency | 191.78ms |
| Total Requests | 103,033 |
| Transfer/sec | 60.25MB |
| Port | 8023 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 32.88ms | 33.99ms | 191.78ms | 77.38% |
| Req/Sec | 2.58k | 363.10 | 4.98k | 73.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 65.94MiB |
| Memory Limit | 1GiB |
| Memory % | 6.44% |
| CPU % | 0.07% |
| PIDs | 49 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8023/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.88ms   33.99ms 191.78ms   77.38%
    Req/Sec     2.58k   363.10     4.98k    73.25%
  103033 requests in 20.06s, 1.18GB read
Requests/sec:   5135.58
Transfer/sec:     60.25MB
```
