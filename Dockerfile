FROM haproxy:1.7.5-alpine
MAINTAINER Adam Eilers <adam.eilers@gmail.com>

ARG PROXY_ENV="production"
COPY conf/${PROXY_ENV}/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN apk update \
    && apk add ca-certificates \
    && rm -rf /var/cache/apk/*
