# JS Bun Koa Cluster — Hello World Benchmark

**Tested**: 2026-02-21 11:46:44 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8058/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 124,823.41 |
| Avg Latency    | 3.10ms     |
| Max Latency    | 133.26ms   |
| Total Requests | 2,497,100  |
| Transfer/sec   | 17.86MB    |
| Port           | 8058       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 3.10ms | 9.34ms | 133.26ms | 94.96%    |
| Req/Sec | 62.75k | 17.52k | 82.58k   | 89.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 126.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 12.35%   |
| CPU %        | 4.79%    |
| PIDs         | 47       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8058/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.10ms    9.34ms 133.26ms   94.96%
    Req/Sec    62.75k    17.52k   82.58k    89.75%
  2497100 requests in 20.01s, 357.21MB read
Requests/sec: 124823.41
Transfer/sec:     17.86MB
```
