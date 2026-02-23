# C# Dapper — Hello World Benchmark

**Tested**: 2026-02-23 16:48:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8071/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 69,819.14 |
| Avg Latency    | 5.41ms    |
| Max Latency    | 81.09ms   |
| Total Requests | 1,396,663 |
| Transfer/sec   | 12.38MB   |
| Port           | 8071      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.41ms | 12.11ms | 81.09ms | 91.41%    |
| Req/Sec | 35.10k | 16.95k  | 100.24k | 77.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 32.15MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.14%    |
| CPU %        | 0.04%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8071/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.41ms   12.11ms  81.09ms   91.41%
    Req/Sec    35.10k    16.95k  100.24k    77.25%
  1396663 requests in 20.00s, 247.74MB read
Requests/sec:  69819.14
Transfer/sec:     12.38MB
```
