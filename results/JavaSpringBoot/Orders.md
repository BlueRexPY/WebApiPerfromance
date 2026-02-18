# Java Spring Boot — Orders Benchmark

**Tested**: 2026-02-18 03:28:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 676.28   |
| Avg Latency    | 211.17ms |
| Max Latency    | 1.81s    |
| Total Requests | 13,538   |
| Transfer/sec   | 7.71MB   |
| Port           | 8009     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 211.17ms | 192.90ms | 1.81s | 87.55%    |
| Req/Sec | 341.39   | 231.53   | 0.98k | 64.07%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 221.3MiB |
| Memory Limit | 1GiB     |
| Memory %     | 21.61%   |
| CPU %        | 0.06%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   211.17ms  192.90ms   1.81s    87.55%
    Req/Sec   341.39    231.53     0.98k    64.07%
  13538 requests in 20.02s, 154.35MB read
Requests/sec:    676.28
Transfer/sec:      7.71MB
```
