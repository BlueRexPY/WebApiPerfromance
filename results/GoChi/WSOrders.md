# Go Chi — WS Orders Benchmark

**Tested**: 2026-05-31 16:17:42 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8023/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,260.79 |
| Avg Latency | 16.60967ms |
| Max Latency | 678ms |
| Total Requests | 45,312 |
| Transfer/sec | N/A |
| Port | 8023 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 16.60967 | 68 | 678 |
| Iteration Duration | 53ms | 116.21ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 40.44MiB |
| Memory Limit | 1GiB |
| Memory % | 3.95% |
| CPU % | 0.00% |
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


running (01.0s), 120/120 VUs, 1453 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3778 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5605 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8654 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11783 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13615 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15761 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 18607 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 21030 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22890 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 24672 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26804 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 28987 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 31391 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 34987 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 36957 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 38741 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 40781 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 42947 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 45178 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=68


  █ TOTAL RESULTS 

    checks_total.......: 68249  3405.209238/s
    checks_succeeded...: 67.21% 45874 out of 68249
    checks_failed......: 32.78% 22375 out of 68249

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  50% — ✓ 22937 / ✗ 22375

    EXECUTION
    iteration_duration.............: avg=53ms     min=1.14ms   med=45.05ms max=766.47ms p(90)=100.32ms p(95)=116.21ms
    iterations.....................: 45312  2260.7927/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 264 MB 13 MB/s
    data_sent......................: 9.4 MB 471 kB/s

    WEBSOCKET
    ws_connecting..................: avg=41.67ms  min=251.71µs med=33.92ms max=383.88ms p(90)=85.47ms  p(95)=109.32ms
    ws_msgs_received...............: 22937  1144.416538/s
    ws_msgs_sent...................: 22937  1144.416538/s
    ws_orders_requests_sent........: 22937  1144.416538/s
    ws_orders_responses_received...: 22937  1144.416538/s
    ws_orders_rtt_ms...............: avg=16.60967 min=0        med=6       max=678      p(90)=56.4     p(95)=68      
    ws_session_duration............: avg=52.84ms  min=1.11ms   med=44.97ms max=766.44ms p(90)=100.11ms p(95)=115.98ms
    ws_sessions....................: 45312  2260.7927/s




running (20.0s), 000/120 VUs, 45312 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
