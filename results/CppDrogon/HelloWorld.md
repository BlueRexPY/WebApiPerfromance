# C++ Drogon — Hello World Benchmark

**Tested**: 2026-02-18 04:51:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 52,921.37 |
| Avg Latency    | 13.04ms   |
| Max Latency    | 70.24ms   |
| Total Requests | 1,058,558 |
| Transfer/sec   | 8.68MB    |
| Port           | 8017      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 13.04ms | 19.17ms | 70.24ms | 80.40%    |
| Req/Sec | 26.59k  | 13.37k  | 67.76k  | 83.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 10.98MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.07%    |
| CPU %        | 0.06%    |
| PIDs         | 47       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.04ms   19.17ms  70.24ms   80.40%
    Req/Sec    26.59k    13.37k   67.76k    83.00%
  1058558 requests in 20.00s, 173.64MB read
Requests/sec:  52921.37
Transfer/sec:      8.68MB
```
