# C# Carter AOT — Hello World Benchmark

**Tested**: 2026-02-21 07:09:19 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8036/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 73,044.17 |
| Avg Latency    | 4.80ms    |
| Max Latency    | 74.32ms   |
| Total Requests | 1,461,660 |
| Transfer/sec   | 12.96MB   |
| Port           | 8036      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 4.80ms | 11.11ms | 74.32ms | 92.24%    |
| Req/Sec | 36.73k | 15.25k  | 103.85k | 66.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 15.17MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.48%    |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8036/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.80ms   11.11ms  74.32ms   92.24%
    Req/Sec    36.73k    15.25k  103.85k    66.00%
  1461660 requests in 20.01s, 259.27MB read
Requests/sec:  73044.17
Transfer/sec:     12.96MB
```
