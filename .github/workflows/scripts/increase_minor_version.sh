#!/usr/bin/env bash
#
# returns increased Version
#
# Parameter:
# $1 Version to be increased

. "${0%/*}/parse_version.sh" "$1"

MINOR_VERSION=$(echo "$MINOR_VERSION + 1" | bc )
PATCH_VERSION=0
echo "$MAJOR_VERSION.$MINOR_VERSION.$PATCH_VERSION"
