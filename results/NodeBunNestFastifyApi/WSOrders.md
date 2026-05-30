# JS Bun NestJS Fastify — WS Orders Benchmark

**Tested**: 2026-05-30 23:07:59 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8054/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,032.36 |
| Avg Latency | 37.720789ms |
| Max Latency | 130ms |
| Total Requests | 40,749 |
| Transfer/sec | N/A |
| Port | 8054 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 37.720789 | 59 | 130 |
| Iteration Duration | 58.95ms | 106.02ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 63.37MiB |
| Memory Limit | 1GiB |
| Memory % | 6.19% |
| CPU % | 0.31% |
| PIDs | 22 |

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


running (01.0s), 120/120 VUs, 1809 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4276 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6780 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9141 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11469 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13805 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15167 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17080 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 19129 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 21180 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 23149 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 24989 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 26996 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 28590 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30726 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 32800 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 34861 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 36974 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 38998 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 40616 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=59


  █ TOTAL RESULTS 

    checks_total.......: 68975  3440.132352/s
    checks_succeeded...: 81.84% 56452 out of 68975
    checks_failed......: 18.15% 12523 out of 68975

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  69% — ✓ 28226 / ✗ 12523

    EXECUTION
    iteration_duration.............: avg=58.95ms   min=10.93ms med=54.25ms max=299.9ms  p(90)=86.96ms p(95)=106.02ms
    iterations.....................: 40749  2032.358872/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 8.7 MB 435 kB/s

    WEBSOCKET
    ws_connecting..................: avg=32.23ms   min=3.05ms  med=21.02ms max=299.86ms p(90)=70.4ms  p(95)=93.21ms 
    ws_msgs_received...............: 28226  1407.77348/s
    ws_msgs_sent...................: 28226  1407.77348/s
    ws_orders_requests_sent........: 28226  1407.77348/s
    ws_orders_responses_received...: 28226  1407.77348/s
    ws_orders_rtt_ms...............: avg=37.720789 min=17      med=35      max=130      p(90)=51      p(95)=59      
    ws_session_duration............: avg=58.91ms   min=10.61ms med=54.21ms max=299.86ms p(90)=86.91ms p(95)=105.94ms
    ws_sessions....................: 40749  2032.358872/s




running (20.1s), 000/120 VUs, 40749 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
