# Go Fiber — Hello World Benchmark

**Tested**: 2026-02-18 04:42:07 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 62,286.61 |
| Avg Latency    | 15.70ms   |
| Max Latency    | 77.64ms   |
| Total Requests | 1,245,847 |
| Transfer/sec   | 8.91MB    |
| Port           | 8008      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 15.70ms | 22.33ms | 77.64ms | 79.80%    |
| Req/Sec | 31.31k  | 3.65k   | 47.12k  | 80.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 13.43MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.31%    |
| CPU %        | 0.01%    |
| PIDs         | 45       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    15.70ms   22.33ms  77.64ms   79.80%
    Req/Sec    31.31k     3.65k   47.12k    80.50%
  1245847 requests in 20.00s, 178.22MB read
Requests/sec:  62286.61
Transfer/sec:      8.91MB
```
