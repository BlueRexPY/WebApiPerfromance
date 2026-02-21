# JS Bun NestJS Fastify — Hello World Benchmark

**Tested**: 2026-02-21 11:42:07 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8054/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 99,648.49 |
| Avg Latency    | 1.45ms    |
| Max Latency    | 100.88ms  |
| Total Requests | 1,993,263 |
| Transfer/sec   | 14.25MB   |
| Port           | 8054      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 1.45ms | 3.41ms | 100.88ms | 99.14%    |
| Req/Sec | 50.08k | 6.18k  | 56.46k   | 91.50%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 68.2MiB |
| Memory Limit | 1GiB    |
| Memory %     | 6.66%   |
| CPU %        | 1.86%   |
| PIDs         | 10      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8054/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.45ms    3.41ms 100.88ms   99.14%
    Req/Sec    50.08k     6.18k   56.46k    91.50%
  1993263 requests in 20.00s, 285.14MB read
Requests/sec:  99648.49
Transfer/sec:     14.25MB
```
