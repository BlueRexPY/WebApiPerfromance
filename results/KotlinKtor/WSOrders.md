# Kotlin Ktor — WS Orders Benchmark

**Tested**: 2026-05-31 18:20:11 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8027/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,311.82 |
| Avg Latency | 63.766812ms |
| Max Latency | 599ms |
| Total Requests | 26,335 |
| Transfer/sec | N/A |
| Port | 8027 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 63.766812 | 110 | 599 |
| Iteration Duration | 91.34ms | 183.06ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 257.1MiB |
| Memory Limit | 1GiB |
| Memory % | 25.11% |
| CPU % | 0.12% |
| PIDs | 58 |

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


running (01.0s), 120/120 VUs, 219 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 667 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 1349 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 2352 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 3578 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 4767 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 6115 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 7406 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 8749 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 10218 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 11706 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 13268 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 14726 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 16236 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 17814 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 19443 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 21075 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 22763 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 24490 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 26201 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=110


  █ TOTAL RESULTS 

    checks_total.......: 52670   2623.648694/s
    checks_succeeded...: 100.00% 52670 out of 52670
    checks_failed......: 0.00%   0 out of 52670

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=91.34ms   min=7.33ms   med=89.78ms max=769ms    p(90)=126.85ms p(95)=183.06ms
    iterations.....................: 26335  1311.824347/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 301 MB 15 MB/s
    data_sent......................: 5.9 MB 294 kB/s

    WEBSOCKET
    ws_connecting..................: avg=26.4ms    min=381.21µs med=13.06ms max=307.4ms  p(90)=70.67ms  p(95)=76.8ms  
    ws_msgs_received...............: 26335  1311.824347/s
    ws_msgs_sent...................: 26335  1311.824347/s
    ws_orders_requests_sent........: 26335  1311.824347/s
    ws_orders_responses_received...: 26335  1311.824347/s
    ws_orders_rtt_ms...............: avg=63.766812 min=2        med=72      max=599      p(90)=98       p(95)=110     
    ws_session_duration............: avg=91.29ms   min=7.31ms   med=89.72ms max=768.95ms p(90)=126.83ms p(95)=183.03ms
    ws_sessions....................: 26335  1311.824347/s




running (20.1s), 000/120 VUs, 26335 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
