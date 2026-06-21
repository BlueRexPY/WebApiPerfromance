# JS Bun — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 89941 | 1.0ms | 3.9ms | 12.4ms |
| gRPC  | 23250 | 5.0ms | 7.4ms | 9.7ms |

**gRPC vs REST**: -74.1%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 87.68MiB | 2.11% | 51 |
| gRPC  | 134.8MiB | 1.02% | 19 |

## Raw Output

### REST
```
[REST] JS Bun — RPS: 89941 | p50: 1.0ms | p99: 3.9ms | p999: 12.4ms
```

### gRPC
```
[gRPC] JS Bun — RPS: 23250 | p50: 5.0ms | p99: 7.4ms | p999: 9.7ms
```
