# Python Litestar — Hello World Benchmark

**Tested**: 2026-02-18 03:18:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 15,136.85 |
| Avg Latency | 19.02ms |
| Max Latency | 78.58ms |
| Total Requests | 302,749 |
| Transfer/sec | 2.19MB |
| Port | 8000 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 19.02ms | 23.18ms | 78.58ms | 79.76% |
| Req/Sec | 7.61k | 2.97k | 21.56k | 83.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 145.7MiB |
| Memory Limit | 1GiB |
| Memory % | 14.23% |
| CPU % | 0.00% |
| PIDs | 37 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.02ms   23.18ms  78.58ms   79.76%
    Req/Sec     7.61k     2.97k   21.56k    83.50%
  302749 requests in 20.00s, 43.89MB read
Requests/sec:  15136.85
Transfer/sec:      2.19MB
```
