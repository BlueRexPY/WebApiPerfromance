# JS Bun Elysia Cluster — Hello World Benchmark

**Tested**: 2026-03-08 22:31:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8087/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 107,099.52 |
| Avg Latency    | 1.81ms     |
| Max Latency    | 51.86ms    |
| Total Requests | 2,142,261  |
| Transfer/sec   | 15.22MB    |
| Port           | 8087       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.81ms | 2.93ms | 51.86ms | 92.38%    |
| Req/Sec | 53.85k | 28.92k | 118.98k | 73.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 108.3MiB |
| Memory Limit | 1GiB     |
| Memory %     | 10.58%   |
| CPU %        | 1.58%    |
| PIDs         | 90       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8087/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.81ms    2.93ms  51.86ms   92.38%
    Req/Sec    53.85k    28.92k  118.98k    73.75%
  2142261 requests in 20.00s, 304.41MB read
Requests/sec: 107099.52
Transfer/sec:     15.22MB
```
