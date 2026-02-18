# Java Spring Boot — Hello World Benchmark

**Tested**: 2026-02-18 01:44:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,789.60 |
| Avg Latency    | 37.66ms  |
| Max Latency    | 463.78ms |
| Total Requests | 75,980   |
| Transfer/sec   | 362.68KB |
| Port           | 8009     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 37.66ms | 35.70ms | 463.78ms | 75.72%    |
| Req/Sec | 1.90k   | 823.85  | 5.10k    | 70.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 817.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 79.83%   |
| CPU %        | 100.37%  |
| PIDs         | 36       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    37.66ms   35.70ms 463.78ms   75.72%
    Req/Sec     1.90k   823.85     5.10k    70.00%
  75980 requests in 20.05s, 7.10MB read
Requests/sec:   3789.60
Transfer/sec:    362.68KB
```
