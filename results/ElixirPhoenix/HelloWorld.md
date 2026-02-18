# Elixir Phoenix — Hello World Benchmark

**Tested**: 2026-02-18 04:41:05 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 39,730.31 |
| Avg Latency    | 3.33ms    |
| Max Latency    | 59.24ms   |
| Total Requests | 794,640   |
| Transfer/sec   | 9.62MB    |
| Port           | 8007      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 3.33ms | 2.44ms | 59.24ms | 85.93%    |
| Req/Sec | 19.96k | 3.50k  | 27.08k  | 62.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 162.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.87%   |
| CPU %        | 0.60%    |
| PIDs         | 85       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.33ms    2.44ms  59.24ms   85.93%
    Req/Sec    19.96k     3.50k   27.08k    62.00%
  794640 requests in 20.00s, 192.50MB read
Requests/sec:  39730.31
Transfer/sec:      9.62MB
```
