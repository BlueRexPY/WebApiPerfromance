# JS Hono Cluster — Hello World Benchmark

**Tested**: 2026-02-21 06:16:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8043/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 92,498.68 |
| Avg Latency    | 2.27ms    |
| Max Latency    | 261.50ms  |
| Total Requests | 1,850,262 |
| Transfer/sec   | 16.05MB   |
| Port           | 8043      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 2.27ms | 8.35ms | 261.50ms | 97.88%    |
| Req/Sec | 46.49k | 9.17k  | 56.06k   | 90.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 65.12MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.36%    |
| CPU %        | 0.02%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8043/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.27ms    8.35ms 261.50ms   97.88%
    Req/Sec    46.49k     9.17k   56.06k    90.50%
  1850262 requests in 20.00s, 321.15MB read
Requests/sec:  92498.68
Transfer/sec:     16.05MB
```
