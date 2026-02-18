# Java Spring Boot — Hello World Benchmark

**Tested**: 2026-02-18 04:43:13 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 31,265.68 |
| Avg Latency    | 13.21ms   |
| Max Latency    | 170.99ms  |
| Total Requests | 625,607   |
| Transfer/sec   | 2.92MB    |
| Port           | 8009      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 13.21ms | 18.82ms | 170.99ms | 81.77%    |
| Req/Sec | 15.73k  | 11.27k  | 43.16k   | 67.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 144.2MiB |
| Memory Limit | 1GiB     |
| Memory %     | 14.08%   |
| CPU %        | 0.06%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.21ms   18.82ms 170.99ms   81.77%
    Req/Sec    15.73k    11.27k   43.16k    67.25%
  625607 requests in 20.01s, 58.47MB read
Requests/sec:  31265.68
Transfer/sec:      2.92MB
```
