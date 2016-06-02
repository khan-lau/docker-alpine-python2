FROM alpine:3.3

RUN apk add --no-cache python \
    && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/main py-psycopg2 \
    && python -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip install --upgrade pip setuptools \
    && rm -r /root/.cache
