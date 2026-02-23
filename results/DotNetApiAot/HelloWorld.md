# C# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-23 16:43:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 70,931.65 |
| Avg Latency    | 6.73ms    |
| Max Latency    | 75.12ms   |
| Total Requests | 1,419,164 |
| Transfer/sec   | 12.58MB   |
| Port           | 8013      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 6.73ms | 13.78ms | 75.12ms | 88.65%    |
| Req/Sec | 35.65k | 19.18k  | 97.97k  | 62.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 38.66MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.78%    |
| CPU %        | 0.01%    |
| PIDs         | 22       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.73ms   13.78ms  75.12ms   88.65%
    Req/Sec    35.65k    19.18k   97.97k    62.25%
  1419164 requests in 20.01s, 251.74MB read
Requests/sec:  70931.65
Transfer/sec:     12.58MB
```
