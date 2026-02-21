# JS Node uWS — Hello World Benchmark

**Tested**: 2026-02-21 13:41:24 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8064/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 146,561.93 |
| Avg Latency    | 0.87ms     |
| Max Latency    | 38.71ms    |
| Total Requests | 2,931,886  |
| Transfer/sec   | 21.25MB    |
| Port           | 8064       |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 0.87ms | 769.22us | 38.71ms | 92.20%    |
| Req/Sec | 73.69k | 19.09k   | 114.36k | 59.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 12.59MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.23%    |
| CPU %        | 0.01%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8064/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.87ms  769.22us  38.71ms   92.20%
    Req/Sec    73.69k    19.09k  114.36k    59.50%
  2931886 requests in 20.00s, 425.00MB read
Requests/sec: 146561.93
Transfer/sec:     21.25MB
```
