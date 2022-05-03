#!/bin/bash

mkdir -p /github/workspace/etc/supervisor.d/

envsubst /data/task-definition.json.tpl > /github/workspace/task-definition.json
envsubst /data/supervisord/service.ini > /github/workspace/etc/supervisor.d/$SERVICE.ini
