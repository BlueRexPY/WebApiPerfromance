# C# .NET API — Hello World Benchmark

**Tested**: 2026-02-23 16:44:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 85,108.64 |
| Avg Latency    | 5.18ms    |
| Max Latency    | 82.93ms   |
| Total Requests | 1,702,806 |
| Transfer/sec   | 15.10MB   |
| Port           | 8001      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.18ms | 12.02ms | 82.93ms | 91.26%    |
| Req/Sec | 42.78k | 21.06k  | 99.48k  | 60.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 41.55MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.06%    |
| CPU %        | 0.03%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.18ms   12.02ms  82.93ms   91.26%
    Req/Sec    42.78k    21.06k   99.48k    60.75%
  1702806 requests in 20.01s, 302.05MB read
Requests/sec:  85108.64
Transfer/sec:     15.10MB
```
