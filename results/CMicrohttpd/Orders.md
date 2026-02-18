# C Microhttpd — Orders Benchmark

**Tested**: 2026-02-18 04:53:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,598.50 |
| Avg Latency    | 25.25ms  |
| Max Latency    | 137.41ms |
| Total Requests | 112,180  |
| Transfer/sec   | 60.74MB  |
| Port           | 8018     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 25.25ms | 21.75ms | 137.41ms | 80.74%    |
| Req/Sec | 2.81k   | 1.22k   | 7.10k    | 87.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 4.691MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.46%    |
| CPU %        | 0.00%    |
| PIDs         | 9        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.25ms   21.75ms 137.41ms   80.74%
    Req/Sec     2.81k     1.22k    7.10k    87.75%
  112180 requests in 20.04s, 1.19GB read
Requests/sec:   5598.50
Transfer/sec:     60.74MB
```
