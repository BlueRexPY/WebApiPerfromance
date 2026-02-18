"""Pytest configuration and fixtures for the benchmark suite.

Provides shared fixtures, CLI options, and session-scoped Docker management
so that `pytest` can discover and run benchmarks in the VS Code Test UI.
"""

from __future__ import annotations

import logging
from collections.abc import Generator

import pytest

from .config import DEFAULT_WRK, SERVICES, TEST_TYPES, Service, WrkConfig
from .runner import ensure_db_up, start_service, stop_service, wait_for_service

logger = logging.getLogger(__name__)


# ── Custom pytest CLI options ──────────────────────────────────────────────────
def pytest_addoption(parser: pytest.Parser) -> None:
    parser.addoption(
        "--wrk-threads",
        type=int,
        default=DEFAULT_WRK.threads,
        help="Number of wrk threads (default: %(default)s)",
    )
    parser.addoption(
        "--wrk-connections",
        type=int,
        default=DEFAULT_WRK.connections,
        help="Number of wrk connections (default: %(default)s)",
    )
    parser.addoption(
        "--wrk-duration",
        type=int,
        default=DEFAULT_WRK.duration_seconds,
        help="wrk test duration in seconds (default: %(default)s)",
    )
    parser.addoption(
        "--service",
        action="append",
        default=None,
        help="Run benchmarks only for these services (can repeat). Default: all.",
    )
    parser.addoption(
        "--test-type",
        action="append",
        default=None,
        help="Run only these test types (can repeat). Default: all.",
    )
    parser.addoption(
        "--no-docker",
        action="store_true",
        default=False,
        help="Skip Docker start/stop (assume services are already running).",
    )


# ── Fixtures ──────────────────────────────────────────────────────────────────
@pytest.fixture(scope="session")
def wrk_config(request: pytest.FixtureRequest) -> WrkConfig:
    """WrkConfig built from CLI options."""
    return WrkConfig(
        threads=request.config.getoption("--wrk-threads"),
        connections=request.config.getoption("--wrk-connections"),
        duration_seconds=request.config.getoption("--wrk-duration"),
    )


@pytest.fixture(scope="session")
def manage_docker(request: pytest.FixtureRequest) -> bool:
    """Whether to manage Docker lifecycle."""
    return not request.config.getoption("--no-docker")


@pytest.fixture(scope="session")
def db_ready(manage_docker: bool) -> None:
    """Ensure DB is up for the entire test session."""
    if manage_docker:
        ensure_db_up()


class _ServiceManager:
    """Tracks which services have been started in the current session."""

    def __init__(self, manage_docker: bool):
        self._manage_docker = manage_docker
        self._started: set[str] = set()

    def ensure_started(self, service: Service) -> None:
        if not self._manage_docker:
            return
        if service.name not in self._started:
            start_service(service)
            wait_for_service(service)
            self._started.add(service.name)

    def stop_all(self) -> None:
        if not self._manage_docker:
            return
        for name in list(self._started):
            svc = SERVICES[name]
            stop_service(svc)
            self._started.discard(name)


@pytest.fixture(scope="session")
def service_manager(manage_docker: bool, db_ready: None) -> Generator[_ServiceManager]:
    """Session-scoped service manager."""
    mgr = _ServiceManager(manage_docker)
    yield mgr
    mgr.stop_all()


# ── Parametrize helpers ───────────────────────────────────────────────────────
def _get_selected_services(config: pytest.Config) -> list[str]:
    selected = config.getoption("--service")
    if selected:
        return [s for s in selected if s in SERVICES]
    return list(SERVICES.keys())


def _get_selected_test_types(config: pytest.Config) -> list[str]:
    selected = config.getoption("--test-type")
    if selected:
        return [t for t in selected if t in TEST_TYPES]
    return list(TEST_TYPES.keys())
