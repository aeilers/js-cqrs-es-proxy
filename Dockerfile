ARG IMG_VER="1.8.9-alpine"
FROM haproxy:${IMG_VER}
LABEL maintainer="Adam Eilers"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN apk --no-cache add ca-certificates \
    && rm -rf /var/cache/apk/*
