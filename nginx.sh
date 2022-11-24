#!/bin/bash

args=""
extra=""

while [[ $# -gt 0 ]]; do
  case $1 in
    up)
      args=($args "$1")
      extra="--build"
      ;;
      
    down)
      args=($args "$1")
      ;;
    
    -*|--*)
      args=("$args" "$1")
      ;;

    *)
      args=($args "$1")
      ;;
  esac
  shift
done

#echo "[${args[@]}]"
#echo "[$extra]"

path=$(dirname "$0")
#echo "[$path]"
docker-compose -f "$path/nginx/docker-compose.yml" "${args[@]}" "$extra"
