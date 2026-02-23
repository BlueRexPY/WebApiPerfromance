# C# Carter Dapper — Hello World Benchmark

**Tested**: 2026-02-23 16:51:00 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8073/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 70,884.07 |
| Avg Latency    | 5.28ms    |
| Max Latency    | 80.57ms   |
| Total Requests | 1,418,893 |
| Transfer/sec   | 12.57MB   |
| Port           | 8073      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.28ms | 11.97ms | 80.57ms | 91.69%    |
| Req/Sec | 35.65k | 18.45k  | 109.03k | 76.50%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 31.7MiB |
| Memory Limit | 1GiB    |
| Memory %     | 3.10%   |
| CPU %        | 0.02%   |
| PIDs         | 23      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8073/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.28ms   11.97ms  80.57ms   91.69%
    Req/Sec    35.65k    18.45k  109.03k    76.50%
  1418893 requests in 20.02s, 251.69MB read
Requests/sec:  70884.07
Transfer/sec:     12.57MB
```
