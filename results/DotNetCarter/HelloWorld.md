# C# Carter — Hello World Benchmark

**Tested**: 2026-02-21 07:12:51 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8035/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 67,702.93 |
| Avg Latency    | 6.49ms    |
| Max Latency    | 81.36ms   |
| Total Requests | 1,355,735 |
| Transfer/sec   | 12.01MB   |
| Port           | 8035      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 6.49ms | 14.00ms | 81.36ms | 89.91%    |
| Req/Sec | 34.06k | 18.75k  | 100.07k | 73.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 32.25MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.15%    |
| CPU %        | 0.02%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8035/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.49ms   14.00ms  81.36ms   89.91%
    Req/Sec    34.06k    18.75k  100.07k    73.50%
  1355735 requests in 20.02s, 240.48MB read
Requests/sec:  67702.93
Transfer/sec:     12.01MB
```
