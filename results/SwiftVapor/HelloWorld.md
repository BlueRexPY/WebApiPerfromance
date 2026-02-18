# Swift Vapor — Hello World Benchmark

**Tested**: 2026-02-18 02:59:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 38,655.65 |
| Avg Latency    | 3.15ms    |
| Max Latency    | 54.51ms   |
| Total Requests | 773,162   |
| Transfer/sec   | 5.68MB    |
| Port           | 8012      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 3.15ms | 1.26ms | 54.51ms | 96.88%    |
| Req/Sec | 19.43k | 1.58k  | 22.13k  | 74.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 5.062MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.49%    |
| CPU %        | 0.02%    |
| PIDs         | 6        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.15ms    1.26ms  54.51ms   96.88%
    Req/Sec    19.43k     1.58k   22.13k    74.00%
  773162 requests in 20.00s, 113.55MB read
Requests/sec:  38655.65
Transfer/sec:      5.68MB
```
