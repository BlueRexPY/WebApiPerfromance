# C# Carter AOT — WS Orders Benchmark

**Tested**: 2026-05-30 20:58:13 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8036/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,961.26 |
| Avg Latency | 9.970103ms |
| Max Latency | 118ms |
| Total Requests | 59,346 |
| Transfer/sec | N/A |
| Port | 8036 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 9.970103 | 23 | 118 |
| Iteration Duration | 40.46ms | 100.31ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 57.62MiB |
| Memory Limit | 1GiB |
| Memory % | 5.63% |
| CPU % | 0.01% |
| PIDs | 20 |

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


running (01.0s), 120/120 VUs, 5782 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 11833 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 17432 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 20932 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 24353 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 28463 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30778 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 32989 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 35179 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 37318 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 39535 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 41708 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 43838 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 46046 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 48279 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 50472 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 52622 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 54829 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 57012 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 59201 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=23


  █ TOTAL RESULTS 

    checks_total.......: 88111  4396.57517/s
    checks_succeeded...: 65.29% 57530 out of 88111
    checks_failed......: 34.70% 30581 out of 88111

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  48% — ✓ 28765 / ✗ 30581

    EXECUTION
    iteration_duration.............: avg=40.46ms  min=1.06ms   med=30.56ms max=268.53ms p(90)=82.35ms p(95)=100.31ms
    iterations.....................: 59346  2961.255122/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 321 MB 16 MB/s
    data_sent......................: 12 MB  615 kB/s

    WEBSOCKET
    ws_connecting..................: avg=33.77ms  min=164.83µs med=21.06ms max=268.5ms  p(90)=80.97ms p(95)=99.99ms 
    ws_msgs_received...............: 28765  1435.320048/s
    ws_msgs_sent...................: 28765  1435.320048/s
    ws_orders_requests_sent........: 28765  1435.320048/s
    ws_orders_responses_received...: 28765  1435.320048/s
    ws_orders_rtt_ms...............: avg=9.970103 min=0        med=8       max=118      p(90)=18      p(95)=23      
    ws_session_duration............: avg=40.35ms  min=1.05ms   med=30.43ms max=268.5ms  p(90)=82.26ms p(95)=100.22ms
    ws_sessions....................: 59346  2961.255122/s




running (20.0s), 000/120 VUs, 59346 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
