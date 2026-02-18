# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-18 04:47:31 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 63,397.83 |
| Avg Latency    | 6.74ms    |
| Max Latency    | 74.39ms   |
| Total Requests | 1,269,368 |
| Transfer/sec   | 11.25MB   |
| Port           | 8013      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 6.74ms | 13.67ms | 74.39ms | 89.12%    |
| Req/Sec | 31.87k | 14.88k  | 85.41k  | 68.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 18.13MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.77%    |
| CPU %        | 0.02%    |
| PIDs         | 22       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.74ms   13.67ms  74.39ms   89.12%
    Req/Sec    31.87k    14.88k   85.41k    68.00%
  1269368 requests in 20.02s, 225.16MB read
Requests/sec:  63397.83
Transfer/sec:     11.25MB
```
