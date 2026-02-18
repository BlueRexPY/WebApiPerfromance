# Bun API — Hello World Benchmark

**Tested**: 2026-02-18 04:57:56 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 128,953.36 |
| Avg Latency    | 0.98ms     |
| Max Latency    | 60.78ms    |
| Total Requests | 2,579,397  |
| Transfer/sec   | 16.60MB    |
| Port           | 8002       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 0.98ms | 1.32ms | 60.78ms | 99.57%    |
| Req/Sec | 64.81k | 5.69k  | 78.39k  | 76.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 16.69MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.63%    |
| CPU %        | 0.92%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.98ms    1.32ms  60.78ms   99.57%
    Req/Sec    64.81k     5.69k   78.39k    76.50%
  2579397 requests in 20.00s, 332.09MB read
Requests/sec: 128953.36
Transfer/sec:     16.60MB
```
