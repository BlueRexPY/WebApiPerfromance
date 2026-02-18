# C Microhttpd — Hello World Benchmark

**Tested**: 2026-02-18 03:38:05 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 86,707.59 |
| Avg Latency | 10.99ms |
| Max Latency | 67.06ms |
| Total Requests | 1,735,387 |
| Transfer/sec | 11.16MB |
| Port | 8018 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 10.99ms | 17.13ms | 67.06ms | 81.02% |
| Req/Sec | 43.58k | 12.82k | 72.75k | 63.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 3.035MiB |
| Memory Limit | 1GiB |
| Memory % | 0.30% |
| CPU % | 0.00% |
| PIDs | 9 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    10.99ms   17.13ms  67.06ms   81.02%
    Req/Sec    43.58k    12.82k   72.75k    63.50%
  1735387 requests in 20.01s, 223.42MB read
Requests/sec:  86707.59
Transfer/sec:     11.16MB
```
