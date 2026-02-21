# C# Carter — Orders Benchmark

**Tested**: 2026-02-21 07:13:17 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8035/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 7,705.86 |
| Avg Latency    | 22.85ms  |
| Max Latency    | 101.23ms |
| Total Requests | 154,404  |
| Transfer/sec   | 81.87MB  |
| Port           | 8035     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 22.85ms | 23.73ms | 101.23ms | 79.33%    |
| Req/Sec | 3.87k   | 1.52k   | 10.49k   | 85.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 54.94MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.37%    |
| CPU %        | 0.04%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8035/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.85ms   23.73ms 101.23ms   79.33%
    Req/Sec     3.87k     1.52k   10.49k    85.75%
  154404 requests in 20.04s, 1.60GB read
Requests/sec:   7705.86
Transfer/sec:     81.87MB
```
