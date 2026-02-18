# Rust Actix — Hello World Benchmark

**Tested**: 2026-02-18 04:38:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 111,793.63 |
| Avg Latency    | 8.65ms     |
| Max Latency    | 60.47ms    |
| Total Requests | 2,236,041  |
| Transfer/sec   | 14.39MB    |
| Port           | 8005       |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 8.65ms | 14.42ms | 60.47ms | 82.10%    |
| Req/Sec | 56.20k | 8.45k   | 85.84k  | 72.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 4.512MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.44%    |
| CPU %        | 0.16%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.65ms   14.42ms  60.47ms   82.10%
    Req/Sec    56.20k     8.45k   85.84k    72.50%
  2236041 requests in 20.00s, 287.88MB read
Requests/sec: 111793.63
Transfer/sec:     14.39MB
```
