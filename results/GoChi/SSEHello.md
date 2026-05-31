# Go Chi — SSE Hello Benchmark

**Tested**: 2026-05-31 18:26:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8023/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 40,263.05 |
| Avg Latency | 18.09ms |
| Max Latency | 88.09ms |
| Total Requests | 807,655 |
| Transfer/sec | 9.02MB |
| Port | 8023 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.09ms | 24.80ms | 88.09ms | 79.64% |
| Req/Sec | 20.25k | 2.23k | 38.04k | 77.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 57.26MiB |
| Memory Limit | 1GiB |
| Memory % | 5.59% |
| CPU % | 0.00% |
| PIDs | 48 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8023/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.09ms   24.80ms  88.09ms   79.64%
    Req/Sec    20.25k     2.23k   38.04k    77.75%
  807655 requests in 20.06s, 181.01MB read
Requests/sec:  40263.05
Transfer/sec:      9.02MB
```
