#!/usr/bin/env bash
SCRIPT_DIR=${0%/*}

IMAGE_NAME="dev_docker__java_hello_word:v1"

IMAGE_PRESENT=$(docker images -f reference="$IMAGE_NAME" | grep -c "dev_docker")
if [[ $IMAGE_PRESENT != 1 ]];
then
  echo "docker image not found, building it now."
  "./$SCRIPT_DIR/build.sh"
fi

if [ -z "$NO_TTY" ]; then
  NO_TTY="0"
fi
INTERACTIVE_ARG=" -it"
if [ "$NO_TTY" == "1" ]; then
  INTERACTIVE_ARG=""
fi

docker run --rm$INTERACTIVE_ARG --net="host" --name=dev_docker__java_hello_word__container \
  -v "${PWD}":/repo:rw \
  dev_docker__java_hello_word:v1 \
  \
  bash -c "mkdir -p /tmp && cd /repo && $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} ${12} ${13} ${14} ${15} ${16} ${17} ${18}"
