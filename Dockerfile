FROM haproxy:1.8.23-alpine

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN apk --no-cache add ca-certificates \
    && rm -rf /var/cache/apk/*
