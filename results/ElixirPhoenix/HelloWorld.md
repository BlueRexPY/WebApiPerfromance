# Elixir Phoenix — Hello World Benchmark

**Tested**: 2026-02-20 11:10:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 67,091.97 |
| Avg Latency    | 2.12ms    |
| Max Latency    | 88.15ms   |
| Total Requests | 1,342,011 |
| Transfer/sec   | 16.25MB   |
| Port           | 8007      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 2.12ms | 2.45ms | 88.15ms | 93.75%    |
| Req/Sec | 33.73k | 2.17k  | 36.92k  | 88.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 186.7MiB |
| Memory Limit | 1GiB     |
| Memory %     | 18.24%   |
| CPU %        | 1.57%    |
| PIDs         | 85       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.12ms    2.45ms  88.15ms   93.75%
    Req/Sec    33.73k     2.17k   36.92k    88.50%
  1342011 requests in 20.00s, 325.10MB read
Requests/sec:  67091.97
Transfer/sec:     16.25MB
```
