#!/usr/bin/env bash
#
# returns increased Version
#
# Parameter:
# $1 Version to be increased

. "${0%/*}/parse_version.sh" "$1"

PATCH_VERSION=$(echo "$PATCH_VERSION + 1" | bc )

echo "$MAJOR_VERSION.$MINOR_VERSION.$PATCH_VERSION"
