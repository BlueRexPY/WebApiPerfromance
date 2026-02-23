# C# Carter AOT — Hello World Benchmark

**Tested**: 2026-02-23 16:46:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8036/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 80,958.61 |
| Avg Latency    | 5.82ms    |
| Max Latency    | 74.65ms   |
| Total Requests | 1,619,425 |
| Transfer/sec   | 14.36MB   |
| Port           | 8036      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 5.82ms | 13.06ms | 74.65ms | 90.16%    |
| Req/Sec | 40.69k | 21.08k  | 102.50k | 68.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 33.73MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.29%    |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8036/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.82ms   13.06ms  74.65ms   90.16%
    Req/Sec    40.69k    21.08k  102.50k    68.00%
  1619425 requests in 20.00s, 287.26MB read
Requests/sec:  80958.61
Transfer/sec:     14.36MB
```
