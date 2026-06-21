# Go Chi — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 17346 | 0.4ms | 78.6ms | 82.1ms |
| gRPC  | 19142 | 3.2ms | 39.5ms | 44.1ms |

**gRPC vs REST**: 10.3%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 30.56MiB | 0.00% | 37 |
| gRPC  | 25.29MiB | 0.03% | 37 |

## Raw Output

### REST
```
[REST] Go Chi — RPS: 17346 | p50: 0.4ms | p99: 78.6ms | p999: 82.1ms
```

### gRPC
```
[gRPC] Go Chi — RPS: 19142 | p50: 3.2ms | p99: 39.5ms | p999: 44.1ms
```
