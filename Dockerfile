FROM alpine:latest

RUN apk -v --update add bash python3 py3-pip gettext
RUN mkdir /data

COPY DockerfileBootstrap /data/Dockerfile
COPY entrypoint.sh /entrypoint.sh
COPY task-definition.json.tpl /data/task-definition.json.tpl
COPY supervisord /data/supervisord

ENTRYPOINT ["/entrypoint.sh"]
