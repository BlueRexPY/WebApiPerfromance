# Elixir Plug — Hello World Benchmark

**Tested**: 2026-02-20 05:57:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8034/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 69,919.49 |
| Avg Latency    | 2.07ms    |
| Max Latency    | 71.02ms   |
| Total Requests | 1,398,547 |
| Transfer/sec   | 14.54MB   |
| Port           | 8034      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 2.07ms | 2.25ms | 71.02ms | 93.10%    |
| Req/Sec | 35.14k | 2.12k  | 39.61k  | 79.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 160.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.67%   |
| CPU %        | 0.35%    |
| PIDs         | 85       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8034/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.07ms    2.25ms  71.02ms   93.10%
    Req/Sec    35.14k     2.12k   39.61k    79.00%
  1398547 requests in 20.00s, 290.78MB read
Requests/sec:  69919.49
Transfer/sec:     14.54MB
```
