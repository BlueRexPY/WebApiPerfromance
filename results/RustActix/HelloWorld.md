# Rust Actix — Hello World Benchmark

**Tested**: 2026-02-18 03:24:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 109,437.17 |
| Avg Latency    | 9.72ms     |
| Max Latency    | 63.08ms    |
| Total Requests | 2,188,924  |
| Transfer/sec   | 14.09MB    |
| Port           | 8005       |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 9.72ms | 15.71ms | 63.08ms | 81.47%    |
| Req/Sec | 54.99k | 13.26k  | 94.62k  | 66.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 4.516MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.44%    |
| CPU %        | 0.18%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     9.72ms   15.71ms  63.08ms   81.47%
    Req/Sec    54.99k    13.26k   94.62k    66.75%
  2188924 requests in 20.00s, 281.82MB read
Requests/sec: 109437.17
Transfer/sec:     14.09MB
```
