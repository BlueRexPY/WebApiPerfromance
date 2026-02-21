# Ruby Sinatra — Hello World Benchmark

**Tested**: 2026-02-20 06:03:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8033/`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,419.24 |
| Avg Latency    | 132.06ms |
| Max Latency    | 700.13ms |
| Total Requests | 68,422   |
| Transfer/sec   | 440.74KB |
| Port           | 8033     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max      | +/- Stdev |
| ------- | -------- | -------- | -------- | --------- |
| Latency | 132.06ms | 171.93ms | 700.13ms | 79.56%    |
| Req/Sec | 1.72k    | 516.27   | 4.82k    | 88.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 63.75MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.23%    |
| CPU %        | 0.02%    |
| PIDs         | 48       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8033/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   132.06ms  171.93ms 700.13ms   79.56%
    Req/Sec     1.72k   516.27     4.82k    88.00%
  68422 requests in 20.01s, 8.61MB read
Requests/sec:   3419.24
Transfer/sec:    440.74KB
```
