# .NET API — Hello World Benchmark

**Tested**: 2026-02-19 06:46:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 86,498.38 |
| Avg Latency | 5.63ms |
| Max Latency | 81.89ms |
| Total Requests | 1,731,992 |
| Transfer/sec | 15.34MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 5.63ms | 12.59ms | 81.89ms | 90.24% |
| Req/Sec | 43.52k | 20.25k | 96.15k | 66.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.76MiB |
| Memory Limit | 1GiB |
| Memory % | 3.49% |
| CPU % | 3.01% |
| PIDs | 28 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.63ms   12.59ms  81.89ms   90.24%
    Req/Sec    43.52k    20.25k   96.15k    66.00%
  1731992 requests in 20.02s, 307.23MB read
Requests/sec:  86498.38
Transfer/sec:     15.34MB
```
