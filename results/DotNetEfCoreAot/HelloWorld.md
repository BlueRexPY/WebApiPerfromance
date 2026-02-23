# C# EF Core AOT — Hello World Benchmark

**Tested**: 2026-02-23 16:48:02 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8069/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 65,272.32 |
| Avg Latency    | 6.33ms    |
| Max Latency    | 93.57ms   |
| Total Requests | 1,305,667 |
| Transfer/sec   | 11.58MB   |
| Port           | 8069      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 6.33ms | 13.23ms | 93.57ms | 89.72%    |
| Req/Sec | 32.81k | 17.11k  | 90.11k  | 75.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 52.84MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.16%    |
| CPU %        | 0.02%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8069/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.33ms   13.23ms  93.57ms   89.72%
    Req/Sec    32.81k    17.11k   90.11k    75.50%
  1305667 requests in 20.00s, 231.60MB read
Requests/sec:  65272.32
Transfer/sec:     11.58MB
```
