# JS Bun Fastify — Hello World Benchmark

**Tested**: 2026-02-21 11:37:24 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8050/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 109,846.64 |
| Avg Latency    | 1.28ms     |
| Max Latency    | 74.82ms    |
| Total Requests | 2,197,276  |
| Transfer/sec   | 15.71MB    |
| Port           | 8050       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.28ms | 2.57ms | 74.82ms | 99.02%    |
| Req/Sec | 55.21k | 7.31k  | 65.16k  | 85.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 47.46MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.63%    |
| CPU %        | 1.38%    |
| PIDs         | 17       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8050/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.28ms    2.57ms  74.82ms   99.02%
    Req/Sec    55.21k     7.31k   65.16k    85.00%
  2197276 requests in 20.00s, 314.32MB read
Requests/sec: 109846.64
Transfer/sec:     15.71MB
```
