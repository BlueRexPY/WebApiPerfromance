# Lua OpenResty — Orders Benchmark

**Tested**: 2026-03-07 13:59:25 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8084/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,335.69 |
| Avg Latency    | 43.07ms  |
| Max Latency    | 365.08ms |
| Total Requests | 66,802   |
| Transfer/sec   | 36.42MB  |
| Port           | 8084     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 43.07ms | 42.30ms | 365.08ms | 71.87%    |
| Req/Sec | 1.68k   | 406.22  | 3.18k    | 70.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 62.12MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.07%    |
| CPU %        | 0.15%    |
| PIDs         | 33       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8084/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    43.07ms   42.30ms 365.08ms   71.87%
    Req/Sec     1.68k   406.22     3.18k    70.50%
  66802 requests in 20.03s, 729.33MB read
Requests/sec:   3335.69
Transfer/sec:     36.42MB
```
