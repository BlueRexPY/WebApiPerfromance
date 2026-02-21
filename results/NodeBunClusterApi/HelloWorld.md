# JS Bun Cluster — Hello World Benchmark

**Tested**: 2026-02-21 06:39:44 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8047/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 133,348.37 |
| Avg Latency    | 1.37ms     |
| Max Latency    | 53.44ms    |
| Total Requests | 2,668,839  |
| Transfer/sec   | 17.17MB    |
| Port           | 8047       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.37ms | 2.19ms | 53.44ms | 93.15%    |
| Req/Sec | 67.09k | 26.61k | 123.66k | 56.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 44.05MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.30%    |
| CPU %        | 2.76%    |
| PIDs         | 46       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8047/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.37ms    2.19ms  53.44ms   93.15%
    Req/Sec    67.09k    26.61k  123.66k    56.50%
  2668839 requests in 20.01s, 343.60MB read
Requests/sec: 133348.37
Transfer/sec:     17.17MB
```
