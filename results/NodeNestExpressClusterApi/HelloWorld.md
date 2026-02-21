# JS NestJS Express Cluster — Hello World Benchmark

**Tested**: 2026-02-21 06:09:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8045/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 32,234.77 |
| Avg Latency    | 6.27ms    |
| Max Latency    | 377.36ms  |
| Total Requests | 644,756   |
| Transfer/sec   | 8.05MB    |
| Port           | 8045      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max      | +/- Stdev |
| ------- | ------ | ------- | -------- | --------- |
| Latency | 6.27ms | 12.59ms | 377.36ms | 92.02%    |
| Req/Sec | 16.21k | 2.84k   | 19.79k   | 87.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 102.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 10.01%   |
| CPU %        | 0.19%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8045/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.27ms   12.59ms 377.36ms   92.02%
    Req/Sec    16.21k     2.84k   19.79k    87.50%
  644756 requests in 20.00s, 161.10MB read
Requests/sec:  32234.77
Transfer/sec:      8.05MB
```
