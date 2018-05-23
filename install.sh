#!/bin/bash
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
sed '/^export BASH_IT=/ s#$#\
export BASH_IT_CUSTOM="'"$BASEDIR"'"#' ~/.bash_profile

