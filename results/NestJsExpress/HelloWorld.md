# NestJS Express — Hello World Benchmark

**Tested**: 2026-02-20 05:49:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8029/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 22,594.41 |
| Avg Latency    | 7.17ms    |
| Max Latency    | 539.74ms  |
| Total Requests | 451,933   |
| Transfer/sec   | 5.65MB    |
| Port           | 8029      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max      | +/- Stdev |
| ------- | ------ | ------- | -------- | --------- |
| Latency | 7.17ms | 22.33ms | 539.74ms | 99.01%    |
| Req/Sec | 11.35k | 1.12k   | 12.77k   | 90.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 45.64MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.46%    |
| CPU %        | 0.10%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8029/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.17ms   22.33ms 539.74ms   99.01%
    Req/Sec    11.35k     1.12k   12.77k    90.00%
  451933 requests in 20.00s, 112.92MB read
Requests/sec:  22594.41
Transfer/sec:      5.65MB
```
