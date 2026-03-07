FROM openresty/openresty:1.25.3.2-alpine

RUN apk add --no-cache --virtual .build-deps git perl curl \
    && opm get leafo/pgmoon fffonion/lua-resty-openssl \
    && apk del .build-deps

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY app.lua /usr/local/openresty/lualib/app.lua

EXPOSE 8000

CMD ["openresty", "-g", "daemon off;"]
