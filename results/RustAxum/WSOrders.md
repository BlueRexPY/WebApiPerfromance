# Rust Axum — WS Orders Benchmark

**Tested**: 2026-05-30 20:45:09 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8022/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,949.83 |
| Avg Latency | 9.369969ms |
| Max Latency | 157ms |
| Total Requests | 59,113 |
| Transfer/sec | N/A |
| Port | 8022 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 9.369969 | 20 | 157 |
| Iteration Duration | 40.62ms | 109.83ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 9.691MiB |
| Memory Limit | 1GiB |
| Memory % | 0.95% |
| CPU % | 0.00% |
| PIDs | 3 |

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


running (01.0s), 120/120 VUs, 3792 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 10267 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 16928 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 22506 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 28017 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 30507 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 32571 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 34590 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 36598 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 38242 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 40316 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 42351 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 44406 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 46514 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 48650 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 50784 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 52821 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 54756 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 56865 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 58982 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=20


  █ TOTAL RESULTS 

    checks_total.......: 87883  4385.496307/s
    checks_succeeded...: 65.47% 57540 out of 87883
    checks_failed......: 34.52% 30343 out of 87883

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  48% — ✓ 28770 / ✗ 30343

    EXECUTION
    iteration_duration.............: avg=40.62ms  min=1.12ms   med=26.89ms max=348.19ms p(90)=87.52ms p(95)=109.83ms
    iterations.....................: 59113  2949.829241/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 329 MB 16 MB/s
    data_sent......................: 12 MB  612 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.59ms  min=165.39µs med=18.74ms max=348.14ms p(90)=86.72ms p(95)=108.86ms
    ws_msgs_received...............: 28770  1435.667066/s
    ws_msgs_sent...................: 28770  1435.667066/s
    ws_orders_requests_sent........: 28770  1435.667066/s
    ws_orders_responses_received...: 28770  1435.667066/s
    ws_orders_rtt_ms...............: avg=9.369969 min=0        med=8       max=157      p(90)=15      p(95)=20      
    ws_session_duration............: avg=40.52ms  min=1.11ms   med=26.78ms max=348.15ms p(90)=87.44ms p(95)=109.75ms
    ws_sessions....................: 59113  2949.829241/s




running (20.0s), 000/120 VUs, 59113 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
