# JS Bun — WS Orders Benchmark

**Tested**: 2026-05-30 21:10:40 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8002/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,234.80 |
| Avg Latency | 31.331987ms |
| Max Latency | 355ms |
| Total Requests | 44,816 |
| Transfer/sec | N/A |
| Port | 8002 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 31.331987 | 44 | 355 |
| Iteration Duration | 53.61ms | 103.25ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 46.45MiB |
| Memory Limit | 1GiB |
| Memory % | 4.54% |
| CPU % | 0.20% |
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


running (01.0s), 120/120 VUs, 1800 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4429 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7085 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9671 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 12342 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14862 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 17168 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 19552 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 21985 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 24408 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 26503 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 28475 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 30416 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 32655 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 34613 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 36363 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 38459 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 40391 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 42516 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 44640 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=44


  █ TOTAL RESULTS 

    checks_total.......: 73046  3642.515878/s
    checks_succeeded...: 77.29% 56460 out of 73046
    checks_failed......: 22.70% 16586 out of 73046

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  62% — ✓ 28230 / ✗ 16586

    EXECUTION
    iteration_duration.............: avg=53.61ms   min=1.32ms  med=48.03ms max=402.16ms p(90)=80.73ms p(95)=103.25ms
    iterations.....................: 44816  2234.797136/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 9.5 MB 474 kB/s

    WEBSOCKET
    ws_connecting..................: avg=33.39ms   min=98.41µs med=21.7ms  max=299.52ms p(90)=76.95ms p(95)=99.95ms 
    ws_msgs_received...............: 28230  1407.718742/s
    ws_msgs_sent...................: 28230  1407.718742/s
    ws_orders_requests_sent........: 28230  1407.718742/s
    ws_orders_responses_received...: 28230  1407.718742/s
    ws_orders_rtt_ms...............: avg=31.331987 min=0       med=30      max=355      p(90)=40      p(95)=44      
    ws_session_duration............: avg=53.57ms   min=1.31ms  med=48ms    max=402.12ms p(90)=80.68ms p(95)=103.08ms
    ws_sessions....................: 44816  2234.797136/s




running (20.1s), 000/120 VUs, 44816 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
