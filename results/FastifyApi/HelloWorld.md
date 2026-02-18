# Fastify API — Hello World Benchmark

**Tested**: 2026-02-18 04:36:33 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 32,725.09 |
| Avg Latency    | 10.49ms   |
| Max Latency    | 1.04s     |
| Total Requests | 654,643   |
| Transfer/sec   | 6.18MB    |
| Port           | 8003      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max    | +/- Stdev |
| ------- | ------- | ------- | ------ | --------- |
| Latency | 10.49ms | 59.41ms | 1.04s  | 98.33%    |
| Req/Sec | 16.45k  | 9.03k   | 38.65k | 70.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 27.62MiB |
| Memory Limit | 1GiB     |
| Memory %     | 2.70%    |
| CPU %        | 0.01%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    10.49ms   59.41ms   1.04s    98.33%
    Req/Sec    16.45k     9.03k   38.65k    70.00%
  654643 requests in 20.00s, 123.61MB read
Requests/sec:  32725.09
Transfer/sec:      6.18MB
```
