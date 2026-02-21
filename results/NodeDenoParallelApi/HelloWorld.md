# JS Deno Parallel — Hello World Benchmark

**Tested**: 2026-02-21 06:52:16 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8048/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 167,880.22 |
| Avg Latency    | 841.65us   |
| Max Latency    | 62.51ms    |
| Total Requests | 3,358,386  |
| Transfer/sec   | 25.30MB    |
| Port           | 8048       |

## Thread Stats

| Stat    | Avg      | Stdev  | Max     | +/- Stdev |
| ------- | -------- | ------ | ------- | --------- |
| Latency | 841.65us | 2.11ms | 62.51ms | 99.30%    |
| Req/Sec | 84.40k   | 17.90k | 121.74k | 70.00%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 72.3MiB |
| Memory Limit | 1GiB    |
| Memory %     | 7.06%   |
| CPU %        | 0.01%   |
| PIDs         | 20      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8048/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   841.65us    2.11ms  62.51ms   99.30%
    Req/Sec    84.40k    17.90k  121.74k    70.00%
  3358386 requests in 20.00s, 506.04MB read
Requests/sec: 167880.22
Transfer/sec:     25.30MB
```
