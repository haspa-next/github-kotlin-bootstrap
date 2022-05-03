#!/bin/bash

envsubst task-definition.tpl > task-definition.json
envsubst supervisord/service.ini > /etc/supervisor.d/$SERVICE.ini
