# Python FastAPI — WS Orders Benchmark

**Tested**: 2026-05-31 16:12:58 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8004/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 866.58 |
| Avg Latency | 123.571035ms |
| Max Latency | 898ms |
| Total Requests | 17,407 |
| Transfer/sec | N/A |
| Port | 8004 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 123.571035 | 592 | 898 |
| Iteration Duration | 138.13ms | 603.13ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 250.5MiB |
| Memory Limit | 1GiB |
| Memory % | 24.46% |
| CPU % | 0.50% |
| PIDs | 26 |

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


running (01.0s), 120/120 VUs, 684 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 1504 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 2182 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 2990 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 4449 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 5296 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 6156 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 6815 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 7361 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 8655 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 9605 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 10277 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 11127 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 12194 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 13270 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 13944 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 14864 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 15511 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 16700 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 17280 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✗ 'p(95)<500' p(95)=592


  █ TOTAL RESULTS 

    checks_total.......: 34814   1733.164407/s
    checks_succeeded...: 100.00% 34814 out of 34814
    checks_failed......: 0.00%   0 out of 34814

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=138.13ms   min=3.97ms   med=65.53ms max=903.43ms p(90)=489.83ms p(95)=603.13ms
    iterations.....................: 17407  866.582203/s
    vus............................: 120    min=120      max=120
    vus_max........................: 120    min=120      max=120

    NETWORK
    data_received..................: 217 MB 11 MB/s
    data_sent......................: 3.9 MB 194 kB/s

    WEBSOCKET
    ws_connecting..................: avg=13.52ms    min=859.49µs med=5.56ms  max=270.77ms p(90)=54.82ms  p(95)=58.28ms 
    ws_msgs_received...............: 17407  866.582203/s
    ws_msgs_sent...................: 17407  866.582203/s
    ws_orders_requests_sent........: 17407  866.582203/s
    ws_orders_responses_received...: 17407  866.582203/s
    ws_orders_rtt_ms...............: avg=123.571035 min=2        med=27      max=898      p(90)=478      p(95)=592     
    ws_session_duration............: avg=138.09ms   min=3.95ms   med=65.5ms  max=903.39ms p(90)=489.81ms p(95)=603.06ms
    ws_sessions....................: 17407  866.582203/s




running (20.1s), 000/120 VUs, 17407 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T18:12:57+02:00" level=error msg="thresholds on metrics 'ws_orders_rtt_ms' have been crossed"
```
