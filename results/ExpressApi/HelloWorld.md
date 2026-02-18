# Express API — Hello World Benchmark

**Tested**: 2026-02-18 02:41:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 26,751.77 |
| Avg Latency    | 5.73ms    |
| Max Latency    | 446.04ms  |
| Total Requests | 535,113   |
| Transfer/sec   | 5.03MB    |
| Port           | 8014      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max      | +/- Stdev |
| ------- | ------ | ------- | -------- | --------- |
| Latency | 5.73ms | 16.64ms | 446.04ms | 99.17%    |
| Req/Sec | 13.45k | 1.16k   | 15.06k   | 90.50%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 39.1MiB |
| Memory Limit | 1GiB    |
| Memory %     | 3.82%   |
| CPU %        | 0.00%   |
| PIDs         | 7       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.73ms   16.64ms 446.04ms   99.17%
    Req/Sec    13.45k     1.16k   15.06k    90.50%
  535113 requests in 20.00s, 100.53MB read
Requests/sec:  26751.77
Transfer/sec:      5.03MB
```
