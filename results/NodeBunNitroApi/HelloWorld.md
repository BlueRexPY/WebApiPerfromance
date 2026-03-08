# JS Bun Nitro — Hello World Benchmark

**Tested**: 2026-03-08 22:42:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8094/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 52,403.48 |
| Avg Latency    | 2.35ms    |
| Max Latency    | 61.84ms   |
| Total Requests | 1,048,679 |
| Transfer/sec   | 6.75MB    |
| Port           | 8094      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 2.35ms | 1.51ms | 61.84ms | 94.62%    |
| Req/Sec | 26.34k | 2.72k  | 31.48k  | 81.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 39.83MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.89%    |
| CPU %        | 1.12%    |
| PIDs         | 12       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8094/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.35ms    1.51ms  61.84ms   94.62%
    Req/Sec    26.34k     2.72k   31.48k    81.00%
  1048679 requests in 20.01s, 135.01MB read
Requests/sec:  52403.48
Transfer/sec:      6.75MB
```
