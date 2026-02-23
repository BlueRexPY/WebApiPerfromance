# F# EF Core — Hello World Benchmark

**Tested**: 2026-02-23 16:55:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8076/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 70,492.79 |
| Avg Latency    | 5.35ms    |
| Max Latency    | 79.70ms   |
| Total Requests | 1,410,387 |
| Transfer/sec   | 12.50MB   |
| Port           | 8076      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.35ms | 11.88ms | 79.70ms | 91.34%    |
| Req/Sec | 35.44k | 16.34k  | 104.57k | 68.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 33.68MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.29%    |
| CPU %        | 0.02%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8076/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.35ms   11.88ms  79.70ms   91.34%
    Req/Sec    35.44k    16.34k  104.57k    68.50%
  1410387 requests in 20.01s, 250.18MB read
Requests/sec:  70492.79
Transfer/sec:     12.50MB
```
