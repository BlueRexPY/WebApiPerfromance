# C# Carter — Orders Benchmark

**Tested**: 2026-02-23 16:45:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8035/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 9,483.80 |
| Avg Latency    | 19.69ms  |
| Max Latency    | 94.97ms  |
| Total Requests | 189,802  |
| Transfer/sec   | 100.76MB |
| Port           | 8035     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.69ms | 21.20ms | 94.97ms | 80.27%    |
| Req/Sec | 4.77k   | 1.50k   | 8.82k   | 70.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 58.09MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.67%    |
| CPU %        | 0.02%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8035/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.69ms   21.20ms  94.97ms   80.27%
    Req/Sec     4.77k     1.50k    8.82k    70.25%
  189802 requests in 20.01s, 1.97GB read
Requests/sec:   9483.80
Transfer/sec:    100.76MB
```
