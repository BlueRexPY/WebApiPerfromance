# C# .NET API — WS Orders Benchmark

**Tested**: 2026-05-30 19:10:43 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8001/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,740.04 |
| Avg Latency | 18.551785ms |
| Max Latency | 212ms |
| Total Requests | 54,895 |
| Transfer/sec | N/A |
| Port | 8001 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 18.551785 | 58 | 212 |
| Iteration Duration | 43.74ms | 101.99ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 83.18MiB |
| Memory Limit | 1GiB |
| Memory % | 8.12% |
| CPU % | 0.02% |
| PIDs | 25 |

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


running (01.0s), 120/120 VUs, 2074 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5129 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7996 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11751 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 14586 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 17137 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 19928 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 24781 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 29190 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 31490 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 33829 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 36182 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 38504 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 40854 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 43194 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 45382 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 47718 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 50053 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 52420 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 54765 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=58


  █ TOTAL RESULTS 

    checks_total.......: 83272  4156.46087/s
    checks_succeeded...: 68.15% 56754 out of 83272
    checks_failed......: 31.84% 26518 out of 83272

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  51% — ✓ 28377 / ✗ 26518

    EXECUTION
    iteration_duration.............: avg=43.74ms   min=3.43ms   med=33.65ms max=268.19ms p(90)=86.3ms  p(95)=101.99ms
    iterations.....................: 54895  2740.043706/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 11 MB  571 kB/s

    WEBSOCKET
    ws_connecting..................: avg=32.78ms   min=463.19µs med=18.87ms max=268.12ms p(90)=76.53ms p(95)=94.02ms 
    ws_msgs_received...............: 28377  1416.417164/s
    ws_msgs_sent...................: 28377  1416.417164/s
    ws_orders_requests_sent........: 28377  1416.417164/s
    ws_orders_responses_received...: 28377  1416.417164/s
    ws_orders_rtt_ms...............: avg=18.551785 min=0        med=14      max=212      p(90)=35      p(95)=58      
    ws_session_duration............: avg=43.65ms   min=3.41ms   med=33.54ms max=268.14ms p(90)=86.22ms p(95)=101.87ms
    ws_sessions....................: 54895  2740.043706/s




running (20.0s), 000/120 VUs, 54895 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
