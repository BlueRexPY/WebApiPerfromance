# C# Carter EF Core — Hello World Benchmark

**Tested**: 2026-02-23 16:49:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8072/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 55,641.79 |
| Avg Latency    | 7.58ms    |
| Max Latency    | 84.43ms   |
| Total Requests | 1,114,093 |
| Transfer/sec   | 9.87MB    |
| Port           | 8072      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 7.58ms | 14.82ms | 84.43ms | 88.23%    |
| Req/Sec | 27.98k | 12.36k  | 73.87k  | 59.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 32.57MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.18%    |
| CPU %        | 0.04%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8072/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.58ms   14.82ms  84.43ms   88.23%
    Req/Sec    27.98k    12.36k   73.87k    59.75%
  1114093 requests in 20.02s, 197.62MB read
Requests/sec:  55641.79
Transfer/sec:      9.87MB
```
