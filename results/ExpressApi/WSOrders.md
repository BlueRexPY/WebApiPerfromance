# JS Node Express — WS Orders Benchmark

**Tested**: 2026-05-30 22:19:00 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8014/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,606.95 |
| Avg Latency | 2.550537ms |
| Max Latency | 84ms |
| Total Requests | 32,213 |
| Transfer/sec | N/A |
| Port | 8014 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.550537 | 4 | 84 |
| Iteration Duration | 74.58ms | 98.27ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 37.78MiB |
| Memory Limit | 1GiB |
| Memory % | 3.69% |
| CPU % | 0.01% |
| PIDs | 11 |

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


running (01.0s), 120/120 VUs, 1222 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2647 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4168 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5789 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7583 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9403 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 10962 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 12701 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 14444 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 15973 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 17587 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 19185 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 20747 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 22305 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 23802 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 25248 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 26669 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 28115 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 30109 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 32079 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 60440  3015.064092/s
    checks_succeeded...: 93.40% 56454 out of 60440
    checks_failed......: 6.59%  3986 out of 60440

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  87% — ✓ 28227 / ✗ 3986

    EXECUTION
    iteration_duration.............: avg=74.58ms  min=6.88ms med=74.49ms max=339ms    p(90)=93.91ms p(95)=98.27ms
    iterations.....................: 32213  1606.953335/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 7.1 MB 354 kB/s

    WEBSOCKET
    ws_connecting..................: avg=71.74ms  min=4.63ms med=71.46ms max=338.94ms p(90)=90.43ms p(95)=94.79ms
    ws_msgs_received...............: 28227  1408.110756/s
    ws_msgs_sent...................: 28227  1408.110756/s
    ws_orders_requests_sent........: 28227  1408.110756/s
    ws_orders_responses_received...: 28227  1408.110756/s
    ws_orders_rtt_ms...............: avg=2.550537 min=1      med=2       max=84       p(90)=4       p(95)=4      
    ws_session_duration............: avg=74.54ms  min=6.84ms med=74.46ms max=338.96ms p(90)=93.88ms p(95)=98.23ms
    ws_sessions....................: 32213  1606.953335/s




running (20.0s), 000/120 VUs, 32213 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
