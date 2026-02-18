# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-18 02:40:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 88,743.25 |
| Avg Latency    | 4.99ms    |
| Max Latency    | 70.94ms   |
| Total Requests | 1,775,163 |
| Transfer/sec   | 15.74MB   |
| Port           | 8013      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 4.99ms | 11.47ms | 70.94ms | 91.30%    |
| Req/Sec | 44.63k | 24.55k  | 103.84k | 66.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 18.07MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.77%    |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.99ms   11.47ms  70.94ms   91.30%
    Req/Sec    44.63k    24.55k  103.84k    66.25%
  1775163 requests in 20.00s, 314.88MB read
Requests/sec:  88743.25
Transfer/sec:     15.74MB
```
