# JS Node Nitro — WS Orders Benchmark

**Tested**: 2026-05-30 23:32:15 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8089/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,753.51 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 55,182 |
| Transfer/sec | N/A |
| Port | 8089 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 43.53ms | 123.14ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 16.18MiB |
| Memory Limit | 1GiB |
| Memory % | 1.58% |
| CPU % | 0.00% |
| PIDs | 7 |

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


running (01.0s), 120/120 VUs, 5037 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 12406 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 18086 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 22641 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 27458 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 29892 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 31737 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 33533 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 35166 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 36472 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 37725 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 39185 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 41049 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 43083 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 45088 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 47012 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 49007 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 51031 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 53067 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 55054 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 55182   2753.507298/s
    checks_succeeded...: 0.00%   0 out of 55182
    checks_failed......: 100.00% 55182 out of 55182

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 55182

    EXECUTION
    iteration_duration....: avg=43.53ms min=8.66ms med=28.36ms max=386.17ms p(90)=95.47ms p(95)=123.14ms
    iterations............: 55182 2753.507298/s
    vus...................: 120   min=120       max=120
    vus_max...............: 120   min=120       max=120

    NETWORK
    data_received.........: 14 MB 713 kB/s
    data_sent.............: 11 MB 529 kB/s

    WEBSOCKET
    ws_connecting.........: avg=43.45ms min=8.63ms med=28.3ms  max=386.04ms p(90)=95.39ms p(95)=123.08ms
    ws_orders_rtt_ms......: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0       
    ws_session_duration...: avg=43.47ms min=8.64ms med=28.31ms max=386.08ms p(90)=95.41ms p(95)=123.09ms
    ws_sessions...........: 55182 2753.507298/s




running (20.0s), 000/120 VUs, 55182 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
