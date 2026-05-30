# JS Bun Koa — WS Orders Benchmark

**Tested**: 2026-05-30 23:04:26 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8052/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,935.94 |
| Avg Latency | 40.581355ms |
| Max Latency | 409ms |
| Total Requests | 38,810 |
| Transfer/sec | N/A |
| Port | 8052 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 40.581355 | 60 | 409 |
| Iteration Duration | 61.89ms | 108.98ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 55.71MiB |
| Memory Limit | 1GiB |
| Memory % | 5.44% |
| CPU % | 0.25% |
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


running (01.0s), 120/120 VUs, 1316 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3799 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6247 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8455 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 10039 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 11349 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 13357 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 15222 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 16972 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 18810 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 20405 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 21998 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 23971 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 26032 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 27996 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 30141 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 32264 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 34437 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 36572 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 38678 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=60


  █ TOTAL RESULTS 

    checks_total.......: 64586  3221.71095/s
    checks_succeeded...: 79.81% 51552 out of 64586
    checks_failed......: 20.18% 13034 out of 64586

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  66% — ✓ 25776 / ✗ 13034

    EXECUTION
    iteration_duration.............: avg=61.89ms   min=8.69ms   med=58.6ms  max=449.41ms p(90)=90.83ms p(95)=108.98ms
    iterations.....................: 38810  1935.939708/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 290 MB 15 MB/s
    data_sent......................: 8.3 MB 413 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.07ms   min=246.24µs med=24.73ms max=304.8ms  p(90)=71.22ms p(95)=92.17ms 
    ws_msgs_received...............: 25776  1285.771242/s
    ws_msgs_sent...................: 25776  1285.771242/s
    ws_orders_requests_sent........: 25776  1285.771242/s
    ws_orders_responses_received...: 25776  1285.771242/s
    ws_orders_rtt_ms...............: avg=40.581355 min=1        med=38      max=409      p(90)=53      p(95)=60      
    ws_session_duration............: avg=61.82ms   min=8.67ms   med=58.56ms max=449.37ms p(90)=90.72ms p(95)=108.68ms
    ws_sessions....................: 38810  1935.939708/s




running (20.0s), 000/120 VUs, 38810 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
