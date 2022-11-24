#!/bin/bash
#
# /var/lib/postgres is db location?
script_path="$(dirname -- ${BASH_SOURCE[0]})"
script_path="$(cd $script_path && pwd)"

mkdir -p "$script_path/redis/db-data"
podman-compose -f "$script_path/redis/docker-compose.yml" "$@"
