# Crystal Kemal — Hello World Benchmark

**Tested**: 2026-02-21 13:44:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8061/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 101,919.44 |
| Avg Latency    | 1.19ms     |
| Max Latency    | 37.71ms    |
| Total Requests | 2,038,644  |
| Transfer/sec   | 17.50MB    |
| Port           | 8061       |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 1.19ms | 583.05us | 37.71ms | 95.46%    |
| Req/Sec | 51.23k | 7.98k    | 59.91k  | 79.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 15.11MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.48%    |
| CPU %        | 0.00%    |
| PIDs         | 1        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8061/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.19ms  583.05us  37.71ms   95.46%
    Req/Sec    51.23k     7.98k   59.91k    79.75%
  2038644 requests in 20.00s, 349.96MB read
Requests/sec: 101919.44
Transfer/sec:     17.50MB
```
