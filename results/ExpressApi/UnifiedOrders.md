# JS Node Express — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 01:34:17 UTC
**Tool**: `bench` (Rust, `reqwest` + `tonic`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 5825 | 20.4ms | 25.5ms | 40.1ms |
| gRPC  | 3100 | 36.8ms | 63.1ms | 74.5ms |

**gRPC vs REST**: -46.7%

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | 44.53MiB | 0.25% |
| gRPC  | 52.64MiB | 0.01% |

## Raw Output

### REST
```
[REST] JS Node Express — RPS: 5825 | p50: 20.4ms | p99: 25.5ms | p999: 40.1ms
```

### gRPC
```
[gRPC] JS Node Express — RPS: 3100 | p50: 36.8ms | p99: 63.1ms | p999: 74.5ms
```
