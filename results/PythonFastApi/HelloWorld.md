# Python FastAPI — Hello World Benchmark

**Tested**: 2026-02-18 02:29:25 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 24,245.88 |
| Avg Latency    | 12.33ms   |
| Max Latency    | 78.04ms   |
| Total Requests | 485,065   |
| Transfer/sec   | 3.51MB    |
| Port           | 8004      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 12.33ms | 16.22ms | 78.04ms | 81.02%    |
| Req/Sec | 12.19k  | 2.35k   | 17.28k  | 72.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 191.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 18.69%   |
| CPU %        | 0.97%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.33ms   16.22ms  78.04ms   81.02%
    Req/Sec    12.19k     2.35k   17.28k    72.00%
  485065 requests in 20.01s, 70.31MB read
Requests/sec:  24245.88
Transfer/sec:      3.51MB
```
