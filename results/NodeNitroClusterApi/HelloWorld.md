# JS Node Nitro Cluster — Hello World Benchmark

**Tested**: 2026-03-08 22:40:54 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8093/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 54,803.56 |
| Avg Latency    | 4.68ms    |
| Max Latency    | 150.50ms  |
| Total Requests | 1,096,387 |
| Transfer/sec   | 9.51MB    |
| Port           | 8093      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 4.68ms | 8.45ms | 150.50ms | 89.26%    |
| Req/Sec | 27.54k | 6.67k  | 37.39k   | 86.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 83.88MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.19%    |
| CPU %        | 0.03%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8093/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.68ms    8.45ms 150.50ms   89.26%
    Req/Sec    27.54k     6.67k   37.39k    86.25%
  1096387 requests in 20.01s, 190.30MB read
Requests/sec:  54803.56
Transfer/sec:      9.51MB
```
