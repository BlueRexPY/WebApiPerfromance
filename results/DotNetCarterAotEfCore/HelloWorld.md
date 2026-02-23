# C# Carter AOT EF Core — Hello World Benchmark

**Tested**: 2026-02-23 16:51:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8074/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 96,485.39 |
| Avg Latency    | 4.62ms    |
| Max Latency    | 73.46ms   |
| Total Requests | 1,929,793 |
| Transfer/sec   | 17.11MB   |
| Port           | 8074      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 4.62ms | 11.18ms | 73.46ms | 91.80%    |
| Req/Sec | 48.50k | 23.12k  | 103.00k | 62.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 50.23MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.90%    |
| CPU %        | 0.02%    |
| PIDs         | 19       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8074/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.62ms   11.18ms  73.46ms   91.80%
    Req/Sec    48.50k    23.12k  103.00k    62.75%
  1929793 requests in 20.00s, 342.31MB read
Requests/sec:  96485.39
Transfer/sec:     17.11MB
```
