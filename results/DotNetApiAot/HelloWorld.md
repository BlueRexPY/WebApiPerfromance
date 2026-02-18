# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-18 03:32:37 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 109,601.23 |
| Avg Latency | 4.93ms |
| Max Latency | 71.35ms |
| Total Requests | 2,192,307 |
| Transfer/sec | 19.44MB |
| Port | 8013 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.93ms | 11.77ms | 71.35ms | 90.76% |
| Req/Sec | 55.09k | 18.96k | 88.88k | 68.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.47MiB |
| Memory Limit | 1GiB |
| Memory % | 1.51% |
| CPU % | 0.02% |
| PIDs | 19 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.93ms   11.77ms  71.35ms   90.76%
    Req/Sec    55.09k    18.96k   88.88k    68.00%
  2192307 requests in 20.00s, 388.88MB read
Requests/sec: 109601.23
Transfer/sec:     19.44MB
```
