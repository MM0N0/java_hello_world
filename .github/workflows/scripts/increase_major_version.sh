#!/usr/bin/env bash
#
# returns increased Version
#
# Parameter:
# $1 Version to be increased

. "${0%/*}/parse_version.sh" "$1"

MAJOR_VERSION=$(echo "$MAJOR_VERSION + 1" | bc )
MINOR_VERSION=0
PATCH_VERSION=0
echo "$MAJOR_VERSION.$MINOR_VERSION.$PATCH_VERSION"
