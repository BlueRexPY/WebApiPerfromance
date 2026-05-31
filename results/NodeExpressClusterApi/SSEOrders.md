# JS Node Express Cluster — SSE Orders Benchmark

**Tested**: 2026-05-31 17:35:02 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8041/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,393.14 |
| Avg Latency | 52.12ms |
| Max Latency | 777.49ms |
| Total Requests | 47,878 |
| Transfer/sec | 28.75MB |
| Port | 8041 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 52.12ms | 30.57ms | 777.49ms | 95.01% |
| Req/Sec | 1.20k | 223.71 | 1.53k | 80.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 111.1MiB |
| Memory Limit | 1GiB |
| Memory % | 10.85% |
| CPU % | 0.04% |
| PIDs | 29 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8041/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    52.12ms   30.57ms 777.49ms   95.01%
    Req/Sec     1.20k   223.71     1.53k    80.75%
  47878 requests in 20.01s, 575.09MB read
Requests/sec:   2393.14
Transfer/sec:     28.75MB
```
