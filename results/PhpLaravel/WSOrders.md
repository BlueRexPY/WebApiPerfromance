# PHP Laravel — WS Orders Benchmark

**Tested**: 2026-05-31 17:14:14 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8037/ws/orders`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,941.57\* |
| Avg Latency | 20.308431ms |
| Max Latency | 138ms |
| Total Requests | 38,956 |
| Transfer/sec | N/A |
| Port | 8037 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 20.308431 | 77 | 138 |
| Iteration Duration | 61.68ms | 114.79ms | — |
| Checks Passed | 87.85% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 65.38MiB |
| Memory Limit | 1GiB |
| Memory % | 6.38% |
| CPU % | 209.83% |
| PIDs | 64 |

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


running (01.0s), 120/120 VUs, 2401 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4791 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7252 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9702 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 12008 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14495 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16473 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 18291 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20184 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22080 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 23606 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 25281 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 27151 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 28960 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30802 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 32382 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 33970 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 35592 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 37189 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 38810 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=77


  █ TOTAL RESULTS 

    checks_total.......: 69475  3462.638108/s
    checks_succeeded...: 87.85% 61038 out of 69475
    checks_failed......: 12.14% 8437 out of 69475

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  78% — ✓ 30519 / ✗ 8437

    EXECUTION
    iteration_duration.............: avg=61.68ms   min=1.96ms   med=74.34ms max=369.88ms p(90)=102.84ms p(95)=114.79ms
    iterations.....................: 38956  1941.569344/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 351 MB 18 MB/s
    data_sent......................: 8.5 MB 422 kB/s

    WEBSOCKET
    ws_connecting..................: avg=42.38ms   min=275.54µs med=27.25ms max=369.72ms p(90)=85.35ms  p(95)=103.53ms
    ws_msgs_received...............: 30519  1521.068765/s
    ws_msgs_sent...................: 30519  1521.068765/s
    ws_orders_requests_sent........: 30519  1521.068765/s
    ws_orders_responses_received...: 30519  1521.068765/s
    ws_orders_rtt_ms...............: avg=20.308431 min=0        med=8       max=138      p(90)=72       p(95)=77      
    ws_session_duration............: avg=61.52ms   min=1.87ms   med=74.2ms  max=369.76ms p(90)=102.66ms p(95)=114.52ms
    ws_sessions....................: 38956  1941.569344/s




running (20.1s), 000/120 VUs, 38956 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
