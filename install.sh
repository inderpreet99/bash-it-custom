#!/bin/bash
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
SUFFIX=$(date +%Y-%m-%d-%H%M%S)

grep -q -F 'BASH_IT_CUSTOM' ~/.bash_profile ~/.bashrc

if [[ "$?" != "0" ]]; then
    sed -i."$SUFFIX" '/^export BASH_IT=/ s#$#\
export BASH_IT_CUSTOM="'"$BASEDIR"'"#' ~/.bash_profile
fi
