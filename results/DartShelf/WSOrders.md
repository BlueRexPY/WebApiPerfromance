# Dart Shelf — WS Orders Benchmark

**Tested**: 2026-05-31 18:16:01 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8085/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 426.34 |
| Avg Latency | 88.28163ms |
| Max Latency | 9817ms |
| Total Requests | 8,955 |
| Transfer/sec | N/A |
| Port | 8085 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 88.28163 | 87 | 9817 |
| Iteration Duration | 270.89ms | 1.1s | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 87.63MiB |
| Memory Limit | 1GiB |
| Memory % | 8.56% |
| CPU % | 64.92% |
| PIDs | 5 |

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


running (01.0s), 120/120 VUs, 58 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 205 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 287 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 380 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 469 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 572 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 673 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 792 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 908 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 1043 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 1780 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 2613 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 3395 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 4172 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 4925 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 5594 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 6397 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 7203 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 8024 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 8828 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s

running (21.0s), 003/120 VUs, 8952 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=87


  █ TOTAL RESULTS 

    checks_total.......: 17910   852.68417/s
    checks_succeeded...: 100.00% 17910 out of 17910
    checks_failed......: 0.00%   0 out of 17910

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=270.89ms min=56.47ms  med=77.33ms max=11.25s p(90)=507.08ms p(95)=1.1s 
    iterations.....................: 8955   426.342085/s
    vus............................: 3      min=3        max=120
    vus_max........................: 120    min=120      max=120

    NETWORK
    data_received..................: 103 MB 4.9 MB/s
    data_sent......................: 2.0 MB 96 kB/s

    WEBSOCKET
    ws_connecting..................: avg=181.97ms min=571.95µs med=62.12ms max=11.24s p(90)=406.22ms p(95)=1.07s
    ws_msgs_received...............: 8955   426.342085/s
    ws_msgs_sent...................: 8955   426.342085/s
    ws_orders_requests_sent........: 8955   426.342085/s
    ws_orders_responses_received...: 8955   426.342085/s
    ws_orders_rtt_ms...............: avg=88.28163 min=3        med=14      max=9817   p(90)=82       p(95)=87   
    ws_session_duration............: avg=270.87ms min=56.44ms  med=77.3ms  max=11.25s p(90)=507.04ms p(95)=1.1s 
    ws_sessions....................: 8955   426.342085/s




running (21.0s), 000/120 VUs, 8955 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
