# Java Spring Boot — Hello World Benchmark

**Tested**: 2026-02-18 03:17:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 21,019.49 |
| Avg Latency | 14.91ms |
| Max Latency | 265.46ms |
| Total Requests | 420,522 |
| Transfer/sec | 1.96MB |
| Port | 8009 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 14.91ms | 19.70ms | 265.46ms | 81.10% |
| Req/Sec | 10.56k | 4.90k | 34.96k | 66.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 142.3MiB |
| Memory Limit | 1GiB |
| Memory % | 13.90% |
| CPU % | 0.10% |
| PIDs | 21 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    14.91ms   19.70ms 265.46ms   81.10%
    Req/Sec    10.56k     4.90k   34.96k    66.75%
  420522 requests in 20.01s, 39.30MB read
Requests/sec:  21019.49
Transfer/sec:      1.96MB
```
