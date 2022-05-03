#!/bin/bash

mkdir -p $GITHUB_WORKSPACE/etc/supervisor.d/

envsubst /data/task-definition.json.tpl > $GITHUB_WORKSPACE/task-definition.json
envsubst /data/supervisord/service.ini > $GITHUB_WORKSPACE/etc/supervisor.d/$SERVICE.ini
