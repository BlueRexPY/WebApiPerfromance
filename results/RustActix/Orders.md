# Rust Actix — Orders Benchmark

**Tested**: 2026-02-18 02:30:52 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 17,724.81 |
| Avg Latency    | 21.65ms   |
| Max Latency    | 203.89ms  |
| Total Requests | 354,579   |
| Transfer/sec   | 188.85MB  |
| Port           | 8005      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 21.65ms | 27.07ms | 203.89ms | 79.15%    |
| Req/Sec | 8.91k   | 1.12k   | 10.31k   | 87.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 14.46MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.41%    |
| CPU %        | 0.16%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.65ms   27.07ms 203.89ms   79.15%
    Req/Sec     8.91k     1.12k   10.31k    87.50%
  354579 requests in 20.00s, 3.69GB read
Requests/sec:  17724.81
Transfer/sec:    188.85MB
```
