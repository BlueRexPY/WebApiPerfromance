# JS Node Fastify Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 22:48:08 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8042/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,798.21 |
| Avg Latency | 4.512097ms |
| Max Latency | 202ms |
| Total Requests | 36,041 |
| Transfer/sec | N/A |
| Port | 8042 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 4.512097 | 10 | 202 |
| Iteration Duration | 66.65ms | 111.23ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 102.7MiB |
| Memory Limit | 1GiB |
| Memory % | 10.03% |
| CPU % | 0.01% |
| PIDs | 29 |

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


running (01.0s), 120/120 VUs, 1619 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2873 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4480 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5948 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7711 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9237 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 10705 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 12540 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 14253 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 16273 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 18427 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 20205 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 22284 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 24314 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 26220 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 28118 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 30069 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 31877 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 33828 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 35905 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=10


  █ TOTAL RESULTS 

    checks_total.......: 64270  3206.647695/s
    checks_succeeded...: 87.84% 56458 out of 64270
    checks_failed......: 12.15% 7812 out of 64270

    ✗ ws connected (101)
      ↳  78% — ✓ 28229 / ✗ 7812
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=66.65ms  min=8.03ms med=64.63ms max=343.69ms p(90)=95.17ms p(95)=111.23ms
    iterations.....................: 36041  1798.2074/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 7.8 MB 390 kB/s

    WEBSOCKET
    ws_connecting..................: avg=62.47ms  min=7.83ms med=60.07ms max=280.45ms p(90)=90.57ms p(95)=105.94ms
    ws_msgs_received...............: 28229  1408.440295/s
    ws_msgs_sent...................: 28229  1408.440295/s
    ws_orders_requests_sent........: 28229  1408.440295/s
    ws_orders_responses_received...: 28229  1408.440295/s
    ws_orders_rtt_ms...............: avg=4.512097 min=0      med=3       max=202      p(90)=6       p(95)=10      
    ws_session_duration............: avg=66.6ms   min=7.98ms med=64.59ms max=343.64ms p(90)=95.13ms p(95)=111.17ms
    ws_sessions....................: 36041  1798.2074/s




running (20.0s), 000/120 VUs, 36041 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
