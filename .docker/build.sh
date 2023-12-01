#!/usr/bin/env bash
SCRIPT_DIR=${0%/*}
source "$SCRIPT_DIR/.env"

# build
docker build -f "$SCRIPT_DIR/Dockerfile" -t "mm0n0/dev_docker_$PROJECT_NAME:v1" "$SCRIPT_DIR/.."
