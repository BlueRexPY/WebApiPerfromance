# Haskell Servant — Hello World Benchmark

**Tested**: 2026-02-18 02:31:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 158,828.12 |
| Avg Latency    | 800.54us   |
| Max Latency    | 91.30ms    |
| Total Requests | 3,176,712  |
| Transfer/sec   | 28.93MB    |
| Port           | 8006       |

## Thread Stats

| Stat    | Avg      | Stdev  | Max     | +/- Stdev |
| ------- | -------- | ------ | ------- | --------- |
| Latency | 800.54us | 1.40ms | 91.30ms | 98.97%    |
| Req/Sec | 79.86k   | 18.88k | 110.98k | 58.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 252.2MiB |
| Memory Limit | 1GiB     |
| Memory %     | 24.63%   |
| CPU %        | 0.13%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   800.54us    1.40ms  91.30ms   98.97%
    Req/Sec    79.86k    18.88k  110.98k    58.50%
  3176712 requests in 20.00s, 578.64MB read
Requests/sec: 158828.12
Transfer/sec:     28.93MB
```
