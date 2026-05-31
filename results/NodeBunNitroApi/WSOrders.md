# JS Bun Nitro — WS Orders Benchmark

**Tested**: 2026-05-31 16:06:51 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8094/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,193.59 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 64,005 |
| Transfer/sec | N/A |
| Port | 8094 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 37.52ms | 107.73ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 74.5MiB |
| Memory Limit | 1GiB |
| Memory % | 7.28% |
| CPU % | 0.31% |
| PIDs | 16 |

## Raw Output

```
/\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 


     execution: local
        script: /home/admin/Projects/Python/WebApiPerfromance/benchmarks/ws/orders.js
        output: -

     scenarios: (100.00%) 1 scenario, 120 max VUs, 50s max duration (incl. graceful stop):
              * default: 120 looping VUs for 20s (gracefulStop: 30s)


running (01.0s), 120/120 VUs, 9330 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 17690 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 24509 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 26567 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 29842 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 34137 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 36387 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 38547 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 40802 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 42765 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 44909 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 47011 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 49202 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 51132 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 53141 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 55374 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 57617 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 59396 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 61638 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 63868 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 64005   3193.591716/s
    checks_succeeded...: 0.00%   0 out of 64005
    checks_failed......: 100.00% 64005 out of 64005

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 64005

    EXECUTION
    iteration_duration....: avg=37.52ms min=3.09ms med=21.81ms max=336.53ms p(90)=86.03ms p(95)=107.73ms
    iterations............: 64005 3193.591716/s
    vus...................: 120   min=120       max=120
    vus_max...............: 120   min=120       max=120

    NETWORK
    data_received.........: 13 MB 646 kB/s
    data_sent.............: 12 MB 613 kB/s

    WEBSOCKET
    ws_connecting.........: avg=37.44ms min=3.05ms med=21.73ms max=336.42ms p(90)=85.95ms p(95)=107.62ms
    ws_orders_rtt_ms......: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0       
    ws_session_duration...: avg=37.46ms min=3.06ms med=21.75ms max=336.46ms p(90)=85.98ms p(95)=107.67ms
    ws_sessions...........: 64005 3193.591716/s




running (20.0s), 000/120 VUs, 64005 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
