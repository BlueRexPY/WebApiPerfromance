# JS Bun Express Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:10:11 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8055/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,371.23 |
| Avg Latency | 25.330913ms |
| Max Latency | 523ms |
| Total Requests | 47,534 |
| Transfer/sec | N/A |
| Port | 8055 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 25.330913 | 50 | 523 |
| Iteration Duration | 50.53ms | 106.08ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 114.6MiB |
| Memory Limit | 1GiB |
| Memory % | 11.19% |
| CPU % | 0.49% |
| PIDs | 41 |

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


running (01.0s), 120/120 VUs, 1468 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4773 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8105 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11583 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13936 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 16691 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 19439 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21932 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 24570 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 27174 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 29349 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 31254 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 33194 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 35135 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 37192 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 39118 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 41179 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 43292 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 45371 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 47405 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=50


  █ TOTAL RESULTS 

    checks_total.......: 75762  3779.388128/s
    checks_succeeded...: 74.51% 56456 out of 75762
    checks_failed......: 25.48% 19306 out of 75762

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  59% — ✓ 28228 / ✗ 19306

    EXECUTION
    iteration_duration.............: avg=50.53ms   min=2.91ms   med=43.57ms max=584.8ms  p(90)=84.82ms p(95)=106.08ms
    iterations.....................: 47534  2371.234066/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 10 MB  500 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.9ms    min=369.16µs med=22.43ms max=357.05ms p(90)=80.28ms p(95)=103.33ms
    ws_msgs_received...............: 28228  1408.154063/s
    ws_msgs_sent...................: 28228  1408.154063/s
    ws_orders_requests_sent........: 28228  1408.154063/s
    ws_orders_responses_received...: 28228  1408.154063/s
    ws_orders_rtt_ms...............: avg=25.330913 min=1        med=21      max=523      p(90)=41      p(95)=50      
    ws_session_duration............: avg=50.48ms   min=2.88ms   med=43.52ms max=584.73ms p(90)=84.76ms p(95)=106.02ms
    ws_sessions....................: 47534  2371.234066/s




running (20.0s), 000/120 VUs, 47534 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
