# JS Bun Cluster — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 126969 | 0.8ms | 3.1ms | 9.3ms |
| gRPC  | 23285 | 5.1ms | 7.4ms | 8.8ms |

**gRPC vs REST**: -81.6%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 99.2MiB | 2.27% | 152 |
| gRPC  | 105.2MiB | 5.79% | 55 |

## Raw Output

### REST
```
[REST] JS Bun Cluster — RPS: 126969 | p50: 0.8ms | p99: 3.1ms | p999: 9.3ms
```

### gRPC
```
[gRPC] JS Bun Cluster — RPS: 23285 | p50: 5.1ms | p99: 7.4ms | p999: 8.8ms
```
