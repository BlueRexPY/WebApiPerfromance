# Python FastAPI — Hello World Benchmark

**Tested**: 2026-02-18 03:23:01 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 23,455.92 |
| Avg Latency | 12.17ms |
| Max Latency | 75.56ms |
| Total Requests | 469,673 |
| Transfer/sec | 3.40MB |
| Port | 8004 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 12.17ms | 15.87ms | 75.56ms | 81.09% |
| Req/Sec | 11.79k | 2.94k | 17.49k | 62.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 190.4MiB |
| Memory Limit | 1GiB |
| Memory % | 18.59% |
| CPU % | 0.62% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.17ms   15.87ms  75.56ms   81.09%
    Req/Sec    11.79k     2.94k   17.49k    62.25%
  469673 requests in 20.02s, 68.08MB read
Requests/sec:  23455.92
Transfer/sec:      3.40MB
```
