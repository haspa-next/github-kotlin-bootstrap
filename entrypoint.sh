#!/bin/bash

envsubst task-definition.tpl > task-definition.json
envsubst supervisor
