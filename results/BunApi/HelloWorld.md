# Bun API — Hello World Benchmark

**Tested**: 2026-02-18 02:26:56 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 128,261.01 |
| Avg Latency    | 0.99ms     |
| Max Latency    | 63.18ms    |
| Total Requests | 2,565,540  |
| Transfer/sec   | 16.51MB    |
| Port           | 8002       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 0.99ms | 1.32ms | 63.18ms | 99.37%    |
| Req/Sec | 64.49k | 7.57k  | 75.92k  | 82.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 16.35MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.60%    |
| CPU %        | 2.34%    |
| PIDs         | 17       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.99ms    1.32ms  63.18ms   99.37%
    Req/Sec    64.49k     7.57k   75.92k    82.25%
  2565540 requests in 20.00s, 330.30MB read
Requests/sec: 128261.01
Transfer/sec:     16.51MB
```
