# Elixir Plug — WS Orders Benchmark

**Tested**: 2026-05-31 18:28:02 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8034/ws/orders`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,611.67\* |
| Avg Latency | 18.5ms |
| Max Latency | 24ms |
| Total Requests | 32,308 |
| Transfer/sec | N/A |
| Port | 8034 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 18.5 | 23.45 | 24 |
| Iteration Duration | 74.34ms | 162.85ms | — |
| Checks Passed | 0.01% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 148.3MiB |
| Memory Limit | 1GiB |
| Memory % | 14.49% |
| CPU % | 0.54% |
| PIDs | 85 |

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


running (01.0s), 120/120 VUs, 1559 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3147 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4715 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 6319 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7990 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9640 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 11237 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 12797 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 14280 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 15785 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 17196 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 18662 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 20281 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 21906 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 23478 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 25199 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 26893 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 28631 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 30385 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 32160 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=23.45


  █ TOTAL RESULTS 

    checks_total.......: 32310  1611.771379/s
    checks_succeeded...: 0.01%  4 out of 32310
    checks_failed......: 99.98% 32306 out of 32310

    ✗ ws connected (101)
      ↳  0% — ✓ 2 / ✗ 32306
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=74.34ms min=11.23ms med=65.52ms max=379.44ms p(90)=137.94ms p(95)=162.85ms
    iterations.....................: 32308  1611.67161/s
    vus............................: 120    min=120      max=120
    vus_max........................: 120    min=120      max=120

    NETWORK
    data_received..................: 23 kB  1.1 kB/s
    data_sent......................: 6.2 MB 309 kB/s

    WEBSOCKET
    ws_connecting..................: avg=74.21ms min=10.35ms med=65.39ms max=379.4ms  p(90)=137.77ms p(95)=162.75ms
    ws_msgs_received...............: 2      0.099769/s
    ws_msgs_sent...................: 2      0.099769/s
    ws_orders_requests_sent........: 2      0.099769/s
    ws_orders_responses_received...: 2      0.099769/s
    ws_orders_rtt_ms...............: avg=18.5    min=13      med=18.5    max=24       p(90)=22.9     p(95)=23.45   
    ws_session_duration............: avg=74.25ms min=11.17ms med=65.42ms max=379.4ms  p(90)=137.8ms  p(95)=162.76ms
    ws_sessions....................: 32308  1611.67161/s




running (20.0s), 000/120 VUs, 32308 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
