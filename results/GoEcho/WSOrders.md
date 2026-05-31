# Go Echo — WS Orders Benchmark

**Tested**: 2026-05-31 16:19:53 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8096/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,279.45 |
| Avg Latency | 17.84225ms |
| Max Latency | 727ms |
| Total Requests | 45,698 |
| Transfer/sec | N/A |
| Port | 8096 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 17.84225 | 70 | 727 |
| Iteration Duration | 52.56ms | 110.02ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.81MiB |
| Memory Limit | 1GiB |
| Memory % | 3.50% |
| CPU % | 0.00% |
| PIDs | 39 |

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


running (01.0s), 120/120 VUs, 1312 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3041 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5016 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 7257 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 9036 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 10823 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 13125 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 16235 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20094 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 23077 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 25304 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 27609 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 29766 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 32014 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 34264 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 36588 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 38832 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 41052 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 43309 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 45571 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=70


  █ TOTAL RESULTS 

    checks_total.......: 68538  3418.719828/s
    checks_succeeded...: 66.64% 45680 out of 68538
    checks_failed......: 33.35% 22858 out of 68538

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  49% — ✓ 22840 / ✗ 22858

    EXECUTION
    iteration_duration.............: avg=52.56ms  min=1.14ms   med=45.94ms max=731.84ms p(90)=98.74ms p(95)=110.02ms
    iterations.....................: 45698  2279.445836/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 263 MB 13 MB/s
    data_sent......................: 9.5 MB 474 kB/s

    WEBSOCKET
    ws_connecting..................: avg=40.56ms  min=169.59µs med=34.86ms max=280.35ms p(90)=80.33ms p(95)=98.95ms 
    ws_msgs_received...............: 22840  1139.273992/s
    ws_msgs_sent...................: 22840  1139.273992/s
    ws_orders_requests_sent........: 22840  1139.273992/s
    ws_orders_responses_received...: 22840  1139.273992/s
    ws_orders_rtt_ms...............: avg=17.84225 min=0        med=7       max=727      p(90)=62      p(95)=70      
    ws_session_duration............: avg=52.41ms  min=1.12ms   med=45.85ms max=731.79ms p(90)=98.48ms p(95)=109.82ms
    ws_sessions....................: 45698  2279.445836/s




running (20.0s), 000/120 VUs, 45698 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
