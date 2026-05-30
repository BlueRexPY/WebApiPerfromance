# JS Bun Fastify Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:12:21 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8056/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,413.43 |
| Avg Latency | 25.467564ms |
| Max Latency | 303ms |
| Total Requests | 48,371 |
| Transfer/sec | N/A |
| Port | 8056 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 25.467564 | 53 | 303 |
| Iteration Duration | 49.65ms | 104.08ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 129.1MiB |
| Memory Limit | 1GiB |
| Memory % | 12.60% |
| CPU % | 0.66% |
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


running (01.0s), 120/120 VUs, 1697 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4714 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7633 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10769 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13851 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 16502 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 19071 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21329 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 24203 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 26889 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 29316 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 31362 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 33491 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 35527 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 37614 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 39696 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 41808 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 43935 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 46100 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 48226 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=53


  █ TOTAL RESULTS 

    checks_total.......: 76596  3821.694986/s
    checks_succeeded...: 73.69% 56450 out of 76596
    checks_failed......: 26.30% 20146 out of 76596

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  58% — ✓ 28225 / ✗ 20146

    EXECUTION
    iteration_duration.............: avg=49.65ms   min=1.91ms   med=43.37ms max=362.99ms p(90)=86.13ms p(95)=104.08ms
    iterations.....................: 48371  2413.431617/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 10 MB  508 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.22ms   min=190.22µs med=22.27ms max=301.53ms p(90)=78.42ms p(95)=101.08ms
    ws_msgs_received...............: 28225  1408.263368/s
    ws_msgs_sent...................: 28225  1408.263368/s
    ws_orders_requests_sent........: 28225  1408.263368/s
    ws_orders_responses_received...: 28225  1408.263368/s
    ws_orders_rtt_ms...............: avg=25.467564 min=1        med=22      max=303      p(90)=44      p(95)=53      
    ws_session_duration............: avg=49.6ms    min=1.89ms   med=43.32ms max=362.93ms p(90)=86.08ms p(95)=104ms   
    ws_sessions....................: 48371  2413.431617/s




running (20.0s), 000/120 VUs, 48371 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
