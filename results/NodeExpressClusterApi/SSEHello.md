# JS Node Express Cluster — SSE Hello Benchmark

**Tested**: 2026-05-31 17:34:36 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8041/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 25,762.42 |
| Avg Latency | 6.57ms |
| Max Latency | 357.08ms |
| Total Requests | 515,701 |
| Transfer/sec | 6.34MB |
| Port | 8041 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 6.57ms | 12.60ms | 357.08ms | 94.11% |
| Req/Sec | 12.95k | 3.06k | 19.51k | 72.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 103.8MiB |
| Memory Limit | 1GiB |
| Memory % | 10.13% |
| CPU % | 0.03% |
| PIDs | 21 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8041/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.57ms   12.60ms 357.08ms   94.11%
    Req/Sec    12.95k     3.06k   19.51k    72.50%
  515701 requests in 20.02s, 126.89MB read
Requests/sec:  25762.42
Transfer/sec:      6.34MB
```
