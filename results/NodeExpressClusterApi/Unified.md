# JS Node Express Cluster — Unified REST + gRPC Benchmark

**Tested**: 2026-06-21 01:26:57 UTC
**Tool**: `bench` (Rust, unified REST + gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup discarded)

## Results

| Mode  | RPS | p50 | p99 | p999 |
| ----- | --- | --- | --- | ---- |
| REST  | 30369 | 2.6ms | 27.7ms | 52.5ms |
| gRPC  | 27226 | 4.0ms | 11.0ms | 14.7ms |

**gRPC vs REST**: -10.3%

## Resource Usage

| Phase | Memory | CPU   | PIDs |
| ----- | ------ | ----- | ---- |
| REST  | 111.8MiB | 0.03% | 21 |
| gRPC  | 125.5MiB | 0.01% | 21 |

## Raw Output

### REST
```
[REST] JS Node Express Cluster — RPS: 30369 | p50: 2.6ms | p99: 27.7ms | p999: 52.5ms
```

### gRPC
```
[gRPC] JS Node Express Cluster — RPS: 27226 | p50: 4.0ms | p99: 11.0ms | p999: 14.7ms
```
