# Unified REST + gRPC Performance Results — Summary

**Generated**: 2026-06-21 03:29:00 UTC  
**Tool**: `bench` (Rust, `reqwest` HTTP/1.1 + `tonic` gRPC)
**Concurrency**: 120 | **Total requests**: 100000 (10% warmup)

## Results

| Framework               | REST RPS | R Mem    | R CPU  | gRPC RPS | G Mem    | G CPU | Δ REST→gRPC |
| ----------------------- | -------- | -------- | ------ | -------- | -------- | ----- | ----------- |
| C# .NET API             | 44123    | 96.77MiB | 15.63% | 38103    | 101MiB   | 0.03% | -13.6%      |
| Go Chi                  | 17346    | 30.56MiB | 0.00%  | 19142    | 25.29MiB | 0.03% | 10.3%       |
| Go Echo                 | 20992    | 31.68MiB | 0.00%  | 22479    | 28.28MiB | 0.05% | 7.0%        |
| Go Fiber                | 68104    | 26.13MiB | 0.05%  | 15204    | 25.34MiB | 0.04% | -77.6%      |
| JS Node Express         | 21411    | 109.9MiB | 0.02%  | 30375    | 112.2MiB | 0.02% | 41.8%       |
| JS Node Express Cluster | 30369    | 111.8MiB | 0.03%  | 27226    | 125.5MiB | 0.01% | -10.3%      |
| JS Bun                  | 89941    | 87.68MiB | 2.11%  | 23250    | 134.8MiB | 1.02% | -74.1%      |
| JS Bun Cluster          | 126969   | 99.2MiB  | 2.27%  | 23285    | 105.2MiB | 5.79% | -81.6%      |
