# JS Node Nitro Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:53:41 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8093/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,452.57 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 49,172 |
| Transfer/sec | N/A |
| Port | 8093 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 48.84ms | 135.51ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 57.3MiB |
| Memory Limit | 1GiB |
| Memory % | 5.60% |
| CPU % | 3.79% |
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


running (01.0s), 120/120 VUs, 3295 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 7089 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 12006 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 16594 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 20730 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (05.0s), 120/120 VUs, 20904 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (05.6s), 120/120 VUs, 23198 complete and 0 interrupted iterations
default   [  28% ] 120 VUs  05.6s/20s

running (06.0s), 120/120 VUs, 24698 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 28413 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 30091 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 31881 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 33735 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 35416 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 36935 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 38557 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 40095 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 41761 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 43281 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 44958 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 46299 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 47650 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 49041 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 49172   2452.570076/s
    checks_succeeded...: 0.00%   0 out of 49172
    checks_failed......: 100.00% 49172 out of 49172

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 49172

    EXECUTION
    iteration_duration....: avg=48.84ms min=8.4ms  med=33.78ms max=461.49ms p(90)=104.75ms p(95)=135.51ms
    iterations............: 49172  2452.570076/s
    vus...................: 120    min=120       max=120
    vus_max...............: 120    min=120       max=120

    NETWORK
    data_received.........: 14 MB  712 kB/s
    data_sent.............: 9.4 MB 471 kB/s

    WEBSOCKET
    ws_connecting.........: avg=48.76ms min=8.38ms med=33.69ms max=461.44ms p(90)=104.64ms p(95)=135.38ms
    ws_orders_rtt_ms......: avg=0       min=0      med=0       max=0        p(90)=0        p(95)=0       
    ws_session_duration...: avg=48.78ms min=8.38ms med=33.71ms max=461.45ms p(90)=104.69ms p(95)=135.41ms
    ws_sessions...........: 49172  2452.570076/s




running (20.0s), 000/120 VUs, 49172 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
