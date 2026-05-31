# PHP Swoole — WS Orders Benchmark

**Tested**: 2026-05-31 18:11:40 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8028/ws/orders`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,976.27\* |
| Avg Latency | 7ms |
| Max Latency | 16ms |
| Total Requests | 39,608 |
| Transfer/sec | N/A |
| Port | 8028 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 7 | 14.7 | 16 |
| Iteration Duration | 60.63ms | 130.26ms | — |
| Checks Passed | 0.01% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 41.64MiB |
| Memory Limit | 1GiB |
| Memory % | 4.07% |
| CPU % | 0.07% |
| PIDs | 33 |

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


running (01.0s), 120/120 VUs, 1927 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3931 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5957 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 7945 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 9868 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 11779 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 13762 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 15755 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 17734 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 19690 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 21659 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 23646 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 25620 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 27639 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 29617 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 31603 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 33547 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 35543 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 37537 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 39477 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=14.7


  █ TOTAL RESULTS 

    checks_total.......: 39611  1976.417205/s
    checks_succeeded...: 0.01%  6 out of 39611
    checks_failed......: 99.98% 39605 out of 39611

    ✗ ws connected (101)
      ↳  0% — ✓ 3 / ✗ 39605
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=60.63ms min=10.92ms med=54.01ms max=353.36ms p(90)=110.08ms p(95)=130.26ms
    iterations.....................: 39608  1976.267518/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 35 kB  1.7 kB/s
    data_sent......................: 7.6 MB 379 kB/s

    WEBSOCKET
    ws_connecting..................: avg=60.53ms min=3.02ms  med=53.91ms max=353.32ms p(90)=109.95ms p(95)=130.13ms
    ws_msgs_received...............: 3      0.149687/s
    ws_msgs_sent...................: 3      0.149687/s
    ws_orders_requests_sent........: 3      0.149687/s
    ws_orders_responses_received...: 3      0.149687/s
    ws_orders_rtt_ms...............: avg=7       min=2       med=3       max=16       p(90)=13.4     p(95)=14.7    
    ws_session_duration............: avg=60.56ms min=10.87ms med=53.93ms max=353.32ms p(90)=109.98ms p(95)=130.16ms
    ws_sessions....................: 39608  1976.267518/s




running (20.0s), 000/120 VUs, 39608 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
