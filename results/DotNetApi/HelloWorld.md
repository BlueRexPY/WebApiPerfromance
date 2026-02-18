# .NET API — Hello World Benchmark

**Tested**: 2026-02-18 05:00:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 91,950.13 |
| Avg Latency    | 5.24ms    |
| Max Latency    | 78.81ms   |
| Total Requests | 1,839,891 |
| Transfer/sec   | 16.31MB   |
| Port           | 8001      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.24ms | 11.61ms | 78.81ms | 90.05%    |
| Req/Sec | 46.22k | 23.09k  | 97.15k  | 56.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 30.78MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.01%    |
| CPU %        | 2.44%    |
| PIDs         | 22       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.24ms   11.61ms  78.81ms   90.05%
    Req/Sec    46.22k    23.09k   97.15k    56.50%
  1839891 requests in 20.01s, 326.37MB read
Requests/sec:  91950.13
Transfer/sec:     16.31MB
```
