# Crystal Kemal — Orders Benchmark

**Tested**: 2026-02-21 13:44:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8061/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 483.99   |
| Avg Latency    | 270.64ms |
| Max Latency    | 1.18s    |
| Total Requests | 9,689    |
| Transfer/sec   | 5.00MB   |
| Port           | 8061     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 270.64ms | 220.60ms | 1.18s | 65.30%    |
| Req/Sec | 243.10   | 185.17   | 1.14k | 84.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 35.81MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.50%    |
| CPU %        | 4.94%    |
| PIDs         | 1        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8061/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   270.64ms  220.60ms   1.18s    65.30%
    Req/Sec   243.10    185.17     1.14k    84.50%
  9689 requests in 20.02s, 100.12MB read
Requests/sec:    483.99
Transfer/sec:      5.00MB
```
