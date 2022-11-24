#!/bin/sh

podman network create --gateway 172.16.9.254 --ip-range 172.16.9.0/24 --subnet 172.16.9.0/24 dodropin_net

