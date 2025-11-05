#!/bin/bash -e

export PULPRT_TARGET=opentitan-cluster
export PULPRUN_TARGET=opentitan-cluster

if [  -n "${ZSH_VERSION:-}" ]; then
        DIR="$(readlink -f -- "${(%):-%x}")"
        scriptDir="$(dirname $DIR)"
else

    scriptDir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

fi

source $scriptDir/common.sh
