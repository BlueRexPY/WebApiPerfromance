import os
from pathlib import Path

from dotenv import load_dotenv

load_dotenv()

BASE_DIR = Path(__file__).resolve().parent.parent

SECRET_KEY = os.getenv(
    "SECRET_KEY", "django-insecure-performance-test-key-change-in-production"
)

DEBUG = False

ALLOWED_HOSTS = ["*"]

INSTALLED_APPS = [
    "rest_framework",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.middleware.common.CommonMiddleware",
]

ROOT_URLCONF = "djangoapi.urls"

WSGI_APPLICATION = "djangoapi.wsgi.application"

# Database
DATABASE_URL = os.getenv(
    "DATABASE_URL", "postgresql://apiuser:apipassword@localhost:5432/ordersdb"
)

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql",
        "NAME": DATABASE_URL.split("/")[-1],
        "USER": DATABASE_URL.split("://")[1].split(":")[0],
        "PASSWORD": DATABASE_URL.split("://")[1].split(":")[1].split("@")[0],
        "HOST": DATABASE_URL.split("@")[1].split(":")[0],
        "PORT": DATABASE_URL.split(":")[-1].split("/")[0],
        "CONN_MAX_AGE": 600,
        "OPTIONS": {
            "connect_timeout": 10,
            "options": "-c statement_timeout=10000",
        },
        "CONN_HEALTH_CHECKS": True,
    }
}


# Disable migrations for performance testing
class DisableMigrations:
    def __contains__(self, item):
        return True

    def __getitem__(self, item):
        return None


MIGRATION_MODULES = DisableMigrations()

LANGUAGE_CODE = "en-us"
TIME_ZONE = "UTC"
USE_I18N = False
USE_TZ = True

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

# REST Framework
REST_FRAMEWORK = {
    "DEFAULT_RENDERER_CLASSES": [
        "djangoapi.renderers.ORJSONRenderer",
    ],
    "DEFAULT_PARSER_CLASSES": [
        "rest_framework.parsers.JSONParser",
    ],
    "UNAUTHENTICATED_USER": None,
    "UNAUTHENTICATED_TOKEN": None,
    "DEFAULT_AUTHENTICATION_CLASSES": [],
    "DEFAULT_PERMISSION_CLASSES": [],
    "DEFAULT_THROTTLE_CLASSES": [],
}

# Logging - minimal for performance
LOGGING = {
    "version": 1,
    "disable_existing_loggers": True,
    "handlers": {
        "null": {
            "class": "logging.NullHandler",
        },
    },
    "root": {
        "handlers": ["null"],
    },
}
