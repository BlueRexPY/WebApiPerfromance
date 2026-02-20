# Python Litestar — Hello World Benchmark

**Tested**: 2026-02-20 11:04:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 13,861.22 |
| Avg Latency | 19.59ms |
| Max Latency | 78.61ms |
| Total Requests | 277,275 |
| Transfer/sec | 2.01MB |
| Port | 8000 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 19.59ms | 23.54ms | 78.61ms | 78.66% |
| Req/Sec | 6.97k | 2.36k | 20.59k | 89.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 184.7MiB |
| Memory Limit | 1GiB |
| Memory % | 18.03% |
| CPU % | 0.00% |
| PIDs | 37 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.59ms   23.54ms  78.61ms   78.66%
    Req/Sec     6.97k     2.36k   20.59k    89.50%
  277275 requests in 20.00s, 40.19MB read
Requests/sec:  13861.22
Transfer/sec:      2.01MB
```
