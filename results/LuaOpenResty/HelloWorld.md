# Lua OpenResty — Hello World Benchmark

**Tested**: 2026-03-07 13:58:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8084/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 78,059.22 |
| Avg Latency    | 10.32ms   |
| Max Latency    | 65.02ms   |
| Total Requests | 1,562,356 |
| Transfer/sec   | 15.41MB   |
| Port           | 8084      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 10.32ms | 16.23ms | 65.02ms | 81.31%    |
| Req/Sec | 39.23k  | 15.97k  | 75.65k  | 58.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 35.21MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.44%    |
| CPU %        | 0.13%    |
| PIDs         | 33       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8084/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    10.32ms   16.23ms  65.02ms   81.31%
    Req/Sec    39.23k    15.97k   75.65k    58.00%
  1562356 requests in 20.02s, 308.42MB read
Requests/sec:  78059.22
Transfer/sec:     15.41MB
```
