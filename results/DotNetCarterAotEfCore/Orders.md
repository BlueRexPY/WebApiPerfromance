# C# Carter AOT EF Core — Orders Benchmark

**Tested**: 2026-02-23 16:52:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8074/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 11,542.63 |
| Avg Latency    | 16.35ms   |
| Max Latency    | 92.28ms   |
| Total Requests | 231,351   |
| Transfer/sec   | 122.63MB  |
| Port           | 8074      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 16.35ms | 18.26ms | 92.28ms | 82.02%    |
| Req/Sec | 5.80k   | 1.81k   | 11.93k  | 63.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 75.02MiB |
| Memory Limit | 1GiB     |
| Memory %     | 7.33%    |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8074/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    16.35ms   18.26ms  92.28ms   82.02%
    Req/Sec     5.80k     1.81k   11.93k    63.00%
  231351 requests in 20.04s, 2.40GB read
Requests/sec:  11542.63
Transfer/sec:    122.63MB
```
