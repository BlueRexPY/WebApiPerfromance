# Erlang Cowboy — Hello World Benchmark

**Tested**: 2026-02-18 02:35:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 94,813.52 |
| Avg Latency    | 1.33ms    |
| Max Latency    | 59.39ms   |
| Total Requests | 1,896,587 |
| Transfer/sec   | 13.66MB   |
| Port           | 8010      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.33ms | 1.16ms | 59.39ms | 95.90%    |
| Req/Sec | 47.67k | 3.36k  | 59.38k  | 75.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 99.94MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.76%    |
| CPU %        | 0.15%    |
| PIDs         | 86       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.33ms    1.16ms  59.39ms   95.90%
    Req/Sec    47.67k     3.36k   59.38k    75.75%
  1896587 requests in 20.00s, 273.15MB read
Requests/sec:  94813.52
Transfer/sec:     13.66MB
```
