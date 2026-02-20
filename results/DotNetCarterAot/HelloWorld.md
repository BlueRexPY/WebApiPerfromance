# C# Carter AOT — Hello World Benchmark

**Tested**: 2026-02-20 05:59:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8036/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 73,824.65 |
| Avg Latency | 4.72ms |
| Max Latency | 74.36ms |
| Total Requests | 1,476,848 |
| Transfer/sec | 13.10MB |
| Port | 8036 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.72ms | 11.05ms | 74.36ms | 92.57% |
| Req/Sec | 37.11k | 18.46k | 101.57k | 76.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 14.98MiB |
| Memory Limit | 1GiB |
| Memory % | 1.46% |
| CPU % | 0.04% |
| PIDs | 19 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8036/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.72ms   11.05ms  74.36ms   92.57%
    Req/Sec    37.11k    18.46k  101.57k    76.00%
  1476848 requests in 20.00s, 261.97MB read
Requests/sec:  73824.65
Transfer/sec:     13.10MB
```
