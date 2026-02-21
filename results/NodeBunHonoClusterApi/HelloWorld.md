# JS Bun Hono Cluster — Hello World Benchmark

**Tested**: 2026-02-21 11:45:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8057/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 104,025.87 |
| Avg Latency    | 1.65ms     |
| Max Latency    | 63.01ms    |
| Total Requests | 2,080,852  |
| Transfer/sec   | 14.78MB    |
| Port           | 8057       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.65ms | 2.52ms | 63.01ms | 92.96%    |
| Req/Sec | 52.32k | 20.76k | 105.53k | 64.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 52.55MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.13%    |
| CPU %        | 1.80%    |
| PIDs         | 51       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8057/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.65ms    2.52ms  63.01ms   92.96%
    Req/Sec    52.32k    20.76k  105.53k    64.75%
  2080852 requests in 20.00s, 295.68MB read
Requests/sec: 104025.87
Transfer/sec:     14.78MB
```
