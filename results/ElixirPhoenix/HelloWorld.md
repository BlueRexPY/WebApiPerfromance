# Elixir Phoenix — Hello World Benchmark

**Tested**: 2026-02-18 02:32:41 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 63,088.54 |
| Avg Latency    | 2.20ms    |
| Max Latency    | 59.78ms   |
| Total Requests | 1,268,080 |
| Transfer/sec   | 15.28MB   |
| Port           | 8007      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 2.20ms | 2.09ms | 59.78ms | 93.19%    |
| Req/Sec | 31.78k | 2.35k  | 63.17k  | 94.51%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 169.9MiB |
| Memory Limit | 1GiB     |
| Memory %     | 16.59%   |
| CPU %        | 0.77%    |
| PIDs         | 85       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.20ms    2.09ms  59.78ms   93.19%
    Req/Sec    31.78k     2.35k   63.17k    94.51%
  1268080 requests in 20.10s, 307.19MB read
Requests/sec:  63088.54
Transfer/sec:     15.28MB
```
