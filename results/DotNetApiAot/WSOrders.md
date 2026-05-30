# C# .NET AOT — WS Orders Benchmark

**Tested**: 2026-05-30 20:49:28 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8013/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,049.43 |
| Avg Latency | 8.043334ms |
| Max Latency | 63ms |
| Total Requests | 61,136 |
| Transfer/sec | N/A |
| Port | 8013 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 8.043334 | 18 | 63 |
| Iteration Duration | 39.28ms | 104.81ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 60.82MiB |
| Memory Limit | 1GiB |
| Memory % | 5.94% |
| CPU % | 0.02% |
| PIDs | 18 |

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


running (01.0s), 120/120 VUs, 6255 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 13110 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 18748 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 24183 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 28971 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 31130 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 33308 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 35491 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 37633 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 39534 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 41727 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 43854 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 46049 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 48226 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 50144 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 52366 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 54520 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 56649 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 58820 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 61000 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=18


  █ TOTAL RESULTS 

    checks_total.......: 89866  4482.469488/s
    checks_succeeded...: 63.93% 57460 out of 89866
    checks_failed......: 36.06% 32406 out of 89866

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  46% — ✓ 28730 / ✗ 32406

    EXECUTION
    iteration_duration.............: avg=39.28ms  min=1.07ms   med=26.67ms max=382.61ms p(90)=83.62ms p(95)=104.81ms
    iterations.....................: 61136  3049.431983/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 320 MB 16 MB/s
    data_sent......................: 13 MB  631 kB/s

    WEBSOCKET
    ws_connecting..................: avg=33.99ms  min=226.96µs med=19.36ms max=382.54ms p(90)=83.24ms p(95)=104.73ms
    ws_msgs_received...............: 28730  1433.037505/s
    ws_msgs_sent...................: 28730  1433.037505/s
    ws_orders_requests_sent........: 28730  1433.037505/s
    ws_orders_responses_received...: 28730  1433.037505/s
    ws_orders_rtt_ms...............: avg=8.043334 min=0        med=7       max=63       p(90)=13      p(95)=18      
    ws_session_duration............: avg=39.18ms  min=1.04ms   med=26.56ms max=382.55ms p(90)=83.55ms p(95)=104.75ms
    ws_sessions....................: 61136  3049.431983/s




running (20.0s), 000/120 VUs, 61136 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
