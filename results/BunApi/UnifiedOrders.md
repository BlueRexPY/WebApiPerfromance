# JS Bun — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 01:34:17 UTC
**Tool**: `bench` (Rust, `reqwest` + `tonic`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 4055 | 29.1ms | 38.0ms | 44.2ms |
| gRPC  | 3807 | 31.1ms | 41.6ms | 45.9ms |

**gRPC vs REST**: -6.1%

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | 73.22MiB | 1.94% |
| gRPC  | 67.96MiB | 7.25% |

## Raw Output

### REST
```
[REST] JS Bun — RPS: 4055 | p50: 29.1ms | p99: 38.0ms | p999: 44.2ms
```

### gRPC
```
[gRPC] JS Bun — RPS: 3807 | p50: 31.1ms | p99: 41.6ms | p999: 45.9ms
```
