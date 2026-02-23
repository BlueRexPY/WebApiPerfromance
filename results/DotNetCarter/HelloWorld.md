# C# Carter — Hello World Benchmark

**Tested**: 2026-02-23 16:45:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8035/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 83,960.09 |
| Avg Latency    | 4.17ms    |
| Max Latency    | 83.95ms   |
| Total Requests | 1,679,575 |
| Transfer/sec   | 14.89MB   |
| Port           | 8035      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 4.17ms | 10.17ms | 83.95ms | 93.06%    |
| Req/Sec | 42.22k | 18.37k  | 98.39k  | 69.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 34.27MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.35%    |
| CPU %        | 0.03%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8035/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.17ms   10.17ms  83.95ms   93.06%
    Req/Sec    42.22k    18.37k   98.39k    69.00%
  1679575 requests in 20.00s, 297.93MB read
Requests/sec:  83960.09
Transfer/sec:     14.89MB
```
