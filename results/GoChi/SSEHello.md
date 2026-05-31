# Go Chi — SSE Hello Benchmark

**Tested**: 2026-05-31 18:30:19 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8023/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 37,095.55 |
| Avg Latency | 17.36ms |
| Max Latency | 87.12ms |
| Total Requests | 743,748 |
| Transfer/sec | 8.31MB |
| Port | 8023 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 17.36ms | 23.90ms | 87.12ms | 79.88% |
| Req/Sec | 18.67k | 1.93k | 27.07k | 73.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 54.39MiB |
| Memory Limit | 1GiB |
| Memory % | 5.31% |
| CPU % | 0.00% |
| PIDs | 52 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8023/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.36ms   23.90ms  87.12ms   79.88%
    Req/Sec    18.67k     1.93k   27.07k    73.25%
  743748 requests in 20.05s, 166.69MB read
Requests/sec:  37095.55
Transfer/sec:      8.31MB
```
