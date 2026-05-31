# JS Node Bun Cluster — gRPC Orders Benchmark

**Tested**: 2026-05-31 17:39:52 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/api.ApiService/GetOrders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 0.06 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 3 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 1.52s | 4.05s | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 278.9MiB |
| Memory Limit | 1GiB |
| Memory % | 27.24% |
| CPU % | 0.06% |
| PIDs | 25 |

## Raw Output

```
/\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 


     execution: local
        script: /home/admin/Projects/Python/WebApiPerfromance/benchmarks/grpc/orders.js
        output: -

     scenarios: (100.00%) 1 scenario, 120 max VUs, 50s max duration (incl. graceful stop):
              * default: 120 looping VUs for 20s (gracefulStop: 30s)


running (01.0s), 120/120 VUs, 2 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 2 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 2 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s

running (21.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (22.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (23.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (24.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (25.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (26.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (27.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (28.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (29.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (30.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (31.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (32.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (33.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (34.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (35.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (36.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (37.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (38.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (39.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (40.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (41.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (42.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (43.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (44.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (45.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (46.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (47.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (48.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (49.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (50.0s), 120/120 VUs, 3 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    grpc_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    EXECUTION
    iteration_duration...: avg=1.52s min=37.97ms med=38.79ms max=4.5s p(90)=3.61s p(95)=4.05s
    iterations...........: 3     0.059999/s
    vus..................: 120   min=120               max=120
    vus_max..............: 120   min=120               max=120

    NETWORK
    data_received........: 162 B 3.239924223097107 B/s
    data_sent............: 32 kB 635 B/s

    GRPC
    grpc_orders_rtt_ms...: avg=0     min=0       med=0       max=0    p(90)=0     p(95)=0    




running (50.0s), 000/120 VUs, 3 complete and 120 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T19:39:00+02:00" level=error msg="ReferenceError: performance is not defined\n\tat default (file:///home/admin/Projects/Python/WebApiPerfromance/benchmarks/grpc/orders.js:38:17(9))\n" executor=constant-vus scenario=default source=stacktrace
time="2026-05-31T19:39:00+02:00" level=error msg="ReferenceError: performance is not defined\n\tat default (file:///home/admin/Projects/Python/WebApiPerfromance/benchmarks/grpc/orders.js:38:17(9))\n" executor=constant-vus scenario=default source=stacktrace
time="2026-05-31T19:39:05+02:00" level=error msg="ReferenceError: performance is not defined\n\tat default (file:///home/admin/Projects/Python/WebApiPerfromance/benchmarks/grpc/orders.js:38:17(9))\n" executor=constant-vus scenario=default source=stacktrace
```
