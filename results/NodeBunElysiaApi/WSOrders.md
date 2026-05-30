# JS Bun Elysia — WS Orders Benchmark

**Tested**: 2026-05-30 23:22:49 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8086/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,044.21 |
| Avg Latency | 34.065384ms |
| Max Latency | 341ms |
| Total Requests | 40,993 |
| Transfer/sec | N/A |
| Port | 8086 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 34.065384 | 47 | 341 |
| Iteration Duration | 58.61ms | 100.56ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 83.29MiB |
| Memory Limit | 1GiB |
| Memory % | 8.13% |
| CPU % | 0.30% |
| PIDs | 44 |

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


running (01.0s), 120/120 VUs, 1721 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3575 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5408 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 7269 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 9157 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 10753 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 13141 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 15530 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 17865 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 19962 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 22343 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 24400 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 26421 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 28498 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30553 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 32638 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 34756 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 36856 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 38867 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 40856 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=47


  █ TOTAL RESULTS 

    checks_total.......: 69226  3452.116292/s
    checks_succeeded...: 81.56% 56466 out of 69226
    checks_failed......: 18.43% 12760 out of 69226

    ✗ ws connected (101)
      ↳  68% — ✓ 28233 / ✗ 12760
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=58.61ms   min=1.67ms   med=55.13ms max=478.09ms p(90)=77.78ms p(95)=100.56ms
    iterations.....................: 40993  2044.211758/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 8.8 MB 438 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.62ms   min=300.38µs med=24.53ms max=333.71ms p(90)=75.25ms p(95)=98.66ms 
    ws_msgs_received...............: 28233  1407.904534/s
    ws_msgs_sent...................: 28233  1407.904534/s
    ws_orders_requests_sent........: 28233  1407.904534/s
    ws_orders_responses_received...: 28233  1407.904534/s
    ws_orders_rtt_ms...............: avg=34.065384 min=1        med=33      max=341      p(90)=44      p(95)=47      
    ws_session_duration............: avg=58.56ms   min=1.65ms   med=55.1ms  max=478.05ms p(90)=77.7ms  p(95)=100.49ms
    ws_sessions....................: 40993  2044.211758/s




running (20.1s), 000/120 VUs, 40993 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
