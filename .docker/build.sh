#!/usr/bin/env bash
SCRIPT_DIR=${0%/*}

# build
docker load < "$(nix-build --no-out-link "$SCRIPT_DIR/dev_docker.nix")"
