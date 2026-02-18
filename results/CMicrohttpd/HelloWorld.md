# C Microhttpd — Hello World Benchmark

**Tested**: 2026-02-18 04:53:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 54,935.98 |
| Avg Latency    | 12.34ms   |
| Max Latency    | 68.93ms   |
| Total Requests | 1,098,912 |
| Transfer/sec   | 7.07MB    |
| Port           | 8018      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 12.34ms | 18.36ms | 68.93ms | 80.61%    |
| Req/Sec | 27.61k  | 12.18k  | 74.94k  | 83.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 4.484MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.44%    |
| CPU %        | 0.00%    |
| PIDs         | 9        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.34ms   18.36ms  68.93ms   80.61%
    Req/Sec    27.61k    12.18k   74.94k    83.00%
  1098912 requests in 20.00s, 141.48MB read
Requests/sec:  54935.98
Transfer/sec:      7.07MB
```
