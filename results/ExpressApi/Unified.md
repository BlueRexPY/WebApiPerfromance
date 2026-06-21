# JS Node Express — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 21411 | 5.3ms | 10.3ms | 14.6ms |
| gRPC  | 30375 | 3.5ms | 10.3ms | 13.9ms |

**gRPC vs REST**: 41.8%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 109.9MiB | 0.02% | 7 |
| gRPC  | 112.2MiB | 0.02% | 7 |

## Raw Output

### REST
```
[REST] JS Node Express — RPS: 21411 | p50: 5.3ms | p99: 10.3ms | p999: 14.6ms
```

### gRPC
```
[gRPC] JS Node Express — RPS: 30375 | p50: 3.5ms | p99: 10.3ms | p999: 13.9ms
```
