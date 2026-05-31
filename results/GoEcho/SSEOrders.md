# Go Echo — SSE Orders Benchmark

**Tested**: 2026-05-31 18:24:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8096/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,641.64 |
| Avg Latency | 30.76ms |
| Max Latency | 361.10ms |
| Total Requests | 93,127 |
| Transfer/sec | 54.46MB |
| Port | 8096 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 30.76ms | 30.69ms | 361.10ms | 80.76% |
| Req/Sec | 2.34k | 445.38 | 4.51k | 72.66% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 65.21MiB |
| Memory Limit | 1GiB |
| Memory % | 6.37% |
| CPU % | 0.00% |
| PIDs | 53 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8096/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    30.76ms   30.69ms 361.10ms   80.76%
    Req/Sec     2.34k   445.38     4.51k    72.66%
  93127 requests in 20.06s, 1.07GB read
Requests/sec:   4641.64
Transfer/sec:     54.46MB
```
