# F# .NET API — WS Orders Benchmark

**Tested**: 2026-05-30 20:51:39 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8019/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,577.43 |
| Avg Latency | 18.490002ms |
| Max Latency | 194ms |
| Total Requests | 51,653 |
| Transfer/sec | N/A |
| Port | 8019 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 18.490002 | 55 | 194 |
| Iteration Duration | 46.49ms | 106.14ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 86.99MiB |
| Memory Limit | 1GiB |
| Memory % | 8.50% |
| CPU % | 0.11% |
| PIDs | 26 |

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


running (01.0s), 120/120 VUs, 2081 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5233 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8407 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11874 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 14346 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 16874 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 19052 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 22971 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 27634 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 30178 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 32254 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 34429 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 36609 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 38795 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 40991 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 43126 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 45258 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 47411 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 49467 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 51521 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=55


  █ TOTAL RESULTS 

    checks_total.......: 80110  3997.403849/s
    checks_succeeded...: 71.04% 56914 out of 80110
    checks_failed......: 28.95% 23196 out of 80110

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  55% — ✓ 28457 / ✗ 23196

    EXECUTION
    iteration_duration.............: avg=46.49ms   min=3.11ms   med=36.17ms max=309.58ms p(90)=90.33ms p(95)=106.14ms
    iterations.....................: 51653  2577.429796/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 11 MB  540 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.72ms   min=325.26µs med=20.32ms max=309.5ms  p(90)=80.2ms  p(95)=100.85ms
    ws_msgs_received...............: 28457  1419.974052/s
    ws_msgs_sent...................: 28457  1419.974052/s
    ws_orders_requests_sent........: 28457  1419.974052/s
    ws_orders_responses_received...: 28457  1419.974052/s
    ws_orders_rtt_ms...............: avg=18.490002 min=0        med=14      max=194      p(90)=34      p(95)=55      
    ws_session_duration............: avg=46.39ms   min=3.07ms   med=36.07ms max=309.51ms p(90)=90.23ms p(95)=106.02ms
    ws_sessions....................: 51653  2577.429796/s




running (20.0s), 000/120 VUs, 51653 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
