# JS Node Hono Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 22:50:19 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8043/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,922.81 |
| Avg Latency | 4.000957ms |
| Max Latency | 101ms |
| Total Requests | 38,525 |
| Transfer/sec | N/A |
| Port | 8043 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 4.000957 | 8 | 101 |
| Iteration Duration | 62.34ms | 109.29ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 96.79MiB |
| Memory Limit | 1GiB |
| Memory % | 9.45% |
| CPU % | 0.00% |
| PIDs | 29 |

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


running (01.0s), 120/120 VUs, 1156 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2315 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3739 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5512 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 6952 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9033 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 11172 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 13250 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 15452 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 17388 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 19499 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 21510 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 23366 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 25506 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 27524 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 29671 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 31803 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 34018 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 36264 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 38384 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=8


  █ TOTAL RESULTS 

    checks_total.......: 66749  3331.488067/s
    checks_succeeded...: 84.56% 56448 out of 66749
    checks_failed......: 15.43% 10301 out of 66749

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  73% — ✓ 28224 / ✗ 10301

    EXECUTION
    iteration_duration.............: avg=62.34ms  min=10.31ms med=59.97ms max=270.02ms p(90)=90.86ms p(95)=109.29ms
    iterations.....................: 38525  1922.808998/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 316 MB 16 MB/s
    data_sent......................: 8.3 MB 414 kB/s

    WEBSOCKET
    ws_connecting..................: avg=58.82ms  min=10.25ms med=56.06ms max=269.96ms p(90)=86.4ms  p(95)=105.25ms
    ws_msgs_received...............: 28224  1408.67907/s
    ws_msgs_sent...................: 28224  1408.67907/s
    ws_orders_requests_sent........: 28224  1408.67907/s
    ws_orders_responses_received...: 28224  1408.67907/s
    ws_orders_rtt_ms...............: avg=4.000957 min=1       med=3       max=101      p(90)=5       p(95)=8       
    ws_session_duration............: avg=62.3ms   min=10.27ms med=59.93ms max=269.97ms p(90)=90.8ms  p(95)=109.24ms
    ws_sessions....................: 38525  1922.808998/s




running (20.0s), 000/120 VUs, 38525 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
