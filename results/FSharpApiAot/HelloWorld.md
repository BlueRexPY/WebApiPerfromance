# F# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-23 16:54:50 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8020/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 65,174.10 |
| Avg Latency    | 5.84ms    |
| Max Latency    | 76.28ms   |
| Total Requests | 1,303,753 |
| Transfer/sec   | 11.56MB   |
| Port           | 8020      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.84ms | 12.59ms | 76.28ms | 90.71%    |
| Req/Sec | 32.77k | 14.03k  | 106.34k | 69.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 34.91MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.41%    |
| CPU %        | 0.03%    |
| PIDs         | 19       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8020/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.84ms   12.59ms  76.28ms   90.71%
    Req/Sec    32.77k    14.03k  106.34k    69.50%
  1303753 requests in 20.00s, 231.26MB read
Requests/sec:  65174.10
Transfer/sec:     11.56MB
```
