# Python BlackSheep — Hello World Benchmark

**Tested**: 2026-03-08 22:51:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8097/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 24,250.03 |
| Avg Latency    | 12.13ms   |
| Max Latency    | 62.90ms   |
| Total Requests | 485,073   |
| Transfer/sec   | 3.52MB    |
| Port           | 8097      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 12.13ms | 15.95ms | 62.90ms | 81.08%    |
| Req/Sec | 12.19k  | 5.68k   | 37.96k  | 86.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 156.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.32%   |
| CPU %        | 0.80%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8097/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.13ms   15.95ms  62.90ms   81.08%
    Req/Sec    12.19k     5.68k   37.96k    86.00%
  485073 requests in 20.00s, 70.32MB read
Requests/sec:  24250.03
Transfer/sec:      3.52MB
```
