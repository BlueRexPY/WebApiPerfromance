# Go Gin — SSE Hello Benchmark

**Tested**: 2026-05-31 18:38:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8066/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 35,426.96 |
| Avg Latency | 18.40ms |
| Max Latency | 84.58ms |
| Total Requests | 709,686 |
| Transfer/sec | 7.94MB |
| Port | 8066 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.40ms | 25.06ms | 84.58ms | 79.52% |
| Req/Sec | 17.82k | 1.71k | 22.77k | 74.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 23.08MiB |
| Memory Limit | 1GiB |
| Memory % | 2.25% |
| CPU % | 0.00% |
| PIDs | 40 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8066/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.40ms   25.06ms  84.58ms   79.52%
    Req/Sec    17.82k     1.71k   22.77k    74.25%
  709686 requests in 20.03s, 159.05MB read
Requests/sec:  35426.96
Transfer/sec:      7.94MB
```
