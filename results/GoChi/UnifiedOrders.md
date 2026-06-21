# Go Chi — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 01:34:17 UTC
**Tool**: `bench` (Rust, `reqwest` + `tonic`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 5329 | 2.9ms | 96.5ms | 101.6ms |
| gRPC  | 4923 | 6.0ms | 93.3ms | 98.3ms |

**gRPC vs REST**: -7.6%

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | 56.46MiB | 0.00% |
| gRPC  | 74.14MiB | 0.08% |

## Raw Output

### REST
```
[REST] Go Chi — RPS: 5329 | p50: 2.9ms | p99: 96.5ms | p999: 101.6ms
```

### gRPC
```
[gRPC] Go Chi — RPS: 4923 | p50: 6.0ms | p99: 93.3ms | p999: 98.3ms
```
