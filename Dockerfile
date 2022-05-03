FROM alpine:latest

RUN apk -v --update add bash python3 py3-pip gettext

WORKDIR /data

COPY entrypoint.sh entrypoint.sh
COPY supervisord supervisord

ENTRYPOINT ["./entrypoint.sh"]
