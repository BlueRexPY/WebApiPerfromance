# Elixir Phoenix — WS Orders Benchmark

**Tested**: 2026-05-31 18:33:01 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8007/ws/orders`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,550.50\* |
| Avg Latency | 47.545548ms |
| Max Latency | 110ms |
| Total Requests | 31,112 |
| Transfer/sec | N/A |
| Port | 8007 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 47.545548 | 84 | 110 |
| Iteration Duration | 77.17ms | 171.47ms | — |
| Checks Passed | 11.75% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 191.8MiB |
| Memory Limit | 1GiB |
| Memory % | 18.73% |
| CPU % | 0.25% |
| PIDs | 85 |

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


running (01.0s), 120/120 VUs, 1479 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3218 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4826 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 6474 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 8191 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9825 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 11497 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 13092 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 14528 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 15983 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 17470 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 18946 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 20375 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 21760 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 23216 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 24716 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 26187 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 28042 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 29491 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 30987 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=84


  █ TOTAL RESULTS 

    checks_total.......: 33055  1647.334471/s
    checks_succeeded...: 11.75% 3886 out of 33055
    checks_failed......: 88.24% 29169 out of 33055

    ✗ ws connected (101)
      ↳  6% — ✓ 1943 / ✗ 29169
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=77.17ms   min=6.32ms   med=68.18ms max=582.33ms p(90)=140.96ms p(95)=171.47ms
    iterations.....................: 31112  1550.5028/s
    vus............................: 120    min=120     max=120
    vus_max........................: 120    min=120     max=120

    NETWORK
    data_received..................: 22 MB  1.1 MB/s
    data_sent......................: 6.0 MB 301 kB/s

    WEBSOCKET
    ws_connecting..................: avg=73.99ms   min=859.16µs med=64.36ms max=582.26ms p(90)=140.62ms p(95)=170.89ms
    ws_msgs_received...............: 1943   96.831671/s
    ws_msgs_sent...................: 1943   96.831671/s
    ws_orders_requests_sent........: 1943   96.831671/s
    ws_orders_responses_received...: 1943   96.831671/s
    ws_orders_rtt_ms...............: avg=47.545548 min=2        med=45      max=110      p(90)=77       p(95)=84      
    ws_session_duration............: avg=77.08ms   min=6.29ms   med=68.1ms  max=582.27ms p(90)=140.87ms p(95)=171.32ms
    ws_sessions....................: 31112  1550.5028/s




running (20.1s), 000/120 VUs, 31112 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
