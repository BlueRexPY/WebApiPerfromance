# JS Bun Hono Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:14:20 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8057/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,453.70 |
| Avg Latency | 23.677489ms |
| Max Latency | 313ms |
| Total Requests | 49,185 |
| Transfer/sec | N/A |
| Port | 8057 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 23.677489 | 48 | 313 |
| Iteration Duration | 48.83ms | 105.65ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 104.1MiB |
| Memory Limit | 1GiB |
| Memory % | 10.16% |
| CPU % | 0.88% |
| PIDs | 60 |

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


running (01.0s), 120/120 VUs, 1803 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3864 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5947 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8006 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 10032 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 12094 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 14100 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17325 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20688 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 23418 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 26155 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 29366 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 31905 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 34688 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 36926 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 39844 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 42765 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 44887 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 46965 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 49049 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=48


  █ TOTAL RESULTS 

    checks_total.......: 77429  3862.715355/s
    checks_succeeded...: 72.95% 56488 out of 77429
    checks_failed......: 27.04% 20941 out of 77429

    ✗ ws connected (101)
      ↳  57% — ✓ 28244 / ✗ 20941
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=48.83ms   min=1.6ms    med=41.89ms max=416.38ms p(90)=85.43ms p(95)=105.65ms
    iterations.....................: 49185  2453.701517/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 10 MB  516 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.65ms   min=154.27µs med=22.36ms max=289.67ms p(90)=80.6ms  p(95)=102.17ms
    ws_msgs_received...............: 28244  1409.013838/s
    ws_msgs_sent...................: 28244  1409.013838/s
    ws_orders_requests_sent........: 28244  1409.013838/s
    ws_orders_responses_received...: 28244  1409.013838/s
    ws_orders_rtt_ms...............: avg=23.677489 min=0        med=21      max=313      p(90)=40      p(95)=48      
    ws_session_duration............: avg=48.78ms   min=1.58ms   med=41.84ms max=416.34ms p(90)=85.35ms p(95)=105.58ms
    ws_sessions....................: 49185  2453.701517/s




running (20.0s), 000/120 VUs, 49185 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
