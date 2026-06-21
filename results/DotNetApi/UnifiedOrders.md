# C# .NET API — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 01:34:17 UTC
**Tool**: `bench` (Rust, `reqwest` + `tonic`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 8347 | 2.6ms | 88.0ms | 91.5ms |
| gRPC  | 8727 | 3.9ms | 79.2ms | 83.1ms |

**gRPC vs REST**: 4.5%

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | 84.98MiB | 0.01% |
| gRPC  | 82.1MiB | 0.04% |

## Raw Output

### REST
```
[REST] C# .NET API — RPS: 8347 | p50: 2.6ms | p99: 88.0ms | p999: 91.5ms
```

### gRPC
```
[gRPC] C# .NET API — RPS: 8727 | p50: 3.9ms | p99: 79.2ms | p999: 83.1ms
```
