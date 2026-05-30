# F# .NET AOT — WS Orders Benchmark

**Tested**: 2026-05-30 20:53:51 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8020/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,981.39 |
| Avg Latency | 9.058304ms |
| Max Latency | 77ms |
| Total Requests | 59,747 |
| Transfer/sec | N/A |
| Port | 8020 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 9.058304 | 19 | 77 |
| Iteration Duration | 40.19ms | 107.7ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 60.55MiB |
| Memory Limit | 1GiB |
| Memory % | 5.91% |
| CPU % | 0.01% |
| PIDs | 19 |

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


running (01.0s), 120/120 VUs, 5395 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 11527 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 17135 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 22221 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 27311 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 30149 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 32272 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 34448 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 36456 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 38300 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 40257 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 42365 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 44528 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 46649 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 48805 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 51013 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 53227 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 55341 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 57421 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 59614 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=19


  █ TOTAL RESULTS 

    checks_total.......: 88407  4411.526798/s
    checks_succeeded...: 64.83% 57320 out of 88407
    checks_failed......: 35.16% 31087 out of 88407

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  47% — ✓ 28660 / ✗ 31087

    EXECUTION
    iteration_duration.............: avg=40.19ms  min=2.65ms   med=27.25ms max=284.9ms  p(90)=85.71ms p(95)=107.7ms 
    iterations.....................: 59747  2981.387125/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 323 MB 16 MB/s
    data_sent......................: 12 MB  618 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.3ms   min=448.54µs med=19.21ms max=284.85ms p(90)=85.11ms p(95)=107.31ms
    ws_msgs_received...............: 28660  1430.139673/s
    ws_msgs_sent...................: 28660  1430.139673/s
    ws_orders_requests_sent........: 28660  1430.139673/s
    ws_orders_responses_received...: 28660  1430.139673/s
    ws_orders_rtt_ms...............: avg=9.058304 min=0        med=8       max=77       p(90)=15      p(95)=19      
    ws_session_duration............: avg=40.09ms  min=2.62ms   med=27.13ms max=284.86ms p(90)=85.65ms p(95)=107.59ms
    ws_sessions....................: 59747  2981.387125/s




running (20.0s), 000/120 VUs, 59747 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
