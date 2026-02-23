# C# Carter AOT Dapper — Hello World Benchmark

**Tested**: 2026-02-23 16:52:55 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8075/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 93,110.08 |
| Avg Latency    | 6.52ms    |
| Max Latency    | 75.16ms   |
| Total Requests | 1,863,982 |
| Transfer/sec   | 16.52MB   |
| Port           | 8075      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 6.52ms | 13.95ms | 75.16ms | 88.87%    |
| Req/Sec | 46.81k | 26.95k  | 102.63k | 62.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 36.98MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.61%    |
| CPU %        | 0.03%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8075/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.52ms   13.95ms  75.16ms   88.87%
    Req/Sec    46.81k    26.95k  102.63k    62.75%
  1863982 requests in 20.02s, 330.64MB read
Requests/sec:  93110.08
Transfer/sec:     16.52MB
```
