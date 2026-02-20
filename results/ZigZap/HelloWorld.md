# Zig zap — Hello World Benchmark

**Tested**: 2026-02-20 05:04:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8024/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 46,060.17 |
| Avg Latency | 14.64ms |
| Max Latency | 78.95ms |
| Total Requests | 922,067 |
| Transfer/sec | 8.79MB |
| Port | 8024 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 14.64ms | 21.19ms | 78.95ms | 81.17% |
| Req/Sec | 23.14k | 12.34k | 86.54k | 83.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 31.94MiB |
| Memory Limit | 1GiB |
| Memory % | 3.12% |
| CPU % | 0.43% |
| PIDs | 33 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8024/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    14.64ms   21.19ms  78.95ms   81.17%
    Req/Sec    23.14k    12.34k   86.54k    83.50%
  922067 requests in 20.02s, 175.87MB read
Requests/sec:  46060.17
Transfer/sec:      8.79MB
```
