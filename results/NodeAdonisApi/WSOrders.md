# JS Node AdonisJS — WS Orders Benchmark

**Tested**: 2026-05-30 23:29:58 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8088/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,945.31 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 59,024 |
| Transfer/sec | N/A |
| Port | 8088 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 40.69ms | 111.92ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 49.56MiB |
| Memory Limit | 1GiB |
| Memory % | 4.84% |
| CPU % | 0.02% |
| PIDs | 12 |

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


running (01.0s), 120/120 VUs, 7941 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 17196 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 20997 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 26419 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 29616 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 31585 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 33548 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 35570 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 37561 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 39482 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 41512 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 43537 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 45515 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 47602 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 49653 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 51692 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 53721 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 55355 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 57014 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 58883 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 59024   2945.311792/s
    checks_succeeded...: 0.00%   0 out of 59024
    checks_failed......: 100.00% 59024 out of 59024

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 59024

    EXECUTION
    iteration_duration....: avg=40.69ms min=2.03ms med=27.07ms max=326.96ms p(90)=89.23ms p(95)=111.92ms
    iterations............: 59024  2945.311792/s
    vus...................: 120    min=120       max=120
    vus_max...............: 120    min=120       max=120

    NETWORK
    data_received.........: 5.4 MB 270 kB/s
    data_sent.............: 11 MB  566 kB/s

    WEBSOCKET
    ws_connecting.........: avg=40.61ms min=1.89ms med=26.97ms max=326.91ms p(90)=89.15ms p(95)=111.88ms
    ws_orders_rtt_ms......: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0       
    ws_session_duration...: avg=40.63ms min=1.94ms med=27.01ms max=326.92ms p(90)=89.18ms p(95)=111.88ms
    ws_sessions...........: 59024  2945.311792/s




running (20.0s), 000/120 VUs, 59024 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
