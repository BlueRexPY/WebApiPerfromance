# JS Koa — Hello World Benchmark

**Tested**: 2026-02-21 05:31:52 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8038/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 57,831.27 |
| Avg Latency    | 2.62ms    |
| Max Latency    | 306.44ms  |
| Total Requests | 1,156,768 |
| Transfer/sec   | 10.86MB   |
| Port           | 8038      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 2.62ms | 8.90ms | 306.44ms | 99.37%    |
| Req/Sec | 29.06k | 2.60k  | 31.10k   | 96.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 26.36MiB |
| Memory Limit | 1GiB     |
| Memory %     | 2.57%    |
| CPU %        | 0.01%    |
| PIDs         | 11       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8038/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.62ms    8.90ms 306.44ms   99.37%
    Req/Sec    29.06k     2.60k   31.10k    96.75%
  1156768 requests in 20.00s, 217.33MB read
Requests/sec:  57831.27
Transfer/sec:     10.86MB
```
