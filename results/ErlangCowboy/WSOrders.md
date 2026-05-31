# Erlang Cowboy — WS Orders Benchmark

**Tested**: 2026-05-31 17:04:22 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8010/ws/orders`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,860.65\* |
| Avg Latency | 16.513625ms |
| Max Latency | 63ms |
| Total Requests | 37,307 |
| Transfer/sec | N/A |
| Port | 8010 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 16.513625 | 33 | 63 |
| Iteration Duration | 64.38ms | 92.67ms | — |
| Checks Passed | 86.19% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 154.3MiB |
| Memory Limit | 1GiB |
| Memory % | 15.07% |
| CPU % | 0.05% |
| PIDs | 86 |

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


running (01.0s), 120/120 VUs, 1905 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3899 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5879 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 7894 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 9821 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 11732 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 13680 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 15458 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 17202 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 18939 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 20656 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 22383 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 24122 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 25630 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 27356 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 29215 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 31132 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 33158 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 35179 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 37181 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=33


  █ TOTAL RESULTS 

    checks_total.......: 65563  3269.89132/s
    checks_succeeded...: 86.19% 56512 out of 65563
    checks_failed......: 13.80% 9051 out of 65563

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  75% — ✓ 28256 / ✗ 9051

    EXECUTION
    iteration_duration.............: avg=64.38ms   min=11.63ms med=64.32ms max=284.81ms p(90)=82.59ms p(95)=92.67ms
    iterations.....................: 37307  1860.650603/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 304 MB 15 MB/s
    data_sent......................: 8.1 MB 402 kB/s

    WEBSOCKET
    ws_connecting..................: avg=51.35ms   min=3.08ms  med=48.66ms max=284.77ms p(90)=67.52ms p(95)=85.41ms
    ws_msgs_received...............: 28256  1409.240717/s
    ws_msgs_sent...................: 28256  1409.240717/s
    ws_orders_requests_sent........: 28256  1409.240717/s
    ws_orders_responses_received...: 28256  1409.240717/s
    ws_orders_rtt_ms...............: avg=16.513625 min=1       med=15      max=63       p(90)=28      p(95)=33     
    ws_session_duration............: avg=64.34ms   min=11.59ms med=64.29ms max=284.78ms p(90)=82.55ms p(95)=92.64ms
    ws_sessions....................: 37307  1860.650603/s




running (20.1s), 000/120 VUs, 37307 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
