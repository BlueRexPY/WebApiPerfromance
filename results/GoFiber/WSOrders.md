# Go Fiber — WS Orders Benchmark

**Tested**: 2026-05-31 16:16:37 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8008/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,504.77 |
| Avg Latency | 15.180846ms |
| Max Latency | 213ms |
| Total Requests | 50,206 |
| Transfer/sec | N/A |
| Port | 8008 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 15.180846 | 65 | 213 |
| Iteration Duration | 47.84ms | 105.38ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.49MiB |
| Memory Limit | 1GiB |
| Memory % | 3.47% |
| CPU % | 0.01% |
| PIDs | 48 |

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


running (01.0s), 120/120 VUs, 3798 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 6397 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8730 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10694 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 12758 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 15976 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 19098 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21387 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 23627 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 26456 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 28652 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 30750 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 33000 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 35144 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 37370 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 39541 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 41802 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 44568 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 47930 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 50070 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=65


  █ TOTAL RESULTS 

    checks_total.......: 73126  3648.245972/s
    checks_succeeded...: 62.68% 45840 out of 73126
    checks_failed......: 37.31% 27286 out of 73126

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  45% — ✓ 22920 / ✗ 27286

    EXECUTION
    iteration_duration.............: avg=47.84ms   min=1.63ms   med=40.74ms max=273.09ms p(90)=92.05ms p(95)=105.38ms
    iterations.....................: 50206  2504.770359/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 265 MB 13 MB/s
    data_sent......................: 10 MB  518 kB/s

    WEBSOCKET
    ws_connecting..................: avg=38.43ms   min=234.83µs med=30.4ms  max=273.05ms p(90)=81.15ms p(95)=99.18ms 
    ws_msgs_received...............: 22920  1143.475613/s
    ws_msgs_sent...................: 22920  1143.475613/s
    ws_orders_requests_sent........: 22920  1143.475613/s
    ws_orders_responses_received...: 22920  1143.475613/s
    ws_orders_rtt_ms...............: avg=15.180846 min=0        med=7       max=213      p(90)=54      p(95)=65      
    ws_session_duration............: avg=47.7ms    min=1.6ms    med=40.65ms max=273.06ms p(90)=91.79ms p(95)=105.17ms
    ws_sessions....................: 50206  2504.770359/s




running (20.0s), 000/120 VUs, 50206 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
