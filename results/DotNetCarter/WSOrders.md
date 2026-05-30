# C# Carter — WS Orders Benchmark

**Tested**: 2026-05-30 20:56:02 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8035/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,467.31 |
| Avg Latency | 21.309035ms |
| Max Latency | 218ms |
| Total Requests | 49,456 |
| Transfer/sec | N/A |
| Port | 8035 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 21.309035 | 63 | 218 |
| Iteration Duration | 48.56ms | 111.42ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 84.09MiB |
| Memory Limit | 1GiB |
| Memory % | 8.21% |
| CPU % | 0.07% |
| PIDs | 25 |

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


running (01.0s), 120/120 VUs, 2188 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4350 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7408 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10006 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13061 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14752 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 17372 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 20161 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 24099 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 28345 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 30523 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 32673 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 34176 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 36362 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 38534 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 40669 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 42891 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 45081 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 47294 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 49325 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=63


  █ TOTAL RESULTS 

    checks_total.......: 77977  3890.190073/s
    checks_succeeded...: 73.15% 57042 out of 77977
    checks_failed......: 26.84% 20935 out of 77977

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  57% — ✓ 28521 / ✗ 20935

    EXECUTION
    iteration_duration.............: avg=48.56ms   min=4.26ms   med=37.57ms max=358.13ms p(90)=94.9ms  p(95)=111.42ms
    iterations.....................: 49456  2467.307543/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 10 MB  519 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.47ms   min=604.93µs med=19.9ms  max=357.43ms p(90)=80.34ms p(95)=99.65ms 
    ws_msgs_received...............: 28521  1422.88253/s
    ws_msgs_sent...................: 28521  1422.88253/s
    ws_orders_requests_sent........: 28521  1422.88253/s
    ws_orders_responses_received...: 28521  1422.88253/s
    ws_orders_rtt_ms...............: avg=21.309035 min=1        med=16      max=218      p(90)=45      p(95)=63      
    ws_session_duration............: avg=48.45ms   min=4.23ms   med=37.45ms max=357.44ms p(90)=94.78ms p(95)=111.31ms
    ws_sessions....................: 49456  2467.307543/s




running (20.0s), 000/120 VUs, 49456 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
