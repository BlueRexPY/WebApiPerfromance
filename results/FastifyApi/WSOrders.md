# JS Node Fastify — WS Orders Benchmark

**Tested**: 2026-05-30 22:12:44 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8003/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,178.77 |
| Avg Latency | 12.674553ms |
| Max Latency | 205ms |
| Total Requests | 23,755 |
| Transfer/sec | N/A |
| Port | 8003 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 12.674553 | 67 | 205 |
| Iteration Duration | 101.34ms | 195.01ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 40.14MiB |
| Memory Limit | 1GiB |
| Memory % | 3.92% |
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


running (01.0s), 120/120 VUs, 1292 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2789 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4335 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 6025 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 6889 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 7627 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 8609 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 9963 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 10767 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 11546 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 12233 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 13015 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 14554 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 16080 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 17661 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 19236 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 20629 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 22101 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 22841 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 094/120 VUs, 23661 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=67


  █ TOTAL RESULTS 

    checks_total.......: 47510   2357.539542/s
    checks_succeeded...: 100.00% 47510 out of 47510
    checks_failed......: 0.00%   0 out of 47510

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=101.34ms  min=27.83ms med=83.84ms max=407.68ms p(90)=165.55ms p(95)=195.01ms
    iterations.....................: 23755  1178.769771/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 266 MB 13 MB/s
    data_sent......................: 5.3 MB 264 kB/s

    WEBSOCKET
    ws_connecting..................: avg=86.89ms   min=15.21ms med=78.12ms max=262.12ms p(90)=131.62ms p(95)=147.94ms
    ws_msgs_received...............: 23755  1178.769771/s
    ws_msgs_sent...................: 23755  1178.769771/s
    ws_orders_requests_sent........: 23755  1178.769771/s
    ws_orders_responses_received...: 23755  1178.769771/s
    ws_orders_rtt_ms...............: avg=12.674553 min=1       med=3       max=205      p(90)=42       p(95)=67      
    ws_session_duration............: avg=101.26ms  min=27.77ms med=83.81ms max=407.64ms p(90)=165.28ms p(95)=194.89ms
    ws_sessions....................: 23755  1178.769771/s




running (20.2s), 000/120 VUs, 23755 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
