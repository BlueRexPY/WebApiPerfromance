# C Microhttpd — Hello World Benchmark

**Tested**: 2026-02-18 02:45:56 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 46,977.74 |
| Avg Latency    | 12.23ms   |
| Max Latency    | 68.22ms   |
| Total Requests | 940,442   |
| Transfer/sec   | 6.05MB    |
| Port           | 8018      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 12.23ms | 18.07ms | 68.22ms | 80.65%    |
| Req/Sec | 23.62k  | 9.77k   | 72.19k  | 88.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 3.047MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.30%    |
| CPU %        | 0.00%    |
| PIDs         | 9        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.23ms   18.07ms  68.22ms   80.65%
    Req/Sec    23.62k     9.77k   72.19k    88.00%
  940442 requests in 20.02s, 121.08MB read
Requests/sec:  46977.74
Transfer/sec:      6.05MB
```
