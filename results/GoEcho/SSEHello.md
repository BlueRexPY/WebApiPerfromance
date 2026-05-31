# Go Echo — SSE Hello Benchmark

**Tested**: 2026-05-31 18:33:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8096/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 27,351.46 |
| Avg Latency | 12.53ms |
| Max Latency | 95.98ms |
| Total Requests | 548,938 |
| Transfer/sec | 6.13MB |
| Port | 8096 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 12.53ms | 19.97ms | 95.98ms | 85.43% |
| Req/Sec | 13.78k | 2.13k | 19.45k | 74.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 17.4MiB |
| Memory Limit | 1GiB |
| Memory % | 1.70% |
| CPU % | 0.00% |
| PIDs | 41 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8096/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.53ms   19.97ms  95.98ms   85.43%
    Req/Sec    13.78k     2.13k   19.45k    74.00%
  548938 requests in 20.07s, 123.02MB read
Requests/sec:  27351.46
Transfer/sec:      6.13MB
```
