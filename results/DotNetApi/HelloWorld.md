# .NET API — Hello World Benchmark

**Tested**: 2026-02-18 04:20:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 96,601.18 |
| Avg Latency | 6.65ms |
| Max Latency | 82.24ms |
| Total Requests | 1,933,370 |
| Transfer/sec | 17.14MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 6.65ms | 14.14ms | 82.24ms | 88.21% |
| Req/Sec | 48.57k | 23.40k | 88.12k | 56.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 32.03MiB |
| Memory Limit | 1GiB |
| Memory % | 3.13% |
| CPU % | 2.11% |
| PIDs | 24 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.65ms   14.14ms  82.24ms   88.21%
    Req/Sec    48.57k    23.40k   88.12k    56.50%
  1933370 requests in 20.01s, 342.95MB read
Requests/sec:  96601.18
Transfer/sec:     17.14MB
```
