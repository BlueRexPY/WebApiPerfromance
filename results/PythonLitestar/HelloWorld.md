# Python Litestar — Hello World Benchmark

**Tested**: 2026-02-18 04:59:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 13,671.14 |
| Avg Latency    | 19.49ms   |
| Max Latency    | 77.36ms   |
| Total Requests | 274,003   |
| Transfer/sec   | 1.98MB    |
| Port           | 8000      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.49ms | 23.36ms | 77.36ms | 78.43%    |
| Req/Sec | 6.87k   | 2.35k   | 19.56k  | 91.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 147.9MiB |
| Memory Limit | 1GiB     |
| Memory %     | 14.44%   |
| CPU %        | 0.00%    |
| PIDs         | 37       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.49ms   23.36ms  77.36ms   78.43%
    Req/Sec     6.87k     2.35k   19.56k    91.00%
  274003 requests in 20.04s, 39.72MB read
Requests/sec:  13671.14
Transfer/sec:      1.98MB
```
