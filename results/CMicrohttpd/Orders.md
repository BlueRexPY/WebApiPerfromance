# C Microhttpd — Orders Benchmark

**Tested**: 2026-02-18 02:46:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,287.82 |
| Avg Latency    | 26.65ms  |
| Max Latency    | 95.46ms  |
| Total Requests | 105,779  |
| Transfer/sec   | 57.37MB  |
| Port           | 8018     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 26.65ms | 22.99ms | 95.46ms | 75.54%    |
| Req/Sec | 2.66k   | 1.09k   | 7.17k   | 89.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 3.141MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.31%    |
| CPU %        | 0.00%    |
| PIDs         | 9        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    26.65ms   22.99ms  95.46ms   75.54%
    Req/Sec     2.66k     1.09k    7.17k    89.00%
  105779 requests in 20.00s, 1.12GB read
Requests/sec:   5287.82
Transfer/sec:     57.37MB
```
