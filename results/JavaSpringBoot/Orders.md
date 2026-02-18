# Java Spring Boot — Orders Benchmark

**Tested**: 2026-02-18 01:44:37 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 261.29\* |
| Avg Latency    | 473.80ms |
| Max Latency    | 1.99s    |
| Total Requests | 5,230    |
| Transfer/sec   | 3.00MB   |
| Port           | 8009     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max    | +/- Stdev |
| ------- | -------- | -------- | ------ | --------- |
| Latency | 473.80ms | 308.40ms | 1.99s  | 78.67%    |
| Req/Sec | 132.56   | 83.28    | 400.00 | 65.82%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 1015MiB |
| Memory Limit | 1GiB    |
| Memory %     | 99.12%  |
| CPU %        | 98.15%  |
| PIDs         | 46      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   473.80ms  308.40ms   1.99s    78.67%
    Req/Sec   132.56     83.28   400.00     65.82%
  5230 requests in 20.02s, 60.15MB read
  Socket errors: connect 0, read 0, write 0, timeout 21
Requests/sec:    261.29
Transfer/sec:      3.00MB
```
