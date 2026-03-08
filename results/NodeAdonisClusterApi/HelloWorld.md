# JS Node AdonisJS Cluster — Hello World Benchmark

**Tested**: 2026-03-08 22:38:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8091/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 110,843.26 |
| Avg Latency    | 2.19ms     |
| Max Latency    | 217.30ms   |
| Total Requests | 2,217,420  |
| Transfer/sec   | 20.82MB    |
| Port           | 8091       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 2.19ms | 7.07ms | 217.30ms | 96.76%    |
| Req/Sec | 55.71k | 13.50k | 70.90k   | 93.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 116.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 11.34%   |
| CPU %        | 0.03%    |
| PIDs         | 31       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8091/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.19ms    7.07ms 217.30ms   96.76%
    Req/Sec    55.71k    13.50k   70.90k    93.00%
  2217420 requests in 20.01s, 416.60MB read
Requests/sec: 110843.26
Transfer/sec:     20.82MB
```
