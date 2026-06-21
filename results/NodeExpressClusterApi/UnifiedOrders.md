# JS Node Express Cluster — Unified REST + gRPC Benchmark (Orders)

**Tested**: 2026-06-21 01:34:17 UTC
**Tool**: `bench` (Rust, `reqwest` + `tonic`)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 4134 | 23.2ms | 57.9ms | 65.1ms |
| gRPC  | 3352 | 35.6ms | 53.3ms | 62.8ms |

**gRPC vs REST**: -18.9%

## Resource Usage

| Phase | Memory | CPU   |
| ----- | ------ | ----- |
| REST  | 109.6MiB | 0.03% |
| gRPC  | 95.3MiB | 0.06% |

## Raw Output

### REST
```
[REST] JS Node Express Cluster — RPS: 4134 | p50: 23.2ms | p99: 57.9ms | p999: 65.1ms
```

### gRPC
```
[gRPC] JS Node Express Cluster — RPS: 3352 | p50: 35.6ms | p99: 53.3ms | p999: 62.8ms
```
