#!/bin/bash

mkdir -p $GITHUB_WORKSPACE/etc/supervisor.d/

echo Setting up kotlin bootstrap

cat /data/task-definition.json.tpl
cat /data/supervisord/service.ini

envsubst < /data/task-definition.json.tpl > $GITHUB_WORKSPACE/task-definition.json
envsubst < /data/supervisord/service.ini > $GITHUB_WORKSPACE/etc/supervisor.d/$SERVICE.ini

cat $GITHUB_WORKSPACE/task-definition.json
cat $GITHUB_WORKSPACE/etc/supervisor.d/$SERVICE.ini
