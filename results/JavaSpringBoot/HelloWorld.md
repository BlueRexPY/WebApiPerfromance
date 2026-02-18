# Java Spring Boot — Hello World Benchmark

**Tested**: 2026-02-18 03:39:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 32,631.75 |
| Avg Latency    | 12.44ms   |
| Max Latency    | 241.28ms  |
| Total Requests | 653,114   |
| Transfer/sec   | 3.05MB    |
| Port           | 8009      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 12.44ms | 17.91ms | 241.28ms | 81.88%    |
| Req/Sec | 16.40k  | 9.47k   | 41.79k   | 66.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 140.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 13.72%   |
| CPU %        | 0.08%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.44ms   17.91ms 241.28ms   81.88%
    Req/Sec    16.40k     9.47k   41.79k    66.75%
  653114 requests in 20.01s, 61.04MB read
Requests/sec:  32631.75
Transfer/sec:      3.05MB
```
