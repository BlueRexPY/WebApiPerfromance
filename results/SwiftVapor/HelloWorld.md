# Swift Vapor — Hello World Benchmark

**Tested**: 2026-02-18 04:46:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 24,274.85 |
| Avg Latency    | 4.99ms    |
| Max Latency    | 60.93ms   |
| Total Requests | 485,537   |
| Transfer/sec   | 4.03MB    |
| Port           | 8012      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 4.99ms | 1.91ms | 60.93ms | 86.96%    |
| Req/Sec | 12.20k | 1.83k  | 15.84k  | 67.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 4.625MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.45%    |
| CPU %        | 0.03%    |
| PIDs         | 6        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.99ms    1.91ms  60.93ms   86.96%
    Req/Sec    12.20k     1.83k   15.84k    67.75%
  485537 requests in 20.00s, 80.57MB read
Requests/sec:  24274.85
Transfer/sec:      4.03MB
```
