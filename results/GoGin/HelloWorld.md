# Go Gin — Hello World Benchmark

**Tested**: 2026-02-21 12:35:30 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8066/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 27,973.53 |
| Avg Latency    | 19.85ms   |
| Max Latency    | 146.98ms  |
| Total Requests | 560,841   |
| Transfer/sec   | 4.00MB    |
| Port           | 8066      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 19.85ms | 26.05ms | 146.98ms | 79.05%    |
| Req/Sec | 14.06k  | 4.44k   | 28.05k   | 69.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 21.64MiB |
| Memory Limit | 1GiB     |
| Memory %     | 2.11%    |
| CPU %        | 0.00%    |
| PIDs         | 43       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8066/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.85ms   26.05ms 146.98ms   79.05%
    Req/Sec    14.06k     4.44k   28.05k    69.25%
  560841 requests in 20.05s, 80.23MB read
Requests/sec:  27973.53
Transfer/sec:      4.00MB
```
