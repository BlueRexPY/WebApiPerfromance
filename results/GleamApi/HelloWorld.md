# Gleam Wisp — Hello World Benchmark

**Tested**: 2026-02-21 13:37:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8063/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 12,317.78 |
| Avg Latency    | 13.37ms   |
| Max Latency    | 63.39ms   |
| Total Requests | 246,535   |
| Transfer/sec   | 2.04MB    |
| Port           | 8063      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 13.37ms | 13.10ms | 63.39ms | 82.21%    |
| Req/Sec | 6.19k   | 0.94k   | 8.71k   | 69.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 93.26MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.11%    |
| CPU %        | 0.33%    |
| PIDs         | 83       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8063/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.37ms   13.10ms  63.39ms   82.21%
    Req/Sec     6.19k     0.94k    8.71k    69.75%
  246535 requests in 20.01s, 40.91MB read
Requests/sec:  12317.78
Transfer/sec:      2.04MB
```
