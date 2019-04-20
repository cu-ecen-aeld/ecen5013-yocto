#!/bin/bash
# Kicks off the build for the ecen5013 custom image
set -e
pushd `dirname $0`
. ./build_prep.sh
bitbake core-image-ecen5013
