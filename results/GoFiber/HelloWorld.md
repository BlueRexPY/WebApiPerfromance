# Go Fiber — Hello World Benchmark

**Tested**: 2026-02-18 02:33:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 31,542.32 |
| Avg Latency    | 18.61ms   |
| Max Latency    | 84.42ms   |
| Total Requests | 632,287   |
| Transfer/sec   | 4.51MB    |
| Port           | 8008      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 18.61ms | 24.90ms | 84.42ms | 79.31%    |
| Req/Sec | 15.85k  | 5.46k   | 38.74k  | 66.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 12.91MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.26%    |
| CPU %        | 0.05%    |
| PIDs         | 47       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.61ms   24.90ms  84.42ms   79.31%
    Req/Sec    15.85k     5.46k   38.74k    66.25%
  632287 requests in 20.05s, 90.45MB read
Requests/sec:  31542.32
Transfer/sec:      4.51MB
```
