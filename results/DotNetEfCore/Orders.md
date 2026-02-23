# C# EF Core — Orders Benchmark

**Tested**: 2026-02-23 16:47:31 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8070/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,502.58 |
| Avg Latency    | 39.30ms  |
| Max Latency    | 204.96ms |
| Total Requests | 70,255   |
| Transfer/sec   | 37.21MB  |
| Port           | 8070     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 39.30ms | 35.38ms | 204.96ms | 66.71%    |
| Req/Sec | 1.76k   | 775.32  | 3.65k    | 63.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 91.77MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.96%    |
| CPU %        | 0.02%    |
| PIDs         | 27       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8070/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.30ms   35.38ms 204.96ms   66.71%
    Req/Sec     1.76k   775.32     3.65k    63.00%
  70255 requests in 20.06s, 746.38MB read
Requests/sec:   3502.58
Transfer/sec:     37.21MB
```
