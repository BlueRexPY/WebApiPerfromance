# JS Node Koa — WS Orders Benchmark

**Tested**: 2026-05-30 22:34:15 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8038/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,348.00 |
| Avg Latency | 2.98505ms |
| Max Latency | 155ms |
| Total Requests | 27,090 |
| Transfer/sec | N/A |
| Port | 8038 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.98505 | 4 | 155 |
| Iteration Duration | 88.8ms | 118.8ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 37.02MiB |
| Memory Limit | 1GiB |
| Memory % | 3.62% |
| CPU % | 0.00% |
| PIDs | 11 |

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


running (01.0s), 120/120 VUs, 931 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2360 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3788 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5346 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 6999 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 8573 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 10148 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 11596 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 13000 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 14219 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 15449 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 16466 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 17707 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 19128 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 20398 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 21646 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 23037 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 24358 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 25642 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 26962 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 54180   2696.008463/s
    checks_succeeded...: 100.00% 54180 out of 54180
    checks_failed......: 0.00%   0 out of 54180

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=88.8ms  min=54.98ms med=86.05ms max=272.38ms p(90)=112.52ms p(95)=118.8ms 
    iterations.....................: 27090  1348.004231/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 304 MB 15 MB/s
    data_sent......................: 6.1 MB 302 kB/s

    WEBSOCKET
    ws_connecting..................: avg=85.12ms min=9.59ms  med=82.55ms max=266.22ms p(90)=108.42ms p(95)=114.27ms
    ws_msgs_received...............: 27090  1348.004231/s
    ws_msgs_sent...................: 27090  1348.004231/s
    ws_orders_requests_sent........: 27090  1348.004231/s
    ws_orders_responses_received...: 27090  1348.004231/s
    ws_orders_rtt_ms...............: avg=2.98505 min=1       med=3       max=155      p(90)=4        p(95)=4       
    ws_session_duration............: avg=88.77ms min=54.95ms med=86.01ms max=272.33ms p(90)=112.49ms p(95)=118.77ms
    ws_sessions....................: 27090  1348.004231/s




running (20.1s), 000/120 VUs, 27090 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
