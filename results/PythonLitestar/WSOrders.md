# Python Litestar — WS Orders Benchmark

**Tested**: 2026-05-31 16:11:42 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8000/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,378.63 |
| Avg Latency | 77.366296ms |
| Max Latency | 370ms |
| Total Requests | 27,617 |
| Transfer/sec | N/A |
| Port | 8000 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 77.366296 | 269 | 370 |
| Iteration Duration | 86.96ms | 281.52ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 201.1MiB |
| Memory Limit | 1GiB |
| Memory % | 19.63% |
| CPU % | 0.00% |
| PIDs | 37 |

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


running (01.0s), 120/120 VUs, 1593 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2796 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4189 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5586 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7097 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 8649 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 9899 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 11180 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 12355 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 14073 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 15410 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 16698 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 17965 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 19278 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 20805 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 21982 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 23274 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 24614 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 25873 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 27497 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=269


  █ TOTAL RESULTS 

    checks_total.......: 55234   2757.25869/s
    checks_succeeded...: 100.00% 55234 out of 55234
    checks_failed......: 0.00%   0 out of 55234

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=86.96ms   min=1.34ms   med=16.63ms max=382.23ms p(90)=240.77ms p(95)=281.52ms
    iterations.....................: 27617  1378.629345/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 344 MB 17 MB/s
    data_sent......................: 6.2 MB 309 kB/s

    WEBSOCKET
    ws_connecting..................: avg=8.55ms    min=197.45µs med=3.06ms  max=92.42ms  p(90)=21.04ms  p(95)=56.06ms 
    ws_msgs_received...............: 27617  1378.629345/s
    ws_msgs_sent...................: 27617  1378.629345/s
    ws_orders_requests_sent........: 27617  1378.629345/s
    ws_orders_responses_received...: 27617  1378.629345/s
    ws_orders_rtt_ms...............: avg=77.366296 min=0        med=6       max=370      p(90)=220      p(95)=269     
    ws_session_duration............: avg=86.91ms   min=1.32ms   med=16.56ms max=382.19ms p(90)=240.74ms p(95)=281.48ms
    ws_sessions....................: 27617  1378.629345/s




running (20.0s), 000/120 VUs, 27617 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
