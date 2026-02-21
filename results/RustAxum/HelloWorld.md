# Rust Axum — Hello World Benchmark

**Tested**: 2026-02-20 03:55:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8022/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 160,085.78 |
| Avg Latency    | 714.95us   |
| Max Latency    | 47.65ms    |
| Total Requests | 3,202,007  |
| Transfer/sec   | 20.61MB    |
| Port           | 8022       |

## Thread Stats

| Stat    | Avg      | Stdev    | Max     | +/- Stdev |
| ------- | -------- | -------- | ------- | --------- |
| Latency | 714.95us | 680.92us | 47.65ms | 98.33%    |
| Req/Sec | 80.49k   | 16.86k   | 132.39k | 82.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 3.754MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.37%    |
| CPU %        | 0.00%    |
| PIDs         | 3        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8022/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   714.95us  680.92us  47.65ms   98.33%
    Req/Sec    80.49k    16.86k  132.39k    82.00%
  3202007 requests in 20.00s, 412.25MB read
Requests/sec: 160085.78
Transfer/sec:     20.61MB
```
