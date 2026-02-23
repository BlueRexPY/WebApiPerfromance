# F# AOT Dapper — Hello World Benchmark

**Tested**: 2026-02-23 16:57:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8078/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 101,445.39 |
| Avg Latency    | 5.68ms     |
| Max Latency    | 77.67ms    |
| Total Requests | 2,029,641  |
| Transfer/sec   | 17.99MB    |
| Port           | 8078       |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.68ms | 13.40ms | 77.67ms | 90.49%    |
| Req/Sec | 51.00k | 26.81k  | 105.77k | 58.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 16.78MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.64%    |
| CPU %        | 0.03%    |
| PIDs         | 25       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8078/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.68ms   13.40ms  77.67ms   90.49%
    Req/Sec    51.00k    26.81k  105.77k    58.50%
  2029641 requests in 20.01s, 360.02MB read
Requests/sec: 101445.39
Transfer/sec:     17.99MB
```
