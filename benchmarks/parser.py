"""wrk output parser.

Parses the raw text output of `wrk` into a structured dataclass.
"""

from __future__ import annotations

import re
from dataclasses import dataclass


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
