# Python Flask — Hello World Benchmark

**Tested**: 2026-02-21 12:37:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8067/`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 2,727.53\* |
| Avg Latency    | 40.40ms    |
| Max Latency    | 232.01ms   |
| Total Requests | 54,601     |
| Transfer/sec   | 460.80KB   |
| Port           | 8067       |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 40.40ms | 29.59ms | 232.01ms | 54.61%    |
| Req/Sec | 1.41k   | 0.87k   | 4.21k    | 76.41%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 89.76MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.77%    |
| CPU %        | 0.02%    |
| PIDs         | 5        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8067/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    40.40ms   29.59ms 232.01ms   54.61%
    Req/Sec     1.41k     0.87k    4.21k    76.41%
  54601 requests in 20.02s, 9.01MB read
  Socket errors: connect 0, read 3259, write 0, timeout 0
Requests/sec:   2727.53
Transfer/sec:    460.80KB
```
