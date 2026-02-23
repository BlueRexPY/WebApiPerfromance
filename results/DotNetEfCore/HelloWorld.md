# C# EF Core — Hello World Benchmark

**Tested**: 2026-02-23 16:47:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8070/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 73,428.55 |
| Avg Latency    | 4.27ms    |
| Max Latency    | 83.62ms   |
| Total Requests | 1,469,842 |
| Transfer/sec   | 13.03MB   |
| Port           | 8070      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max     | +/- Stdev |
| ------- | ------ | ------- | ------- | --------- |
| Latency | 4.27ms | 10.34ms | 83.62ms | 93.76%    |
| Req/Sec | 36.92k | 16.15k  | 102.08k | 74.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 31.75MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.10%    |
| CPU %        | 0.04%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8070/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.27ms   10.34ms  83.62ms   93.76%
    Req/Sec    36.92k    16.15k  102.08k    74.75%
  1469842 requests in 20.02s, 260.73MB read
Requests/sec:  73428.55
Transfer/sec:     13.03MB
```
