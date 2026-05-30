# JS Node Bun Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 22:58:05 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,442.93 |
| Avg Latency | 22.925916ms |
| Max Latency | 383ms |
| Total Requests | 48,929 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 22.925916 | 43 | 383 |
| Iteration Duration | 49.07ms | 108.41ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 111.7MiB |
| Memory Limit | 1GiB |
| Memory % | 10.91% |
| CPU % | 2.48% |
| PIDs | 52 |

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


running (01.0s), 120/120 VUs, 2003 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3670 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6271 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8407 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 9958 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 12438 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15630 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17405 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 19504 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22038 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 25526 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 28656 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 30675 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 32989 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 35907 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 38678 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 40733 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 42939 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 45842 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 48793 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=43


  █ TOTAL RESULTS 

    checks_total.......: 74535  3721.388267/s
    checks_succeeded...: 68.70% 51212 out of 74535
    checks_failed......: 31.29% 23323 out of 74535

    ✗ ws connected (101)
      ↳  52% — ✓ 25606 / ✗ 23323
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=49.07ms   min=1.22ms   med=41.56ms max=484.43ms p(90)=85.7ms  p(95)=108.41ms
    iterations.....................: 48929  2442.930255/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 288 MB 14 MB/s
    data_sent......................: 10 MB  510 kB/s

    WEBSOCKET
    ws_connecting..................: avg=36.55ms   min=202.54µs med=23.1ms  max=355.21ms p(90)=83.91ms p(95)=106.41ms
    ws_msgs_received...............: 25606  1278.458013/s
    ws_msgs_sent...................: 25606  1278.458013/s
    ws_orders_requests_sent........: 25606  1278.458013/s
    ws_orders_responses_received...: 25606  1278.458013/s
    ws_orders_rtt_ms...............: avg=22.925916 min=0        med=20      max=383      p(90)=37      p(95)=43      
    ws_session_duration............: avg=49.01ms   min=1.2ms    med=41.52ms max=484.35ms p(90)=85.61ms p(95)=108.3ms 
    ws_sessions....................: 48929  2442.930255/s




running (20.0s), 000/120 VUs, 48929 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
