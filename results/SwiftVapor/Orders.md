# Swift Vapor — Orders Benchmark

**Tested**: 2026-02-18 04:46:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 592.98   |
| Avg Latency    | 203.72ms |
| Max Latency    | 838.94ms |
| Total Requests | 11,891   |
| Transfer/sec   | 6.12MB   |
| Port           | 8012     |

## Thread Stats

| Stat    | Avg      | Stdev   | Max      | +/- Stdev |
| ------- | -------- | ------- | -------- | --------- |
| Latency | 203.72ms | 96.03ms | 838.94ms | 65.95%    |
| Req/Sec | 301.91   | 141.60  | 831.00   | 75.19%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 20.16MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.97%    |
| CPU %        | 0.03%    |
| PIDs         | 40       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   203.72ms   96.03ms 838.94ms   65.95%
    Req/Sec   301.91    141.60   831.00     75.19%
  11891 requests in 20.05s, 122.80MB read
Requests/sec:    592.98
Transfer/sec:      6.12MB
```
