# JS Deno Parallel — WS Orders Benchmark

**Tested**: 2026-05-30 22:59:25 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8048/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,091.08 |
| Avg Latency | 31.836479ms |
| Max Latency | 383ms |
| Total Requests | 41,912 |
| Transfer/sec | N/A |
| Port | 8048 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 31.836479 | 60 | 383 |
| Iteration Duration | 57.31ms | 110.87ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 200.4MiB |
| Memory Limit | 1GiB |
| Memory % | 19.57% |
| CPU % | 0.00% |
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


running (01.0s), 120/120 VUs, 1541 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3918 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6137 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8577 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11076 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13274 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15401 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17127 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 18984 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 20945 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 22996 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 25106 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 27150 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 29180 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 31157 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 33269 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 35335 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 37466 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 39641 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 41780 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=60


  █ TOTAL RESULTS 

    checks_total.......: 67505  3367.976193/s
    checks_succeeded...: 75.82% 51186 out of 67505
    checks_failed......: 24.17% 16319 out of 67505

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  61% — ✓ 25593 / ✗ 16319

    EXECUTION
    iteration_duration.............: avg=57.31ms   min=1.5ms    med=53.38ms max=434.58ms p(90)=96.53ms p(95)=110.87ms
    iterations.....................: 41912  2091.083893/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 288 MB 14 MB/s
    data_sent......................: 8.9 MB 442 kB/s

    WEBSOCKET
    ws_connecting..................: avg=37.07ms   min=160.78µs med=28.59ms max=291.63ms p(90)=76.25ms p(95)=98.6ms  
    ws_msgs_received...............: 25593  1276.8923/s
    ws_msgs_sent...................: 25593  1276.8923/s
    ws_orders_requests_sent........: 25593  1276.8923/s
    ws_orders_responses_received...: 25593  1276.8923/s
    ws_orders_rtt_ms...............: avg=31.836479 min=0        med=29      max=383      p(90)=52      p(95)=60      
    ws_session_duration............: avg=57.25ms   min=1.49ms   med=53.31ms max=434.49ms p(90)=96.47ms p(95)=110.8ms 
    ws_sessions....................: 41912  2091.083893/s




running (20.0s), 000/120 VUs, 41912 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
