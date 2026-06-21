# C# .NET API — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 44123 | 1.7ms | 31.3ms | 69.5ms |
| gRPC  | 38103 | 2.6ms | 19.8ms | 54.8ms |

**gRPC vs REST**: -13.6%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 96.77MiB | 15.63% | 20 |
| gRPC  | 101MiB | 0.03% | 20 |

## Raw Output

### REST
```
[REST] C# .NET API — RPS: 44123 | p50: 1.7ms | p99: 31.3ms | p999: 69.5ms
```

### gRPC
```
[gRPC] C# .NET API — RPS: 38103 | p50: 2.6ms | p99: 19.8ms | p999: 54.8ms
```
