# C++ Drogon — Hello World Benchmark

**Tested**: 2026-02-20 11:21:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 43,358.87 |
| Avg Latency | 13.77ms |
| Max Latency | 72.20ms |
| Total Requests | 867,315 |
| Transfer/sec | 7.11MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 13.77ms | 19.83ms | 72.20ms | 80.20% |
| Req/Sec | 21.79k | 8.66k | 66.63k | 86.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 16.37MiB |
| Memory Limit | 1GiB |
| Memory % | 1.60% |
| CPU % | 0.10% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.77ms   19.83ms  72.20ms   80.20%
    Req/Sec    21.79k     8.66k   66.63k    86.00%
  867315 requests in 20.00s, 142.27MB read
Requests/sec:  43358.87
Transfer/sec:      7.11MB
```
