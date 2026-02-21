# Java Micronaut — Hello World Benchmark

**Tested**: 2026-02-21 06:55:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8026/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 32,341.25 |
| Avg Latency    | 13.54ms   |
| Max Latency    | 89.91ms   |
| Total Requests | 648,245   |
| Transfer/sec   | 4.16MB    |
| Port           | 8026      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 13.54ms | 18.83ms | 89.91ms | 80.55%    |
| Req/Sec | 16.26k  | 9.12k   | 69.75k  | 81.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 173.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 16.93%   |
| CPU %        | 0.21%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8026/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.54ms   18.83ms  89.91ms   80.55%
    Req/Sec    16.26k     9.12k   69.75k    81.00%
  648245 requests in 20.04s, 83.46MB read
Requests/sec:  32341.25
Transfer/sec:      4.16MB
```
