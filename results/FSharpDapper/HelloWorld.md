# F# Dapper — Hello World Benchmark

**Tested**: 2026-02-23 16:56:47 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8077/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 67,658.45 |
| Avg Latency    | 6.23ms    |
| Max Latency    | 80.07ms   |
| Total Requests | 1,353,427 |
| Transfer/sec   | 12.00MB   |
| Port           | 8077      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 6.23ms | 13.20ms | 80.07ms | 89.99%    |
| Req/Sec | 34.01k | 17.94k  | 105.01k | 71.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 33.91MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.31%    |
| CPU %        | 0.03%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8077/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.23ms   13.20ms  80.07ms   89.99%
    Req/Sec    34.01k    17.94k  105.01k    71.00%
  1353427 requests in 20.00s, 240.08MB read
Requests/sec:  67658.45
Transfer/sec:     12.00MB
```
