# .NET API — Hello World Benchmark

**Tested**: 2026-02-18 02:25:51 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 69,305.26 |
| Avg Latency    | 4.93ms    |
| Max Latency    | 76.90ms   |
| Total Requests | 1,387,512 |
| Transfer/sec   | 12.29MB   |
| Port           | 8001      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 4.93ms | 10.99ms | 76.90ms | 91.89%    |
| Req/Sec | 34.84k | 15.11k  | 89.80k  | 66.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 31.32MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.06%    |
| CPU %        | 3.14%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.93ms   10.99ms  76.90ms   91.89%
    Req/Sec    34.84k    15.11k   89.80k    66.25%
  1387512 requests in 20.02s, 246.12MB read
Requests/sec:  69305.26
Transfer/sec:     12.29MB
```
