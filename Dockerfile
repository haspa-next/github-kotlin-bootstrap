FROM alpine:latest

RUN apk -v --update add bash python3 py3-pip gettext
RUN mkdir /data

COPY entrypoint.sh /entrypoint.sh
COPY supervisord /data/supervisord

ENTRYPOINT ["/entrypoint.sh"]
