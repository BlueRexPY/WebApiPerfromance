# Go Echo — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 01:34:17 UTC
**Tool**: `bench` (Rust, `reqwest` + `tonic`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 5455 | 3.1ms | 95.5ms | 100.1ms |
| gRPC  | 5227 | 5.4ms | 95.1ms | 99.3ms |

**gRPC vs REST**: -4.1%

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | 47.35MiB | 0.00% |
| gRPC  | 70.76MiB | 0.04% |

## Raw Output

### REST
```
[REST] Go Echo — RPS: 5455 | p50: 3.1ms | p99: 95.5ms | p999: 100.1ms
```

### gRPC
```
[gRPC] Go Echo — RPS: 5227 | p50: 5.4ms | p99: 95.1ms | p999: 99.3ms
```
