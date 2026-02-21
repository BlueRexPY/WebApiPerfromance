# Java Spring WebFlux — Hello World Benchmark

**Tested**: 2026-02-21 12:38:55 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8065/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 22,165.38 |
| Avg Latency    | 14.36ms   |
| Max Latency    | 163.75ms  |
| Total Requests | 443,923   |
| Transfer/sec   | 2.07MB    |
| Port           | 8065      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 14.36ms | 19.10ms | 163.75ms | 81.16%    |
| Req/Sec | 11.14k  | 6.90k   | 45.07k   | 79.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 142.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 13.88%   |
| CPU %        | 0.10%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8065/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    14.36ms   19.10ms 163.75ms   81.16%
    Req/Sec    11.14k     6.90k   45.07k    79.50%
  443923 requests in 20.03s, 41.49MB read
Requests/sec:  22165.38
Transfer/sec:      2.07MB
```
