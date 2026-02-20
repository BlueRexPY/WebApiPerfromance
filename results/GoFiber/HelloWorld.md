# Go Fiber — Hello World Benchmark

**Tested**: 2026-02-20 03:24:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 35,962.46 |
| Avg Latency | 18.89ms |
| Max Latency | 155.80ms |
| Total Requests | 721,358 |
| Transfer/sec | 5.14MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.89ms | 25.36ms | 155.80ms | 79.26% |
| Req/Sec | 18.08k | 5.95k | 40.99k | 77.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 21.54MiB |
| Memory Limit | 1GiB |
| Memory % | 2.10% |
| CPU % | 0.05% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.89ms   25.36ms 155.80ms   79.26%
    Req/Sec    18.08k     5.95k   40.99k    77.50%
  721358 requests in 20.06s, 103.19MB read
Requests/sec:  35962.46
Transfer/sec:      5.14MB
```
