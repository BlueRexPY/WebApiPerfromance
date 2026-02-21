# PHP Laravel — Hello World Benchmark

**Tested**: 2026-02-21 05:37:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8037/`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,299.74 |
| Avg Latency    | 45.12ms  |
| Max Latency    | 281.49ms |
| Total Requests | 66,111   |
| Transfer/sec   | 712.15KB |
| Port           | 8037     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 45.12ms | 45.87ms | 281.49ms | 89.59%    |
| Req/Sec | 1.66k   | 367.33  | 3.71k    | 72.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 156.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.31%   |
| CPU %        | 1.50%    |
| PIDs         | 13       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8037/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    45.12ms   45.87ms 281.49ms   89.59%
    Req/Sec     1.66k   367.33     3.71k    72.75%
  66111 requests in 20.04s, 13.93MB read
Requests/sec:   3299.74
Transfer/sec:    712.15KB
```
