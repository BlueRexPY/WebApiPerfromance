# JS Bun AdonisJS Cluster — Hello World Benchmark

**Tested**: 2026-03-08 22:39:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8092/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 99,732.91 |
| Avg Latency    | 3.14ms    |
| Max Latency    | 113.38ms  |
| Total Requests | 1,995,226 |
| Transfer/sec   | 14.27MB   |
| Port           | 8092      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 3.14ms | 8.01ms | 113.38ms | 94.02%    |
| Req/Sec | 50.14k | 19.11k | 80.19k   | 69.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 235.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 22.99%   |
| CPU %        | 4.54%    |
| PIDs         | 66       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8092/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.14ms    8.01ms 113.38ms   94.02%
    Req/Sec    50.14k    19.11k   80.19k    69.50%
  1995226 requests in 20.01s, 285.42MB read
Requests/sec:  99732.91
Transfer/sec:     14.27MB
```
