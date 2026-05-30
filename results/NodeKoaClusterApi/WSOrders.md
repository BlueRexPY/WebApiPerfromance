# JS Node Koa Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 22:52:23 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8044/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,649.74 |
| Avg Latency | 6.058386ms |
| Max Latency | 489ms |
| Total Requests | 33,104 |
| Transfer/sec | N/A |
| Port | 8044 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 6.058386 | 18 | 489 |
| Iteration Duration | 72.57ms | 115.17ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 97.5MiB |
| Memory Limit | 1GiB |
| Memory % | 9.52% |
| CPU % | 0.02% |
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


running (01.0s), 120/120 VUs, 1054 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2439 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3727 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5680 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7729 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9308 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 10843 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 12686 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 14737 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 16316 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 18309 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 20055 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 21644 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 23357 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 24934 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 26656 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 28090 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 29964 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 31408 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 32968 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=18


  █ TOTAL RESULTS 

    checks_total.......: 61056  3042.738214/s
    checks_succeeded...: 91.56% 55904 out of 61056
    checks_failed......: 8.43%  5152 out of 61056

    ✗ ws connected (101)
      ↳  84% — ✓ 27952 / ✗ 5152
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=72.57ms  min=4.88ms   med=70.65ms max=717.08ms p(90)=100.93ms p(95)=115.17ms
    iterations.....................: 33104  1649.744592/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 313 MB 16 MB/s
    data_sent......................: 7.3 MB 361 kB/s

    WEBSOCKET
    ws_connecting..................: avg=66.76ms  min=534.34µs med=65.89ms max=276.55ms p(90)=95.04ms  p(95)=107.59ms
    ws_msgs_received...............: 27952  1392.993622/s
    ws_msgs_sent...................: 27952  1392.993622/s
    ws_orders_requests_sent........: 27952  1392.993622/s
    ws_orders_responses_received...: 27952  1392.993622/s
    ws_orders_rtt_ms...............: avg=6.058386 min=0        med=3       max=489      p(90)=7        p(95)=18      
    ws_session_duration............: avg=72.53ms  min=4.85ms   med=70.61ms max=717.04ms p(90)=100.88ms p(95)=115.12ms
    ws_sessions....................: 33104  1649.744592/s




running (20.1s), 000/120 VUs, 33104 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
