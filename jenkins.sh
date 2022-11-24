#!/bin/bash
#
# /var/lib/mysql is db location?
script_path="$(dirname -- ${BASH_SOURCE[0]})"
script_path="$(cd $script_path && pwd)"

podman-compose -f "$script_path/jenkins-docker/docker-compose.yml" "$@"
