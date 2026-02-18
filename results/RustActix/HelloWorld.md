# Rust Actix — Hello World Benchmark

**Tested**: 2026-02-18 02:30:26 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 136,275.09 |
| Avg Latency    | 10.40ms    |
| Max Latency    | 63.43ms    |
| Total Requests | 2,725,597  |
| Transfer/sec   | 17.54MB    |
| Port           | 8005       |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 10.40ms | 16.63ms | 63.43ms | 81.17%    |
| Req/Sec | 68.49k  | 8.94k   | 101.96k | 67.75%    |

## Resource Usage

| Metric       | Value  |
| ------------ | ------ |
| Memory Usage | 4.5MiB |
| Memory Limit | 1GiB   |
| Memory %     | 0.44%  |
| CPU %        | 0.18%  |
| PIDs         | 16     |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    10.40ms   16.63ms  63.43ms   81.17%
    Req/Sec    68.49k     8.94k  101.96k    67.75%
  2725597 requests in 20.00s, 350.91MB read
Requests/sec: 136275.09
Transfer/sec:     17.54MB
```
