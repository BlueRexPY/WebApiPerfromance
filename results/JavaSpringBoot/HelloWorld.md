# Java Spring Boot — Hello World Benchmark

**Tested**: 2026-02-19 07:38:37 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 26,025.95 |
| Avg Latency | 13.63ms |
| Max Latency | 213.89ms |
| Total Requests | 520,747 |
| Transfer/sec | 2.43MB |
| Port | 8009 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 13.63ms | 18.73ms | 213.89ms | 81.38% |
| Req/Sec | 13.08k | 6.70k | 48.13k | 76.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 158.9MiB |
| Memory Limit | 1GiB |
| Memory % | 15.52% |
| CPU % | 0.11% |
| PIDs | 27 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.63ms   18.73ms 213.89ms   81.38%
    Req/Sec    13.08k     6.70k   48.13k    76.25%
  520747 requests in 20.01s, 48.67MB read
Requests/sec:  26025.95
Transfer/sec:      2.43MB
```
