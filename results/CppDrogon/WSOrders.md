# C++ Drogon — WS Orders Benchmark

**Tested**: 2026-05-31 17:31:31 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8017/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 898.81 |
| Avg Latency | 23.86612ms |
| Max Latency | 3617ms |
| Total Requests | 44,942 |
| Transfer/sec | N/A |
| Port | 8017 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 23.86612 | 77 | 3617 |
| Iteration Duration | 53.27ms | 101.85ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 85.3MiB |
| Memory Limit | 1GiB |
| Memory % | 8.33% |
| CPU % | 0.07% |
| PIDs | 65 |

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


running (01.0s), 120/120 VUs, 3158 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 6000 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8529 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10919 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13063 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 15604 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 18322 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 20763 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 23075 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 25655 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 28208 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 30382 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 32469 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 34948 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 37336 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 39847 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 41538 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.1s/20s

running (18.0s), 120/120 VUs, 43682 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 44875 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 44875 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s

running (21.0s), 106/120 VUs, 44889 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (22.0s), 055/120 VUs, 44940 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (23.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (24.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (25.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (26.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (27.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (28.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (29.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (30.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (31.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (32.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (33.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (34.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (35.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (36.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (37.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (38.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (39.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (40.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (41.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (42.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (43.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (44.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (45.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (46.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (47.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (48.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (49.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (50.0s), 053/120 VUs, 44942 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=77


  █ TOTAL RESULTS 

    checks_total.......: 89833   1796.600206/s
    checks_succeeded...: 100.00% 89833 out of 89833
    checks_failed......: 0.00%   0 out of 89833

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=53.27ms  min=1.68ms   med=35.27ms max=3.61s   p(90)=94.54ms p(95)=101.85ms
    iterations.....................: 44942  898.810086/s
    vus............................: 53     min=53       max=120
    vus_max........................: 120    min=120      max=120

    NETWORK
    data_received..................: 517 MB 10 MB/s
    data_sent......................: 10 MB  202 kB/s

    WEBSOCKET
    ws_connecting..................: avg=23.63ms  min=213.97µs med=5.63ms  max=256.5ms p(90)=70.79ms p(95)=73.76ms 
    ws_msgs_received...............: 44891  897.79012/s
    ws_msgs_sent...................: 44995  899.870051/s
    ws_orders_requests_sent........: 44995  899.870051/s
    ws_orders_responses_received...: 44891  897.79012/s
    ws_orders_rtt_ms...............: avg=23.86612 min=0        med=7       max=3617    p(90)=72      p(95)=77      
    ws_session_duration............: avg=53.04ms  min=1.64ms   med=35.01ms max=3.61s   p(90)=94.13ms p(95)=101.54ms
    ws_sessions....................: 44995  899.870051/s




running (50.0s), 000/120 VUs, 44942 complete and 53 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T19:30:39+02:00" level=warning msg="Error from API server" error="listen tcp 127.0.0.1:6565: bind: address already in use"
```
