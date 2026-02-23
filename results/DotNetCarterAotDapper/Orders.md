# C# Carter AOT Dapper — Orders Benchmark

**Tested**: 2026-02-23 16:53:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8075/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 10,180.90 |
| Avg Latency    | 18.66ms   |
| Max Latency    | 98.35ms   |
| Total Requests | 203,973   |
| Transfer/sec   | 108.16MB  |
| Port           | 8075      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 18.66ms | 20.57ms | 98.35ms | 81.09%    |
| Req/Sec | 5.12k   | 1.72k   | 11.00k  | 61.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 58.77MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.74%    |
| CPU %        | 0.02%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8075/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.66ms   20.57ms  98.35ms   81.09%
    Req/Sec     5.12k     1.72k   11.00k    61.75%
  203973 requests in 20.03s, 2.12GB read
Requests/sec:  10180.90
Transfer/sec:    108.16MB
```
