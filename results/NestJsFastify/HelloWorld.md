# JS NestJS Fastify — Hello World Benchmark

**Tested**: 2026-02-20 05:51:00 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8030/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 87,719.48 |
| Avg Latency    | 1.86ms    |
| Max Latency    | 244.97ms  |
| Total Requests | 1,754,643 |
| Transfer/sec   | 16.56MB   |
| Port           | 8030      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 1.86ms | 7.75ms | 244.97ms | 99.42%    |
| Req/Sec | 44.09k | 4.87k  | 51.23k   | 84.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 33.78MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.30%    |
| CPU %        | 0.01%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8030/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.86ms    7.75ms 244.97ms   99.42%
    Req/Sec    44.09k     4.87k   51.23k    84.50%
  1754643 requests in 20.00s, 331.32MB read
Requests/sec:  87719.48
Transfer/sec:     16.56MB
```
