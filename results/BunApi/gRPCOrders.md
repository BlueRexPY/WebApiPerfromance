# JS Bun — gRPC Orders Benchmark

**Tested**: 2026-05-31 17:30:44 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8002/api.ApiService/GetOrders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 0.02 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 1 |
| Transfer/sec | N/A |
| Port | 8002 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 4.7s | 4.7s | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 205.2MiB |
| Memory Limit | 1GiB |
| Memory % | 20.04% |
| CPU % | 0.04% |
| PIDs | 10 |

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


running (00.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  00.9s/20s

running (01.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  01.9s/20s

running (02.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  02.9s/20s

running (03.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  03.9s/20s

running (04.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  04.9s/20s

running (05.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  05.9s/20s

running (06.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  06.9s/20s

running (07.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  07.9s/20s

running (08.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  08.9s/20s

running (09.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  09.9s/20s

running (10.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  10.9s/20s

running (11.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  11.9s/20s

running (12.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  12.9s/20s

running (13.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  13.9s/20s

running (14.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  14.9s/20s

running (15.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  15.9s/20s

running (16.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  16.9s/20s

running (17.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  17.9s/20s

running (18.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  18.9s/20s

running (19.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  19.9s/20s

running (20.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (21.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (22.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (23.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (24.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (25.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (26.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (27.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (28.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (29.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (30.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (31.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (32.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (33.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (34.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (35.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (36.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (37.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (38.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (39.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (40.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (41.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (42.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (43.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (44.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (45.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (46.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (47.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (48.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (49.9s), 120/120 VUs, 1 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    grpc_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    EXECUTION
    iteration_duration...: avg=4.7s min=4.7s med=4.7s max=4.7s p(90)=4.7s p(95)=4.7s
    iterations...........: 1     0.019998/s
    vus..................: 120   min=120                max=120
    vus_max..............: 120   min=120                max=120

    NETWORK
    data_received........: 54 B  1.0799101368978232 B/s
    data_sent............: 32 kB 636 B/s

    GRPC
    grpc_orders_rtt_ms...: avg=0    min=0    med=0    max=0    p(90)=0    p(95)=0   




running (50.0s), 000/120 VUs, 1 complete and 120 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T19:29:57+02:00" level=error msg="ReferenceError: performance is not defined\n\tat default (file:///home/admin/Projects/Python/WebApiPerfromance/benchmarks/grpc/orders.js:38:17(9))\n" executor=constant-vus scenario=default source=stacktrace
```
