#!/usr/bin/env bash
git fetch --tags
git describe --tags `git rev-list --tags --max-count=1`
