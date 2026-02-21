# JS Bun Fastify Cluster — Hello World Benchmark

**Tested**: 2026-02-21 11:44:26 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8056/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 99,086.78 |
| Avg Latency    | 3.31ms    |
| Max Latency    | 88.55ms   |
| Total Requests | 1,982,099 |
| Transfer/sec   | 14.17MB   |
| Port           | 8056      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 3.31ms | 8.12ms | 88.55ms | 93.55%    |
| Req/Sec | 49.82k | 21.35k | 92.66k  | 65.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 237.7MiB |
| Memory Limit | 1GiB     |
| Memory %     | 23.22%   |
| CPU %        | 0.93%    |
| PIDs         | 49       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8056/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.31ms    8.12ms  88.55ms   93.55%
    Req/Sec    49.82k    21.35k   92.66k    65.50%
  1982099 requests in 20.00s, 283.54MB read
Requests/sec:  99086.78
Transfer/sec:     14.17MB
```
