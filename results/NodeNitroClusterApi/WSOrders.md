# JS Node Nitro Cluster — WS Orders Benchmark

**Tested**: 2026-05-31 16:04:42 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8093/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,034.30 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 60,806 |
| Transfer/sec | N/A |
| Port | 8093 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 39.49ms | 97.05ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 109.9MiB |
| Memory Limit | 1GiB |
| Memory % | 10.73% |
| CPU % | 0.00% |
| PIDs | 21 |

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


running (01.0s), 120/120 VUs, 3277 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 7488 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 13289 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 18423 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 24107 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 28326 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30589 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 32922 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 35259 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 37413 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 39728 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 42070 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 44352 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 46625 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 48920 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 51272 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 53622 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 55968 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 58277 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 60613 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 60806   3034.298934/s
    checks_succeeded...: 0.00%   0 out of 60806
    checks_failed......: 100.00% 60806 out of 60806

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 60806

    EXECUTION
    iteration_duration....: avg=39.49ms min=7.48ms med=29.97ms max=292.44ms p(90)=80.53ms p(95)=97.05ms
    iterations............: 60806 3034.298934/s
    vus...................: 120   min=120       max=120
    vus_max...............: 120   min=120       max=120

    NETWORK
    data_received.........: 14 MB 713 kB/s
    data_sent.............: 12 MB 583 kB/s

    WEBSOCKET
    ws_connecting.........: avg=39.43ms min=7.44ms med=29.89ms max=292.38ms p(90)=80.45ms p(95)=96.97ms
    ws_orders_rtt_ms......: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0      
    ws_session_duration...: avg=39.45ms min=7.45ms med=29.91ms max=292.4ms  p(90)=80.48ms p(95)=96.98ms
    ws_sessions...........: 60806 3034.298934/s




running (20.0s), 000/120 VUs, 60806 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
