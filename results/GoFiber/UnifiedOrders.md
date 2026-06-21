# Go Fiber — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 01:34:17 UTC
**Tool**: `bench` (Rust, `reqwest` + `tonic`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 6211 | 2.4ms | 94.8ms | 99.8ms |
| gRPC  | 4845 | 6.2ms | 94.4ms | 98.3ms |

**gRPC vs REST**: -21.9%

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | 45.15MiB | 0.03% |
| gRPC  | 78.12MiB | 0.01% |

## Raw Output

### REST
```
[REST] Go Fiber — RPS: 6211 | p50: 2.4ms | p99: 94.8ms | p999: 99.8ms
```

### gRPC
```
[gRPC] Go Fiber — RPS: 4845 | p50: 6.2ms | p99: 94.4ms | p999: 98.3ms
```
