# Ruby Rails — Orders Benchmark

**Tested**: 2026-02-18 04:50:15 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 423.29\* |
| Avg Latency    | 194.37ms |
| Max Latency    | 1.80s    |
| Total Requests | 8,486    |
| Transfer/sec   | 4.58MB   |
| Port           | 8015     |

## Thread Stats

| Stat    | Avg      | Stdev   | Max    | +/- Stdev |
| ------- | -------- | ------- | ------ | --------- |
| Latency | 194.37ms | 68.62ms | 1.80s  | 71.28%    |
| Req/Sec | 289.22   | 103.74  | 510.00 | 77.21%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 318.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 31.06%   |
| CPU %        | 0.06%    |
| PIDs         | 519      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8015/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   194.37ms   68.62ms   1.80s    71.28%
    Req/Sec   289.22    103.74   510.00     77.21%
  8486 requests in 20.05s, 91.79MB read
  Socket errors: connect 0, read 0, write 0, timeout 118
Requests/sec:    423.29
Transfer/sec:      4.58MB
```
