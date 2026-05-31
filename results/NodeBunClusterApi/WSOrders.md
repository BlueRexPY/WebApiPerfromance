# JS Node Bun Cluster — WS Orders Benchmark

**Tested**: 2026-05-31 16:43:09 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/orders`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,593.42\* |
| Avg Latency | 23.463582ms |
| Max Latency | 347ms |
| Total Requests | 51,968 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 23.463582 | 53 | 347 |
| Iteration Duration | 46.2ms | 100.51ms | — |
| Checks Passed | 70.39% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 83.78MiB |
| Memory Limit | 1GiB |
| Memory % | 8.18% |
| CPU % | 0.68% |
| PIDs | 50 |

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


running (01.0s), 120/120 VUs, 1903 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4829 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7198 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10555 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 14344 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 17556 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 20550 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 23760 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 26922 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 29355 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 31582 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 33674 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 35920 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 38180 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 40431 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 42714 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 45001 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 47279 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 49576 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 51840 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=53


  █ TOTAL RESULTS 

    checks_total.......: 80196  4002.116896/s
    checks_succeeded...: 70.39% 56456 out of 80196
    checks_failed......: 29.60% 23740 out of 80196

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  54% — ✓ 28228 / ✗ 23740

    EXECUTION
    iteration_duration.............: avg=46.2ms    min=1.48ms  med=40.93ms max=408.09ms p(90)=82.08ms p(95)=100.51ms
    iterations.....................: 51968  2593.421254/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 11 MB  543 kB/s

    WEBSOCKET
    ws_connecting..................: avg=32.92ms   min=201.4µs med=22.31ms max=342.18ms p(90)=74.31ms p(95)=95.94ms 
    ws_msgs_received...............: 28228  1408.695643/s
    ws_msgs_sent...................: 28228  1408.695643/s
    ws_orders_requests_sent........: 28228  1408.695643/s
    ws_orders_responses_received...: 28228  1408.695643/s
    ws_orders_rtt_ms...............: avg=23.463582 min=0       med=20      max=347      p(90)=42      p(95)=53      
    ws_session_duration............: avg=46.15ms   min=1.46ms  med=40.89ms max=408.03ms p(90)=82.02ms p(95)=100.39ms
    ws_sessions....................: 51968  2593.421254/s




running (20.0s), 000/120 VUs, 51968 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
