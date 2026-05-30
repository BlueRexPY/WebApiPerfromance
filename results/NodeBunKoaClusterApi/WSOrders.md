# JS Bun Koa Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:16:32 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8058/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,335.13 |
| Avg Latency | 25.821093ms |
| Max Latency | 288ms |
| Total Requests | 46,794 |
| Transfer/sec | N/A |
| Port | 8058 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 25.821093 | 55 | 288 |
| Iteration Duration | 51.33ms | 110.16ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 121.1MiB |
| Memory Limit | 1GiB |
| Memory % | 11.83% |
| CPU % | 0.57% |
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


running (01.0s), 120/120 VUs, 2099 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5040 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7560 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10284 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13468 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 16325 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 18629 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21138 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 23953 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 26676 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 29117 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 31049 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 32951 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 34932 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 36850 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 38677 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 40627 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 42476 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 44613 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 46659 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=55


  █ TOTAL RESULTS 

    checks_total.......: 75021  3743.730731/s
    checks_succeeded...: 75.25% 56454 out of 75021
    checks_failed......: 24.74% 18567 out of 75021

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  60% — ✓ 28227 / ✗ 18567

    EXECUTION
    iteration_duration.............: avg=51.33ms   min=2.48ms   med=45.5ms  max=363.53ms p(90)=88.85ms p(95)=110.16ms
    iterations.....................: 46794  2335.13464/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 9.9 MB 493 kB/s

    WEBSOCKET
    ws_connecting..................: avg=35.17ms   min=146.48µs med=22.9ms  max=363.49ms p(90)=81.68ms p(95)=106.38ms
    ws_msgs_received...............: 28227  1408.596091/s
    ws_msgs_sent...................: 28227  1408.596091/s
    ws_orders_requests_sent........: 28227  1408.596091/s
    ws_orders_responses_received...: 28227  1408.596091/s
    ws_orders_rtt_ms...............: avg=25.821093 min=1        med=22      max=288      p(90)=46      p(95)=55      
    ws_session_duration............: avg=51.28ms   min=2.44ms   med=45.45ms max=363.5ms  p(90)=88.8ms  p(95)=110.11ms
    ws_sessions....................: 46794  2335.13464/s




running (20.0s), 000/120 VUs, 46794 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
