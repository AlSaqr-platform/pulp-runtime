#!/bin/bash -e

export PULPRT_TARGET=pulp_cluster
export PULPRUN_TARGET=pulp_cluster
export CONFIG_NO_FC=1

if [  -n "${ZSH_VERSION:-}" ]; then
        DIR="$(readlink -f -- "${(%):-%x}")"
        scriptDir="$(dirname $DIR)"
else

    scriptDir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

fi

# Absolute path to the checked-out SDK
export PULP_SDK_DIR=$(pwd)/../third_party/pulp-sdk
export PMSIS_DIR=$PULP_SDK_DIR/rtos/pmsis
export HAL_DIR=$PULP_SDK_DIR/rtos/hal
export ARCHI_DIR=$PULP_SDK_DIR/rtos/archi

# PULP chip or board you are targeting, e.g. pulpissimo, hero, gap9 …
export PMSIS_BOARD=pulp

source $scriptDir/common.sh
