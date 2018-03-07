ARG IMG_VER="1.8.4-alpine"
FROM haproxy:${IMG_VER}
LABEL maintainer="Adam Eilers"

ARG PROXY_ENV="production"
COPY conf/${PROXY_ENV}/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN apk update \
    && apk add ca-certificates \
    && rm -rf /var/cache/apk/*
