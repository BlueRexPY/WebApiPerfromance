# Java Quarkus — Hello World Benchmark

**Tested**: 2026-02-20 03:30:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8021/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 36,468.24 |
| Avg Latency    | 10.92ms   |
| Max Latency    | 121.21ms  |
| Total Requests | 729,580   |
| Transfer/sec   | 3.90MB    |
| Port           | 8021      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 10.92ms | 16.09ms | 121.21ms | 82.53%    |
| Req/Sec | 18.34k  | 14.09k  | 82.69k   | 90.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 160.3MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.66%   |
| CPU %        | 0.25%    |
| PIDs         | 47       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8021/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    10.92ms   16.09ms 121.21ms   82.53%
    Req/Sec    18.34k    14.09k   82.69k    90.25%
  729580 requests in 20.01s, 77.93MB read
Requests/sec:  36468.24
Transfer/sec:      3.90MB
```
