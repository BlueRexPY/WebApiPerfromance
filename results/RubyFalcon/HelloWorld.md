# Ruby Falcon — Hello World Benchmark

**Tested**: 2026-02-21 05:18:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8040/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 33,294.17 |
| Avg Latency | 11.29ms |
| Max Latency | 63.36ms |
| Total Requests | 666,781 |
| Transfer/sec | 3.84MB |
| Port | 8040 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 11.29ms | 15.79ms | 63.36ms | 81.21% |
| Req/Sec | 16.73k | 3.27k | 24.15k | 74.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 89.22MiB |
| Memory Limit | 1GiB |
| Memory % | 8.71% |
| CPU % | 0.02% |
| PIDs | 10 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8040/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.29ms   15.79ms  63.36ms   81.21%
    Req/Sec    16.73k     3.27k   24.15k    74.75%
  666781 requests in 20.03s, 76.94MB read
Requests/sec:  33294.17
Transfer/sec:      3.84MB
```
