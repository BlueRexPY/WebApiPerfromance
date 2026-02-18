import orjson
from rest_framework.renderers import BaseRenderer


class ORJSONRenderer(BaseRenderer):
    media_type = "application/json"
    format = "json"
    charset = None

    def render(self, data, accepted_media_type=None, renderer_context=None):
        return orjson.dumps(data)
