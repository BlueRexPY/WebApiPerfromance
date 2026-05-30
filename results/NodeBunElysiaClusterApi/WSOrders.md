# JS Bun Elysia Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:25:00 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8087/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,196.05 |
| Avg Latency | 25.998938ms |
| Max Latency | 274ms |
| Total Requests | 44,024 |
| Transfer/sec | N/A |
| Port | 8087 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 25.998938 | 51 | 274 |
| Iteration Duration | 54.57ms | 121.19ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 151.5MiB |
| Memory Limit | 1GiB |
| Memory % | 14.80% |
| CPU % | 0.89% |
| PIDs | 91 |

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


running (01.0s), 120/120 VUs, 2147 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5100 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7853 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10961 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13281 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 16145 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 18648 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21260 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 23175 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 25478 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 27888 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 30519 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 32425 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 34221 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 35981 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 37438 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 38713 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 40401 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 42152 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 43901 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=51


  █ TOTAL RESULTS 

    checks_total.......: 72264  3604.740049/s
    checks_succeeded...: 78.15% 56480 out of 72264
    checks_failed......: 21.84% 15784 out of 72264

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  64% — ✓ 28240 / ✗ 15784

    EXECUTION
    iteration_duration.............: avg=54.57ms   min=2.98ms   med=46.71ms max=365.96ms p(90)=92.41ms p(95)=121.19ms
    iterations.....................: 44024  2196.046108/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 9.4 MB 467 kB/s

    WEBSOCKET
    ws_connecting..................: avg=37.25ms   min=338.26µs med=22.64ms max=365.89ms p(90)=90.16ms p(95)=118.79ms
    ws_msgs_received...............: 28240  1408.693942/s
    ws_msgs_sent...................: 28240  1408.693942/s
    ws_orders_requests_sent........: 28240  1408.693942/s
    ws_orders_responses_received...: 28240  1408.693942/s
    ws_orders_rtt_ms...............: avg=25.998938 min=1        med=23      max=274      p(90)=44      p(95)=51      
    ws_session_duration............: avg=54.52ms   min=2.95ms   med=46.67ms max=365.91ms p(90)=92.34ms p(95)=121.12ms
    ws_sessions....................: 44024  2196.046108/s




running (20.0s), 000/120 VUs, 44024 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
