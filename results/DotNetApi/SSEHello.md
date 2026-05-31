# C# .NET API — SSE Hello Benchmark

**Tested**: 2026-05-31 17:24:33 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 87,282.52 |
| Avg Latency | 6.67ms |
| Max Latency | 74.26ms |
| Total Requests | 1,747,041 |
| Transfer/sec | 18.98MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 6.67ms | 13.02ms | 74.26ms | 86.81% |
| Req/Sec | 43.86k | 9.84k | 63.91k | 68.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 34.82MiB |
| Memory Limit | 1GiB |
| Memory % | 3.40% |
| CPU % | 0.92% |
| PIDs | 23 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.67ms   13.02ms  74.26ms   86.81%
    Req/Sec    43.86k     9.84k   63.91k    68.00%
  1747041 requests in 20.02s, 379.87MB read
Requests/sec:  87282.52
Transfer/sec:     18.98MB
```
