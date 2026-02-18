# Erlang Cowboy — Hello World Benchmark

**Tested**: 2026-02-18 04:44:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 56,637.99 |
| Avg Latency    | 2.23ms    |
| Max Latency    | 94.27ms   |
| Total Requests | 1,132,835 |
| Transfer/sec   | 8.16MB    |
| Port           | 8010      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 2.23ms | 1.92ms | 94.27ms | 91.94%    |
| Req/Sec | 28.47k | 6.67k  | 45.17k  | 64.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 96.49MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.42%    |
| CPU %        | 0.03%    |
| PIDs         | 86       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.23ms    1.92ms  94.27ms   91.94%
    Req/Sec    28.47k     6.67k   45.17k    64.00%
  1132835 requests in 20.00s, 163.15MB read
Requests/sec:  56637.99
Transfer/sec:      8.16MB
```
