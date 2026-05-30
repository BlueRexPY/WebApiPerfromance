"""wrk output parser.

Parses the raw text output of `wrk` into a structured dataclass.
"""

from __future__ import annotations

import re
from dataclasses import dataclass

@dataclass
class MemoryStats:
    """Container memory usage stats from docker stats."""

    mem_usage: str = ""  # e.g. "45.2MiB"
    mem_limit: str = ""  # e.g. "1GiB"
    mem_percent: str = ""  # e.g. "4.41%"
    cpu_percent: str = ""  # e.g. "150.2%"
    pids: int = 0

@dataclass
class WrkResult:
    """Parsed results from a single wrk run."""

    # Test metadata
    url: str = ""
    threads: int = 0
    connections: int = 0
    duration: str = ""

    # Thread stats
    avg_latency: str = ""
    stdev_latency: str = ""
    max_latency: str = ""
    latency_pct: str = ""  # +/- Stdev %

    avg_req_sec: str = ""
    stdev_req_sec: str = ""
    max_req_sec: str = ""
    req_sec_pct: str = ""

    # Summary
    total_requests: int = 0
    total_duration: str = ""
    total_read: str = ""
    requests_per_sec: float = 0.0
    transfer_per_sec: str = ""

    # Errors
    non_2xx_3xx: int = 0
    socket_errors: str = ""
    has_errors: bool = False

    # Raw output
    raw: str = ""

_LATENCY_RE = re.compile(r"Latency\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)")
_REQSEC_RE = re.compile(r"Req/Sec\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)")
_SUMMARY_RE = re.compile(r"(\d+)\s+requests?\s+in\s+(\S+),\s+(\S+)\s+read")
_RPS_RE = re.compile(r"Requests/sec:\s+(\S+)")
_TRANSFER_RE = re.compile(r"Transfer/sec:\s+(\S+)")
_NON2XX_RE = re.compile(r"Non-2xx or 3xx responses:\s+(\d+)")
_SOCKET_ERR_RE = re.compile(
    r"Socket errors:\s+connect\s+(\d+),\s+read\s+(\d+),\s+write\s+(\d+),\s+timeout\s+(\d+)"
)
_HEADER_RE = re.compile(r"Running\s+(\S+)\s+test\s+@\s+(\S+)")
_THREADS_RE = re.compile(r"(\d+)\s+threads?\s+and\s+(\d+)\s+connections?")

def parse_wrk_output(output: str) -> WrkResult:
    """Parse wrk CLI output into a structured WrkResult."""
    result = WrkResult(raw=output)

    # Header
    m = _HEADER_RE.search(output)
    if m:
        result.duration = m.group(1)
        result.url = m.group(2)

    m = _THREADS_RE.search(output)
    if m:
        result.threads = int(m.group(1))
        result.connections = int(m.group(2))

    # Thread stats
    m = _LATENCY_RE.search(output)
    if m:
        result.avg_latency = m.group(1)
        result.stdev_latency = m.group(2)
        result.max_latency = m.group(3)
        result.latency_pct = m.group(4)

    m = _REQSEC_RE.search(output)
    if m:
        result.avg_req_sec = m.group(1)
        result.stdev_req_sec = m.group(2)
        result.max_req_sec = m.group(3)
        result.req_sec_pct = m.group(4)

    # Summary
    m = _SUMMARY_RE.search(output)
    if m:
        result.total_requests = int(m.group(1))
        result.total_duration = m.group(2)
        result.total_read = m.group(3)

    m = _RPS_RE.search(output)
    if m:
        result.requests_per_sec = float(m.group(1))

    m = _TRANSFER_RE.search(output)
    if m:
        result.transfer_per_sec = m.group(1)

    # Errors
    m = _NON2XX_RE.search(output)
    if m:
        result.non_2xx_3xx = int(m.group(1))
        result.has_errors = True

    m = _SOCKET_ERR_RE.search(output)
    if m:
        result.socket_errors = (
            f"connect {m.group(1)}, read {m.group(2)}, "
            f"write {m.group(3)}, timeout {m.group(4)}"
        )
        if any(int(m.group(i)) > 0 for i in range(1, 5)):
            result.has_errors = True

    return result

@dataclass
class K6Result:
    """Parsed results from a single k6 WebSocket run."""

    iterations: int = 0
    iterations_per_sec: float = 0.0
    avg_iter_duration: str = ""  # e.g. "965.35µs"
    p95_iter_duration: str = ""  # e.g. "2.05ms"
    avg_rtt_ms: str = ""  # raw ms value from custom Trend metric
    max_rtt_ms: str = ""
    p95_rtt_ms: str = ""
    checks_passed_pct: float = 100.0
    has_errors: bool = False
    raw: str = ""

# iterations.....................: 14976   748.50/s
_K6_ITERS_RE = re.compile(r"iterations[.\s]+:\s+(\d+)\s+([\d.]+)/s")
# iteration_duration.............: avg=965.35µs ... p(95)=2.05ms
_K6_ITER_DUR_RE = re.compile(r"iteration_duration[.\s]+:.*?avg=(\S+).*?p\(95\)=(\S+)")
# ws_*_rtt_ms....................: avg=0.17 ... max=12.43 ... p(95)=0.56
_K6_RTT_RE = re.compile(
    r"ws_\w+_rtt_ms[.\s]+:.*?avg=(\S+)\s+min=\S+\s+med=\S+\s+max=(\S+)\s+p\(90\)=\S+\s+p\(95\)=(\S+)"
)
_K6_CHECKS_RE = re.compile(r"checks[.\s]+:\s+([\d.]+)%")

def parse_k6_output(output: str) -> K6Result:
    """Parse k6 CLI stdout into a structured K6Result."""
    result = K6Result(raw=output)

    m = _K6_ITERS_RE.search(output)
    if m:
        result.iterations = int(m.group(1))
        result.iterations_per_sec = float(m.group(2))

    m = _K6_ITER_DUR_RE.search(output)
    if m:
        result.avg_iter_duration = m.group(1)
        result.p95_iter_duration = m.group(2)

    m = _K6_RTT_RE.search(output)
    if m:
        result.avg_rtt_ms = m.group(1)
        result.max_rtt_ms = m.group(2)
        result.p95_rtt_ms = m.group(3)

    m = _K6_CHECKS_RE.search(output)
    if m:
        result.checks_passed_pct = float(m.group(1))
        if result.checks_passed_pct < 100.0:
            result.has_errors = True

    return result
