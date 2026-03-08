# JS Bun Elysia — Hello World Benchmark

**Tested**: 2026-03-08 22:34:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8086/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 154,051.09 |
| Avg Latency    | 837.13us   |
| Max Latency    | 72.04ms    |
| Total Requests | 3,081,348  |
| Transfer/sec   | 21.89MB    |
| Port           | 8086       |

## Thread Stats

| Stat    | Avg      | Stdev  | Max     | +/- Stdev |
| ------- | -------- | ------ | ------- | --------- |
| Latency | 837.13us | 1.33ms | 72.04ms | 99.43%    |
| Req/Sec | 77.43k   | 8.90k  | 90.96k  | 83.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 35.87MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.50%    |
| CPU %        | 0.29%    |
| PIDs         | 27       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8086/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   837.13us    1.33ms  72.04ms   99.43%
    Req/Sec    77.43k     8.90k   90.96k    83.75%
  3081348 requests in 20.00s, 437.85MB read
Requests/sec: 154051.09
Transfer/sec:     21.89MB
```
