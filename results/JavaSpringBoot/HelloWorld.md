# Java Spring Boot — Hello World Benchmark

**Tested**: 2026-02-18 03:28:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 30,736.76 |
| Avg Latency | 12.80ms |
| Max Latency | 142.28ms |
| Total Requests | 615,208 |
| Transfer/sec | 2.87MB |
| Port | 8009 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 12.80ms | 18.04ms | 142.28ms | 81.55% |
| Req/Sec | 15.45k | 9.56k | 42.03k | 63.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 139.3MiB |
| Memory Limit | 1GiB |
| Memory % | 13.61% |
| CPU % | 0.07% |
| PIDs | 21 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.80ms   18.04ms 142.28ms   81.55%
    Req/Sec    15.45k     9.56k   42.03k    63.50%
  615208 requests in 20.02s, 57.50MB read
Requests/sec:  30736.76
Transfer/sec:      2.87MB
```
