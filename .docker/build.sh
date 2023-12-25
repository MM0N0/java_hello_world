#!/usr/bin/env bash
SCRIPT_DIR=${0%/*}
source "${SCRIPT_DIR}/.env"

# build dev_docker image (relative path "${SCRIPT_DIR}/.." is needed to copy .nix_env into the container while building)
docker build -f "${SCRIPT_DIR}/Dockerfile" -t "mm0n0/dev_docker_${PROJECT_NAME}:v1" "${SCRIPT_DIR}/.."
