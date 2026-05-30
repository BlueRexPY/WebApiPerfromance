# JS Node Bun Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 21:23:27 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,049.00 |
| Avg Latency | 4.663735ms |
| Max Latency | 39ms |
| Total Requests | 61,180 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 4.663735 | 11 | 39 |
| Iteration Duration | 39.28ms | 110.39ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 53.44MiB |
| Memory Limit | 1GiB |
| Memory % | 5.22% |
| CPU % | 0.39% |
| PIDs | 48 |

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


running (01.0s), 120/120 VUs, 7850 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 15581 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 21303 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 27229 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 30269 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 32417 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 34250 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 36131 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 37712 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 39699 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 41903 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 44128 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 46303 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 48450 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 50343 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 52559 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 54820 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 57076 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 59229 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 61043 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=11


  █ TOTAL RESULTS 

    checks_total.......: 89836  4477.109468/s
    checks_succeeded...: 63.79% 57312 out of 89836
    checks_failed......: 36.20% 32524 out of 89836

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  46% — ✓ 28656 / ✗ 32524

    EXECUTION
    iteration_duration.............: avg=39.28ms  min=997.48µs med=25.1ms  max=331.32ms p(90)=87.67ms p(95)=110.39ms
    iterations.....................: 61180  3048.995472/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 322 MB 16 MB/s
    data_sent......................: 13 MB  631 kB/s

    WEBSOCKET
    ws_connecting..................: avg=35.93ms  min=182.99µs med=19.49ms max=331.24ms p(90)=87.52ms p(95)=110.3ms 
    ws_msgs_received...............: 28656  1428.113996/s
    ws_msgs_sent...................: 28656  1428.113996/s
    ws_orders_requests_sent........: 28656  1428.113996/s
    ws_orders_responses_received...: 28656  1428.113996/s
    ws_orders_rtt_ms...............: avg=4.663735 min=0        med=4       max=39       p(90)=9       p(95)=11      
    ws_session_duration............: avg=39.2ms   min=975.65µs med=24.98ms max=331.25ms p(90)=87.58ms p(95)=110.32ms
    ws_sessions....................: 61180  3048.995472/s




running (20.1s), 000/120 VUs, 61180 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
