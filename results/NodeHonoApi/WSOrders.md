# JS Node Hono — WS Orders Benchmark

**Tested**: 2026-05-30 22:36:06 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8039/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,494.77 |
| Avg Latency | 2.929763ms |
| Max Latency | 178ms |
| Total Requests | 29,956 |
| Transfer/sec | N/A |
| Port | 8039 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.929763 | 4 | 178 |
| Iteration Duration | 80.18ms | 104.46ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.67MiB |
| Memory Limit | 1GiB |
| Memory % | 3.48% |
| CPU % | 0.01% |
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


running (01.0s), 120/120 VUs, 896 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2354 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3825 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5331 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 6995 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 8644 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 10278 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 11956 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 13583 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 15084 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 16601 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 18009 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 19418 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 20860 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 22269 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 23650 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 25054 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 26520 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 27872 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 29832 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 58061  2897.174254/s
    checks_succeeded...: 96.81% 56210 out of 58061
    checks_failed......: 3.18%  1851 out of 58061

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  93% — ✓ 28105 / ✗ 1851

    EXECUTION
    iteration_duration.............: avg=80.18ms  min=12.29ms med=78.69ms max=270.46ms p(90)=97.32ms p(95)=104.46ms
    iterations.....................: 29956  1494.768467/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 315 MB 16 MB/s
    data_sent......................: 6.7 MB 332 kB/s

    WEBSOCKET
    ws_connecting..................: avg=76.78ms  min=11.9ms  med=75.46ms max=266.21ms p(90)=93.57ms p(95)=100.05ms
    ws_msgs_received...............: 28105  1402.405787/s
    ws_msgs_sent...................: 28105  1402.405787/s
    ws_orders_requests_sent........: 28105  1402.405787/s
    ws_orders_responses_received...: 28105  1402.405787/s
    ws_orders_rtt_ms...............: avg=2.929763 min=1       med=2       max=178      p(90)=4       p(95)=4       
    ws_session_duration............: avg=80.15ms  min=12.24ms med=78.66ms max=269.82ms p(90)=97.29ms p(95)=104.41ms
    ws_sessions....................: 29956  1494.768467/s




running (20.0s), 000/120 VUs, 29956 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
