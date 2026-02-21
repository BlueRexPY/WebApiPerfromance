# JS Express Cluster — Hello World Benchmark

**Tested**: 2026-02-21 06:18:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8041/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 41,453.36 |
| Avg Latency    | 4.91ms    |
| Max Latency    | 301.45ms  |
| Total Requests | 829,224   |
| Transfer/sec   | 7.79MB    |
| Port           | 8041      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 4.91ms | 9.04ms | 301.45ms | 90.69%    |
| Req/Sec | 20.84k | 3.28k  | 24.83k   | 91.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 85.52MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.35%    |
| CPU %        | 0.06%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8041/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.91ms    9.04ms 301.45ms   90.69%
    Req/Sec    20.84k     3.28k   24.83k    91.00%
  829224 requests in 20.00s, 155.79MB read
Requests/sec:  41453.36
Transfer/sec:      7.79MB
```
