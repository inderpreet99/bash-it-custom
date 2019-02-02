#!/bin/bash
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
SUFFIX=$(date +%Y-%m-%d-%H%M%S)

# Setup Bash-it
grep -q -F 'BASH_IT_CUSTOM' ~/.bash_profile ~/.bashrc
if [[ "$?" != "0" ]]; then
    echo "Fixing ~/.bash_profile with BASH_IT_CUSTOM."
    sed -i."$SUFFIX" '/^export BASH_IT=/ s#$#\
export BASH_IT_CUSTOM="'"$BASEDIR"'"#' ~/.bash_profile
else
    echo "BASH_IT_CUSTOM already exists in ~/.bash_profile"
fi

# Run installers
for filename in ./installers/*.sh; do
    echo "*** Running $filename"
    sh $filename
done
