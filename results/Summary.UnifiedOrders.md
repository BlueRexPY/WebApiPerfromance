# Unified REST + gRPC Performance Results (Orders) — Summary

**Generated**: 2026-06-21 02:37 UTC
**Tool**: `bench` (Rust, unified `hyper h2c` + `tonic` — **both HTTP/2**)
**Endpoint**: /orders (Orders with DB query)
**Concurrency**: 30 | **Total requests**: 50000 (10% warmup)

> Both REST and gRPC use HTTP/2 from the bench tool. REST goes through an
> in-process h2c bridge (HTTP/2 → HTTP/1.1 to target), gRPC uses native
> HTTP/2 via tonic. See `bench/src/main.rs` for details.

## Results (HTTP/2 REST vs HTTP/2 gRPC)

| Framework               | REST RPS | gRPC RPS | gRPC vs REST | REST RAM  | REST CPU | gRPC RAM  | gRPC CPU |
| ----------------------- | -------- | -------- | ------------ | --------- | -------- | --------- | -------- |
| C# .NET API             | 17,374   | 7,266    | −58%         | 42.69MiB  | 0.02%    | 57.37MiB  | 0.05%    |
| Go Chi                  | 1,106    | 6,618    | +498%        | 24.02MiB  | 0.00%    | 27.38MiB  | 0.02%    |
| Go Echo                 | 678      | 5,694    | +740%        | 17.14MiB  | 0.00%    | 26.63MiB  | 0.01%    |
| Go Fiber                | 260      | 4,362    | +1,578%      | 15.92MiB  | 0.03%    | 28.90MiB  | 0.02%    |
| JS Bun Cluster          | 547      | 3,388    | +519%        | 114.80MiB | 0.92%    | 161.00MiB | 4.37%    |
| JS Bun                  | 785      | 2,974    | +279%        | 54.33MiB  | 0.49%    | 65.87MiB  | 3.01%    |
| JS Node Express Cluster | 938      | 2,773    | +196%        | 105.10MiB | 0.07%    | 123.10MiB | 0.00%    |
| JS Node Express         | 1,202    | 2,711    | +126%        | 39.09MiB  | 0.00%    | 46.24MiB  | 0.01%    |
