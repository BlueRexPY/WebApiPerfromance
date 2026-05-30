# JS Bun NestJS Express — WS Orders Benchmark

**Tested**: 2026-05-30 23:05:49 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8053/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,182.78 |
| Avg Latency | 32.350822ms |
| Max Latency | 76ms |
| Total Requests | 43,739 |
| Transfer/sec | N/A |
| Port | 8053 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 32.350822 | 45 | 76 |
| Iteration Duration | 54.9ms | 98.19ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 59.07MiB |
| Memory Limit | 1GiB |
| Memory % | 5.77% |
| CPU % | 0.22% |
| PIDs | 23 |

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


running (01.0s), 120/120 VUs, 2262 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4807 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7371 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9807 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11529 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13563 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15626 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17907 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20095 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22412 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 24328 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26476 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 28597 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 30824 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 33056 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 35230 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 37276 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 39420 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 41381 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 43616 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=45


  █ TOTAL RESULTS 

    checks_total.......: 71967  3591.485019/s
    checks_succeeded...: 78.44% 56456 out of 71967
    checks_failed......: 21.55% 15511 out of 71967

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  64% — ✓ 28228 / ✗ 15511

    EXECUTION
    iteration_duration.............: avg=54.9ms    min=8.23ms med=52.13ms max=363.67ms p(90)=78.22ms p(95)=98.19ms
    iterations.....................: 43739  2182.777707/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 9.3 MB 464 kB/s

    WEBSOCKET
    ws_connecting..................: avg=33.51ms   min=2.47ms med=22.79ms max=363.59ms p(90)=70.45ms p(95)=96.35ms
    ws_msgs_received...............: 28228  1408.707312/s
    ws_msgs_sent...................: 28228  1408.707312/s
    ws_orders_requests_sent........: 28228  1408.707312/s
    ws_orders_responses_received...: 28228  1408.707312/s
    ws_orders_rtt_ms...............: avg=32.350822 min=3      med=31      max=76       p(90)=42      p(95)=45     
    ws_session_duration............: avg=54.86ms   min=8.19ms med=52.09ms max=363.6ms  p(90)=78.16ms p(95)=98.16ms
    ws_sessions....................: 43739  2182.777707/s




running (20.0s), 000/120 VUs, 43739 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
