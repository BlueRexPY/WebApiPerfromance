# Python Litestar — Hello World Benchmark

**Tested**: 2026-02-18 02:24:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 13,273.26 |
| Avg Latency    | 19.75ms   |
| Max Latency    | 76.94ms   |
| Total Requests | 266,041   |
| Transfer/sec   | 1.92MB    |
| Port           | 8000      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.75ms | 23.51ms | 76.94ms | 78.19%    |
| Req/Sec | 6.67k   | 2.59k   | 20.62k  | 91.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 147.6MiB |
| Memory Limit | 1GiB     |
| Memory %     | 14.41%   |
| CPU %        | 0.00%    |
| PIDs         | 37       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.75ms   23.51ms  76.94ms   78.19%
    Req/Sec     6.67k     2.59k   20.62k    91.75%
  266041 requests in 20.04s, 38.56MB read
Requests/sec:  13273.26
Transfer/sec:      1.92MB
```
