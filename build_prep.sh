#!/bin/bash
# Setup builds for ecen 5013
# this includes
# 1) Ensuring we've got the latest submodule synchronization for poky and any
#	other submodules.
# 2) Sets up the build environment
# 3) Adds necessary layers if they don't already exist in configuration
#
# This script is useful as a way to share common setup steps for other action scripts
# for the project.  Use . ./build_prep.sh to use the environment setup by this script with
# any subsequent build actions.
set -e
pushd `dirname $0`
echo "Clone poky repository as a submodule and ensure it is up to date"
git submodule init
git submodule sync
git submodule update
echo "cd into the poky directory"
pushd poky
echo "Initializing build environment"
source oe-init-build-env
set +e
bitbake-layers show-layers | grep "meta-ecen5013" > /dev/null
missing_layer=$?
set -e
if [ $missing_layer -ne 0  ]; then
	echo "Adding meta-ecen5013 layer"
	bitbake-layers add-layer ../../meta-ecen5013
fi
