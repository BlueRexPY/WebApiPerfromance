# .NET API — Hello World Benchmark

**Tested**: 2026-02-20 03:20:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 68,495.90 |
| Avg Latency | 5.84ms |
| Max Latency | 80.25ms |
| Total Requests | 1,370,303 |
| Transfer/sec | 12.15MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 5.84ms | 12.80ms | 80.25ms | 90.82% |
| Req/Sec | 34.43k | 18.08k | 104.07k | 71.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 32.61MiB |
| Memory Limit | 1GiB |
| Memory % | 3.18% |
| CPU % | 2.60% |
| PIDs | 23 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.84ms   12.80ms  80.25ms   90.82%
    Req/Sec    34.43k    18.08k  104.07k    71.50%
  1370303 requests in 20.01s, 243.07MB read
Requests/sec:  68495.90
Transfer/sec:     12.15MB
```
