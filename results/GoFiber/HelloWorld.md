# Go Fiber — Hello World Benchmark

**Tested**: 2026-02-20 11:30:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 33,699.88 |
| Avg Latency    | 18.91ms   |
| Max Latency    | 136.12ms  |
| Total Requests | 674,858   |
| Transfer/sec   | 4.82MB    |
| Port           | 8008      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 18.91ms | 25.36ms | 136.12ms | 79.25%    |
| Req/Sec | 16.94k  | 5.35k   | 43.77k   | 76.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 13.04MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.27%    |
| CPU %        | 0.06%    |
| PIDs         | 45       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.91ms   25.36ms 136.12ms   79.25%
    Req/Sec    16.94k     5.35k   43.77k    76.75%
  674858 requests in 20.03s, 96.54MB read
Requests/sec:  33699.88
Transfer/sec:      4.82MB
```
