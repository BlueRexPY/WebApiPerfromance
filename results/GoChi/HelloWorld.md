# Go Chi — Hello World Benchmark

**Tested**: 2026-02-20 04:00:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8023/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 20,670.33 |
| Avg Latency    | 21.06ms   |
| Max Latency    | 94.38ms   |
| Total Requests | 413,480   |
| Transfer/sec   | 2.68MB    |
| Port           | 8023      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 21.06ms | 26.83ms | 94.38ms | 78.92%    |
| Req/Sec | 10.39k  | 4.26k   | 24.06k  | 77.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 18.82MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.84%    |
| CPU %        | 0.00%    |
| PIDs         | 42       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8023/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.06ms   26.83ms  94.38ms   78.92%
    Req/Sec    10.39k     4.26k   24.06k    77.00%
  413480 requests in 20.00s, 53.63MB read
Requests/sec:  20670.33
Transfer/sec:      2.68MB
```
