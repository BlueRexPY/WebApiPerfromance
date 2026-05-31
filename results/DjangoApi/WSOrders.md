# Python Django — WS Orders Benchmark

**Tested**: 2026-05-31 16:14:06 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8016/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,492.65 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 29,947 |
| Transfer/sec | N/A |
| Port | 8016 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 80.25ms | 201.32ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 471.4MiB |
| Memory Limit | 1GiB |
| Memory % | 46.03% |
| CPU % | 0.13% |
| PIDs | 133 |

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


running (01.0s), 120/120 VUs, 207 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 1397 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3181 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 4381 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 5704 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 7007 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 8614 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 10655 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 13179 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 13836 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 13893 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 14211 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 15938 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 17985 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 20033 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 22185 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 23991 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 26160 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 28021 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 29817 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 29947   1492.648174/s
    checks_succeeded...: 0.00%   0 out of 29947
    checks_failed......: 100.00% 29947 out of 29947

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 29947

    EXECUTION
    iteration_duration....: avg=80.25ms min=531.13µs med=42.08ms max=1.69s p(90)=120.27ms p(95)=201.32ms
    iterations............: 29947  1492.648174/s
    vus...................: 120    min=120       max=120
    vus_max...............: 120    min=120       max=120

    NETWORK
    data_received.........: 7.8 MB 390 kB/s
    data_sent.............: 5.7 MB 287 kB/s

    WEBSOCKET
    ws_connecting.........: avg=80.16ms min=508.01µs med=41.99ms max=1.69s p(90)=120.15ms p(95)=201.24ms
    ws_orders_rtt_ms......: avg=0       min=0        med=0       max=0     p(90)=0        p(95)=0       
    ws_session_duration...: avg=80.18ms min=513.03µs med=42ms    max=1.69s p(90)=120.21ms p(95)=201.25ms
    ws_sessions...........: 29947  1492.648174/s




running (20.1s), 000/120 VUs, 29947 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
