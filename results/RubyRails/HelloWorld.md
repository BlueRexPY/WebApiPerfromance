# Ruby Rails — Hello World Benchmark

**Tested**: 2026-02-18 04:49:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,103.00 |
| Avg Latency    | 44.47ms  |
| Max Latency    | 1.16s    |
| Total Requests | 62,156   |
| Transfer/sec   | 869.69KB |
| Port           | 8015     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max   | +/- Stdev |
| ------- | ------- | ------- | ----- | --------- |
| Latency | 44.47ms | 64.01ms | 1.16s | 98.42%    |
| Req/Sec | 1.56k   | 387.20  | 2.42k | 65.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 296.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 28.96%   |
| CPU %        | 0.04%    |
| PIDs         | 519      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8015/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    44.47ms   64.01ms   1.16s    98.42%
    Req/Sec     1.56k   387.20     2.42k    65.25%
  62156 requests in 20.03s, 17.01MB read
Requests/sec:   3103.00
Transfer/sec:    869.69KB
```
