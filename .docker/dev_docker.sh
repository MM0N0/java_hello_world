#!/usr/bin/env bash
SCRIPT_DIR=${0%/*}
source "${SCRIPT_DIR}/.env"

# run container non-interactively, if NO_TTY var is "1", default is "0"
INTERACTIVE_ARG=" -it"
if [ -z "${NO_TTY}" ]; then
  NO_TTY="0"
fi
if [ "${NO_TTY}" == "1" ]; then
  INTERACTIVE_ARG=""
fi

# run commands inside dev_docker container
docker run --rm${INTERACTIVE_ARG} --name="dev_docker_${PROJECT_NAME}__container" \
  \
  -v "${PWD}":/workdir:rw \
  ${PROJECT_EXTRA_DOCKER_ARGS} \
  "mm0n0/dev_docker_${PROJECT_NAME}:v1" \
  \
  bash -c "${PROJECT_EXTRA_PRE_CMDS} $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} ${12} ${13} ${14} ${15} ${16} ${17} ${18}"
