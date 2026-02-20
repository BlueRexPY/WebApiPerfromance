# F# AOT — Hello World Benchmark

**Tested**: 2026-02-20 03:11:41 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8020/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 70,274.78 |
| Avg Latency | 5.07ms |
| Max Latency | 74.13ms |
| Total Requests | 1,406,681 |
| Transfer/sec | 12.47MB |
| Port | 8020 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 5.07ms | 11.47ms | 74.13ms | 92.06% |
| Req/Sec | 35.35k | 17.21k | 103.51k | 75.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.45MiB |
| Memory Limit | 1GiB |
| Memory % | 1.51% |
| CPU % | 0.03% |
| PIDs | 19 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8020/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.07ms   11.47ms  74.13ms   92.06%
    Req/Sec    35.35k    17.21k  103.51k    75.50%
  1406681 requests in 20.02s, 249.52MB read
Requests/sec:  70274.78
Transfer/sec:     12.47MB
```
