#!/usr/bin/env bash
SCRIPT_DIR=${0%/*}

# build
docker build -f "$SCRIPT_DIR/Dockerfile" -t mm0n0/dev_docker_java_hello_world:v1 "$SCRIPT_DIR/.."
