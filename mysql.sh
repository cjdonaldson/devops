#!/bin/bash
#
# /var/lib/mysql is db location?
script_path="$(dirname -- ${BASH_SOURCE[0]})"
script_path="$(cd $script_path && pwd)"

mkdir -p "$script_path/mysql/db-data"
podman-compose -f "$script_path/mysql/docker-compose.yml" "$@"
