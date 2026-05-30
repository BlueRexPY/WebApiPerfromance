# JS Bun Fastify — WS Orders Benchmark

**Tested**: 2026-05-30 23:01:49 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8050/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,202.36 |
| Avg Latency | 30.45977ms |
| Max Latency | 330ms |
| Total Requests | 44,186 |
| Transfer/sec | N/A |
| Port | 8050 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 30.45977 | 44 | 330 |
| Iteration Duration | 54.39ms | 103.46ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 64.65MiB |
| Memory Limit | 1GiB |
| Memory % | 6.31% |
| CPU % | 0.21% |
| PIDs | 16 |

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


running (01.0s), 120/120 VUs, 1757 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4244 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6823 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9362 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11857 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14309 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16506 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 18585 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20926 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 23161 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 25395 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 27266 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 29446 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 31585 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 33764 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 35827 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 37798 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 40032 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 42166 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 44055 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=44


  █ TOTAL RESULTS 

    checks_total.......: 69938  3485.909997/s
    checks_succeeded...: 73.64% 51504 out of 69938
    checks_failed......: 26.35% 18434 out of 69938

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  58% — ✓ 25752 / ✗ 18434

    EXECUTION
    iteration_duration.............: avg=54.39ms  min=1.83ms   med=50.37ms max=393.13ms p(90)=79.52ms p(95)=103.46ms
    iterations.....................: 44186  2202.356646/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 290 MB 14 MB/s
    data_sent......................: 9.3 MB 464 kB/s

    WEBSOCKET
    ws_connecting..................: avg=36.18ms  min=234.14µs med=25.28ms max=290.75ms p(90)=77.13ms p(95)=100.92ms
    ws_msgs_received...............: 25752  1283.553351/s
    ws_msgs_sent...................: 25752  1283.553351/s
    ws_orders_requests_sent........: 25752  1283.553351/s
    ws_orders_responses_received...: 25752  1283.553351/s
    ws_orders_rtt_ms...............: avg=30.45977 min=1        med=29      max=330      p(90)=41      p(95)=44      
    ws_session_duration............: avg=54.34ms  min=1.8ms    med=50.33ms max=393.09ms p(90)=79.46ms p(95)=103.39ms
    ws_sessions....................: 44186  2202.356646/s




running (20.1s), 000/120 VUs, 44186 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
