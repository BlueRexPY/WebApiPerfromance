# F# .NET API — Hello World Benchmark

**Tested**: 2026-02-23 16:53:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8019/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 68,064.85 |
| Avg Latency    | 4.25ms    |
| Max Latency    | 76.61ms   |
| Total Requests | 1,362,255 |
| Transfer/sec   | 12.07MB   |
| Port           | 8019      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 4.25ms | 9.60ms | 76.61ms | 93.22%    |
| Req/Sec | 34.22k | 13.03k | 89.14k  | 72.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 34.86MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.40%    |
| CPU %        | 0.03%    |
| PIDs         | 22       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8019/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.25ms    9.60ms  76.61ms   93.22%
    Req/Sec    34.22k    13.03k   89.14k    72.00%
  1362255 requests in 20.01s, 241.64MB read
Requests/sec:  68064.85
Transfer/sec:     12.07MB
```
