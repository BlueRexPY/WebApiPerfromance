# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-20 03:17:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 80,032.55 |
| Avg Latency    | 3.98ms    |
| Max Latency    | 70.59ms   |
| Total Requests | 1,600,855 |
| Transfer/sec   | 14.20MB   |
| Port           | 8013      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 3.98ms | 9.56ms | 70.59ms | 93.59%    |
| Req/Sec | 40.25k | 17.89k | 96.42k  | 75.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 15.34MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.50%    |
| CPU %        | 0.02%    |
| PIDs         | 18       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.98ms    9.56ms  70.59ms   93.59%
    Req/Sec    40.25k    17.89k   96.42k    75.25%
  1600855 requests in 20.00s, 283.97MB read
Requests/sec:  80032.55
Transfer/sec:     14.20MB
```
