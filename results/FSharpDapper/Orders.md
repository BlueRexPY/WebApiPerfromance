# F# Dapper — Orders Benchmark

**Tested**: 2026-02-23 16:57:13 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8077/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 9,663.76 |
| Avg Latency    | 19.07ms  |
| Max Latency    | 93.33ms  |
| Total Requests | 193,584  |
| Transfer/sec   | 102.67MB |
| Port           | 8077     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.07ms | 20.47ms | 93.33ms | 80.51%    |
| Req/Sec | 4.86k   | 1.70k   | 10.28k  | 67.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 72.45MiB |
| Memory Limit | 1GiB     |
| Memory %     | 7.07%    |
| CPU %        | 0.04%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8077/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.07ms   20.47ms  93.33ms   80.51%
    Req/Sec     4.86k     1.70k   10.28k    67.00%
  193584 requests in 20.03s, 2.01GB read
Requests/sec:   9663.76
Transfer/sec:    102.67MB
```
