#!/bin/bash

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

if [ "$TRAVIS_BRANCH" != "master" ]; then
    print_info "Nothing to do, because this is not the master branch"
    exit 0
fi

if [ -z "$PROJECT_HOME" ]; then
    print_info "\$PROJECT_HOME is not defined!"
    exit 1
elif [ -z "$FILETREE_CI_HOME" ]; then
    print_info "\$FILETREE_CI_HOME is not defined!"
    exit 1
fi

DEPLOY_PATH="$FILETREE_CI_HOME/deploy"

BASE_PATH="$FILETREE_CI_HOME"
CACHE_PATH="$BASE_PATH/cache"
VM_PATH="$CACHE_PATH/vms"
COG_VM_PATH="$VM_PATH/coglinux/bin/squeak"
COG_VM_PARAM="-nosound -nodisplay"

mkdir "$DEPLOY_PATH"
cd "$DEPLOY_PATH"

print_info "Downloading SqueakTrunk image..."
wget http://build.squeak.org/job/SqueakTrunk/lastSuccessfulBuild/artifact/target/TrunkImage.zip
unzip TrunkImage.zip

wget http://ftp.squeak.org/sources_files/SqueakV41.sources.gz
gunzip SqueakV41.sources.gz

mv *.image Vivide.image
mv *.changes Vivide.changes

print_info "Preparing Vivide image from SqueakTrunk image..."
EXIT_STATUS=0
"$COG_VM_PATH" $COG_VM_PARAM "Vivide.image" "$PROJECT_HOME/scripts/prepare_image.st" || EXIT_STATUS=$?

if [ $EXIT_STATUS -eq 0 ]; then
    print_info "Uploading Vivide image..."
    curl -T Vivide.image http://www.lively-kernel.org/babelsberg/vivide/
    curl -T Vivide.changes http://www.lively-kernel.org/babelsberg/vivide/
fi

exit $EXIT_STATUS