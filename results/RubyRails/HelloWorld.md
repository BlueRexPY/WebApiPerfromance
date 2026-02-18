# Ruby Rails — Hello World Benchmark

**Tested**: 2026-02-18 03:34:54 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,842.95 |
| Avg Latency | 35.45ms |
| Max Latency | 936.16ms |
| Total Requests | 76,964 |
| Transfer/sec | 1.05MB |
| Port | 8015 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 35.45ms | 44.47ms | 936.16ms | 97.12% |
| Req/Sec | 1.93k | 305.83 | 2.38k | 74.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 274.7MiB |
| Memory Limit | 1GiB |
| Memory % | 26.83% |
| CPU % | 0.04% |
| PIDs | 399 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8015/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    35.45ms   44.47ms 936.16ms   97.12%
    Req/Sec     1.93k   305.83     2.38k    74.00%
  76964 requests in 20.03s, 21.07MB read
Requests/sec:   3842.95
Transfer/sec:      1.05MB
```
