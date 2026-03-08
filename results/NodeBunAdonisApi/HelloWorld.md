# JS Bun AdonisJS — Hello World Benchmark

**Tested**: 2026-03-08 22:37:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8090/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 87,663.28 |
| Avg Latency    | 1.62ms    |
| Max Latency    | 83.73ms   |
| Total Requests | 1,753,565 |
| Transfer/sec   | 12.54MB   |
| Port           | 8090      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.62ms | 3.10ms | 83.73ms | 98.96%    |
| Req/Sec | 44.07k | 5.27k  | 49.86k  | 90.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 100.7MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.83%    |
| CPU %        | 1.70%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8090/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.62ms    3.10ms  83.73ms   98.96%
    Req/Sec    44.07k     5.27k   49.86k    90.50%
  1753565 requests in 20.00s, 250.85MB read
Requests/sec:  87663.28
Transfer/sec:     12.54MB
```
