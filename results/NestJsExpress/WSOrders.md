# JS Node NestJS Express — WS Orders Benchmark

**Tested**: 2026-05-30 22:29:36 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8029/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,561.86 |
| Avg Latency | 2.080351ms |
| Max Latency | 90ms |
| Total Requests | 31,302 |
| Transfer/sec | N/A |
| Port | 8029 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.080351 | 3 | 90 |
| Iteration Duration | 76.75ms | 114.85ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 44.14MiB |
| Memory Limit | 1GiB |
| Memory % | 4.31% |
| CPU % | 0.00% |
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


running (01.0s), 120/120 VUs, 949 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2154 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3706 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5340 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7168 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 8798 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 10418 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 12039 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 13791 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 15438 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 16868 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 18344 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 19979 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 21534 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 23143 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 24686 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 26219 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 27421 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 29070 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 31164 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 59528  2970.235666/s
    checks_succeeded...: 94.83% 56452 out of 59528
    checks_failed......: 5.16%  3076 out of 59528

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  90% — ✓ 28226 / ✗ 3076

    EXECUTION
    iteration_duration.............: avg=76.75ms  min=8.02ms med=73.64ms max=196.57ms p(90)=103.64ms p(95)=114.85ms
    iterations.....................: 31302  1561.858568/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 6.9 MB 345 kB/s

    WEBSOCKET
    ws_connecting..................: avg=74.28ms  min=7.95ms med=71.22ms max=196.51ms p(90)=100.32ms p(95)=111.33ms
    ws_msgs_received...............: 28226  1408.377098/s
    ws_msgs_sent...................: 28226  1408.377098/s
    ws_orders_requests_sent........: 28226  1408.377098/s
    ws_orders_responses_received...: 28226  1408.377098/s
    ws_orders_rtt_ms...............: avg=2.080351 min=0      med=2       max=90       p(90)=3        p(95)=3       
    ws_session_duration............: avg=76.72ms  min=7.99ms med=73.61ms max=196.52ms p(90)=103.61ms p(95)=114.79ms
    ws_sessions....................: 31302  1561.858568/s




running (20.0s), 000/120 VUs, 31302 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
