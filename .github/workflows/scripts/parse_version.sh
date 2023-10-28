#!/usr/bin/env bash
VERSION=$1

VERSION_PATTERN="([0-9]+)\.([0-9]+)\.([0-9]+).*"

MAJOR_VERSION=$(echo "$VERSION" | sed -r "s/$VERSION_PATTERN/\1/g")
MINOR_VERSION=$(echo "$VERSION" | sed -r "s/$VERSION_PATTERN/\2/g")
PATCH_VERSION=$(echo "$VERSION" | sed -r "s/$VERSION_PATTERN/\3/g")

export MAJOR_VERSION
export MINOR_VERSION
export PATCH_VERSION
