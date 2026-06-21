# Go Echo — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 20992 | 0.3ms | 77.6ms | 81.9ms |
| gRPC  | 22479 | 3.0ms | 38.4ms | 44.4ms |

**gRPC vs REST**: 7.0%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 31.68MiB | 0.00% | 39 |
| gRPC  | 28.28MiB | 0.05% | 39 |

## Raw Output

### REST
```
[REST] Go Echo — RPS: 20992 | p50: 0.3ms | p99: 77.6ms | p999: 81.9ms
```

### gRPC
```
[gRPC] Go Echo — RPS: 22479 | p50: 3.0ms | p99: 38.4ms | p999: 44.4ms
```
