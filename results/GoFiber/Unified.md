# Go Fiber — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 68104 | 0.1ms | 48.5ms | 55.0ms |
| gRPC  | 15204 | 5.3ms | 40.4ms | 45.5ms |

**gRPC vs REST**: -77.6%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 26.13MiB | 0.05% | 38 |
| gRPC  | 25.34MiB | 0.04% | 38 |

## Raw Output

### REST
```
[REST] Go Fiber — RPS: 68104 | p50: 0.1ms | p99: 48.5ms | p999: 55.0ms
```

### gRPC
```
[gRPC] Go Fiber — RPS: 15204 | p50: 5.3ms | p99: 40.4ms | p999: 45.5ms
```
