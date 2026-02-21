# JS Bun Hono — Hello World Benchmark

**Tested**: 2026-02-21 11:38:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8051/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 130,175.76 |
| Avg Latency    | 1.00ms     |
| Max Latency    | 77.87ms    |
| Total Requests | 2,603,818  |
| Transfer/sec   | 18.50MB    |
| Port           | 8051       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.00ms | 1.86ms | 77.87ms | 99.61%    |
| Req/Sec | 65.43k | 7.09k  | 74.92k  | 85.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 21.14MiB |
| Memory Limit | 1GiB     |
| Memory %     | 2.06%    |
| CPU %        | 2.23%    |
| PIDs         | 17       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8051/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.00ms    1.86ms  77.87ms   99.61%
    Req/Sec    65.43k     7.09k   74.92k    85.50%
  2603818 requests in 20.00s, 370.00MB read
Requests/sec: 130175.76
Transfer/sec:     18.50MB
```
