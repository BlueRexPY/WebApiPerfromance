# Python BlackSheep — WS Orders Benchmark

**Tested**: 2026-05-31 16:15:23 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8097/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 913.55 |
| Avg Latency | 117.003381ms |
| Max Latency | 776ms |
| Total Requests | 18,338 |
| Transfer/sec | N/A |
| Port | 8097 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 117.003381 | 485 | 776 |
| Iteration Duration | 131.18ms | 495.64ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 214.5MiB |
| Memory Limit | 1GiB |
| Memory % | 20.95% |
| CPU % | 0.52% |
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


running (01.0s), 120/120 VUs, 683 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 1406 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 2370 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 3487 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 4112 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 5010 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 5681 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 6548 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 7489 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 8404 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 9082 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 9730 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 10567 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 11886 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 13266 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 13967 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 14883 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 15910 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 17058 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 18218 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=485


  █ TOTAL RESULTS 

    checks_total.......: 36676   1827.090736/s
    checks_succeeded...: 100.00% 36676 out of 36676
    checks_failed......: 0.00%   0 out of 36676

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=131.18ms   min=4.7ms    med=68.48ms max=786.52ms p(90)=396.44ms p(95)=495.64ms
    iterations.....................: 18338  913.545368/s
    vus............................: 120    min=120      max=120
    vus_max........................: 120    min=120      max=120

    NETWORK
    data_received..................: 229 MB 11 MB/s
    data_sent......................: 4.1 MB 205 kB/s

    WEBSOCKET
    ws_connecting..................: avg=13.14ms    min=805.21µs med=5.83ms  max=352.09ms p(90)=54.54ms  p(95)=57.42ms 
    ws_msgs_received...............: 18338  913.545368/s
    ws_msgs_sent...................: 18338  913.545368/s
    ws_orders_requests_sent........: 18338  913.545368/s
    ws_orders_responses_received...: 18338  913.545368/s
    ws_orders_rtt_ms...............: avg=117.003381 min=2        med=55      max=776      p(90)=387      p(95)=485     
    ws_session_duration............: avg=131.14ms   min=4.68ms   med=68.44ms max=786.46ms p(90)=396.37ms p(95)=495.6ms 
    ws_sessions....................: 18338  913.545368/s




running (20.1s), 000/120 VUs, 18338 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
