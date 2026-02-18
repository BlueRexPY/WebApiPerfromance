# Python FastAPI — Hello World Benchmark

**Tested**: 2026-02-18 04:37:46 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 20,748.27 |
| Avg Latency    | 12.73ms   |
| Max Latency    | 61.11ms   |
| Total Requests | 414,988   |
| Transfer/sec   | 3.01MB    |
| Port           | 8004      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 12.73ms | 16.07ms | 61.11ms | 80.92%    |
| Req/Sec | 10.43k  | 1.00k   | 18.06k  | 75.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 192.3MiB |
| Memory Limit | 1GiB     |
| Memory %     | 18.78%   |
| CPU %        | 0.59%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.73ms   16.07ms  61.11ms   80.92%
    Req/Sec    10.43k     1.00k   18.06k    75.25%
  414988 requests in 20.00s, 60.16MB read
Requests/sec:  20748.27
Transfer/sec:      3.01MB
```
