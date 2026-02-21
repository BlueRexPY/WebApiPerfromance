# Python Flask — Orders Benchmark

**Tested**: 2026-02-21 12:38:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8067/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 1,616.70\* |
| Avg Latency    | 74.86ms    |
| Max Latency    | 204.13ms   |
| Total Requests | 32,388     |
| Transfer/sec   | 17.62MB    |
| Port           | 8067       |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 74.86ms | 43.75ms | 204.13ms | 55.29%    |
| Req/Sec | 812.91  | 438.61  | 1.71k    | 67.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 90.04MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.79%    |
| CPU %        | 0.01%    |
| PIDs         | 5        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8067/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    74.86ms   43.75ms 204.13ms   55.29%
    Req/Sec   812.91    438.61     1.71k    67.75%
  32388 requests in 20.03s, 352.98MB read
  Socket errors: connect 0, read 438, write 0, timeout 0
Requests/sec:   1616.70
Transfer/sec:     17.62MB
```
