#!/usr/bin/env bash
SCRIPT_DIR=${0%/*}
source "$SCRIPT_DIR/.env"

# handle env vars
if [ -z "$NO_TTY" ]; then
  NO_TTY="0"
fi
INTERACTIVE_ARG=" -it"
if [ "$NO_TTY" == "1" ]; then
  INTERACTIVE_ARG=""
fi

# shortcut commands
if [ "$1" == "build" ]; then
  echo "running 'build' command: '$BUILD_CMD'"
  SHORTCUT_CMD="$BUILD_CMD; exit 0;"
elif [ "$1" == "run" ]; then
  echo "running 'run' command: '$RUN_CMD'"
  SHORTCUT_CMD="$RUN_CMD; exit 0;"
fi

docker run --rm$INTERACTIVE_ARG --net="host" --name="dev_docker_${PROJECT_NAME}__container" \
  -v "${PWD}":/repo:rw \
  "mm0n0/dev_docker_$PROJECT_NAME:v1" \
  \
  bash -c \
    "mkdir -p /tmp &&
    cd /repo &&
    $SHORTCUT_CMD $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} ${12} ${13} ${14} ${15} ${16} ${17} ${18}"
