# JS Bun Cluster — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 00:41:45 UTC
**Concurrency**: 30 | **Total requests**: 50000 (10% warmup)

## Results
| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 547 | 7.2ms | 32.3ms | 40.8ms |
| gRPC  | 3388 | 8.8ms | 15.3ms | 18.2ms |

**gRPC vs REST**: 519.3%

## Resource Usage
| Phase | Memory | CPU | PIDs |
| ----- | ------ | --- | ---- |
| REST  | 114.8MiB | 0.92% | 51 |
| gRPC  | 161MiB | 4.37% | 48 |
