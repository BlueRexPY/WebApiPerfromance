# JS NestJS Fastify Cluster — Hello World Benchmark

**Tested**: 2026-02-21 06:11:52 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8046/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 125,338.02 |
| Avg Latency    | 1.67ms     |
| Max Latency    | 204.23ms   |
| Total Requests | 2,507,133  |
| Transfer/sec   | 23.67MB    |
| Port           | 8046       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 1.67ms | 5.78ms | 204.23ms | 97.97%    |
| Req/Sec | 63.01k | 13.69k | 79.92k   | 87.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 86.33MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.43%    |
| CPU %        | 0.00%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8046/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.67ms    5.78ms 204.23ms   97.97%
    Req/Sec    63.01k    13.69k   79.92k    87.75%
  2507133 requests in 20.00s, 473.42MB read
Requests/sec: 125338.02
Transfer/sec:     23.67MB
```
