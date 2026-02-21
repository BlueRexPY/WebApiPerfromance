# C Microhttpd — Hello World Benchmark

**Tested**: 2026-02-21 07:04:55 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 87,121.48 |
| Avg Latency    | 13.23ms   |
| Max Latency    | 99.02ms   |
| Total Requests | 1,742,720 |
| Transfer/sec   | 11.22MB   |
| Port           | 8018      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 13.23ms | 19.81ms | 99.02ms | 80.41%    |
| Req/Sec | 43.78k  | 11.55k  | 63.62k  | 73.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 5.348MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.52%    |
| CPU %        | 0.00%    |
| PIDs         | 33       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.23ms   19.81ms  99.02ms   80.41%
    Req/Sec    43.78k    11.55k   63.62k    73.25%
  1742720 requests in 20.00s, 224.37MB read
Requests/sec:  87121.48
Transfer/sec:     11.22MB
```
