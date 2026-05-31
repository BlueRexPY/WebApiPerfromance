# Go Echo — SSE Hello Benchmark

**Tested**: 2026-05-31 18:24:33 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8096/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 27,246.21 |
| Avg Latency | 15.77ms |
| Max Latency | 84.85ms |
| Total Requests | 545,526 |
| Transfer/sec | 6.11MB |
| Port | 8096 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 15.77ms | 23.01ms | 84.85ms | 81.50% |
| Req/Sec | 13.72k | 2.38k | 23.84k | 72.61% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 17.44MiB |
| Memory Limit | 1GiB |
| Memory % | 1.70% |
| CPU % | 0.00% |
| PIDs | 41 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8096/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    15.77ms   23.01ms  84.85ms   81.50%
    Req/Sec    13.72k     2.38k   23.84k    72.61%
  545526 requests in 20.02s, 122.26MB read
Requests/sec:  27246.21
Transfer/sec:      6.11MB
```
