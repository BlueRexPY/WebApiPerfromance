# Dart Shelf — Hello World Benchmark

**Tested**: 2026-03-07 14:00:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8085/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 32,659.47 |
| Avg Latency    | 3.72ms    |
| Max Latency    | 89.60ms   |
| Total Requests | 653,260   |
| Transfer/sec   | 8.38MB    |
| Port           | 8085      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 3.72ms | 1.46ms | 89.60ms | 98.73%    |
| Req/Sec | 16.41k | 1.30k  | 19.20k  | 71.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 49.86MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.87%    |
| CPU %        | 0.00%    |
| PIDs         | 4        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8085/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.72ms    1.46ms  89.60ms   98.73%
    Req/Sec    16.41k     1.30k   19.20k    71.25%
  653260 requests in 20.00s, 167.59MB read
Requests/sec:  32659.47
Transfer/sec:      8.38MB
```
