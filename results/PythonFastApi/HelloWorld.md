# Python FastAPI — Hello World Benchmark

**Tested**: 2026-02-18 04:23:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 26,370.12 |
| Avg Latency | 11.77ms |
| Max Latency | 66.49ms |
| Total Requests | 527,467 |
| Transfer/sec | 3.82MB |
| Port | 8004 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 11.77ms | 15.71ms | 66.49ms | 81.20% |
| Req/Sec | 13.25k | 2.20k | 18.11k | 70.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 192.3MiB |
| Memory Limit | 1GiB |
| Memory % | 18.78% |
| CPU % | 0.57% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.77ms   15.71ms  66.49ms   81.20%
    Req/Sec    13.25k     2.20k   18.11k    70.50%
  527467 requests in 20.00s, 76.46MB read
Requests/sec:  26370.12
Transfer/sec:      3.82MB
```
