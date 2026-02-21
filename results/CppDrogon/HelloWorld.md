# C++ Drogon — Hello World Benchmark

**Tested**: 2026-02-21 06:54:15 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 57,398.12 |
| Avg Latency    | 13.89ms   |
| Max Latency    | 72.96ms   |
| Total Requests | 1,148,704 |
| Transfer/sec   | 9.42MB    |
| Port           | 8017      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 13.89ms | 20.26ms | 72.96ms | 80.16%    |
| Req/Sec | 28.85k  | 14.51k  | 69.24k  | 79.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 15.43MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.51%    |
| CPU %        | 0.09%    |
| PIDs         | 65       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.89ms   20.26ms  72.96ms   80.16%
    Req/Sec    28.85k    14.51k   69.24k    79.75%
  1148704 requests in 20.01s, 188.42MB read
Requests/sec:  57398.12
Transfer/sec:      9.42MB
```
