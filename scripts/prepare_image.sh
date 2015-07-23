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
elif [ -z "$SMALLTALK" ]; then
    print_info "\$SMALLTALK is not defined!"
    exit 1
fi

DEPLOY_PATH="$FILETREE_CI_HOME/deploy"

BASE_PATH="$FILETREE_CI_HOME"
CACHE_PATH="$BASE_PATH/cache"
VM_PATH="$CACHE_PATH/vms"
COG_VM_PATH="$VM_PATH/coglinux/bin/squeak"
COG_VM_PARAM="-nosound -nodisplay"
VIVIDE_IMAGE="Vivide$SMALLTALK.image"
VIVIDE_CHANGES="Vivide$SMALLTALK.changes"

mkdir "$DEPLOY_PATH"
cd "$DEPLOY_PATH"

if [ $SMALLTALK == "Squeak4.6" ]; then
    print_info "Downloading Squeak4.6 image..."
    wget http://ftp.squeak.org/4.6/Squeak4.6-15102.zip
    unzip Squeak4.6-15102.zip

    wget http://ftp.squeak.org/4.6/SqueakV46.sources.zip
    unzip SqueakV46.sources.zip
else
    print_info "Downloading SqueakTrunk image..."
    wget http://build.squeak.org/job/SqueakTrunk/lastSuccessfulBuild/artifact/target/TrunkImage.zip
    unzip TrunkImage.zip

    wget http://ftp.squeak.org/sources_files/SqueakV41.sources.gz
    gunzip SqueakV41.sources.gz
fi

mv *.image "$VIVIDE_IMAGE"
mv *.changes "$VIVIDE_CHANGES"

print_info "Preparing Vivide image from $SMALLTALK image..."
EXIT_STATUS=0
"$COG_VM_PATH" $COG_VM_PARAM "$VIVIDE_IMAGE" "$PROJECT_HOME/scripts/prepare_image.st" || EXIT_STATUS=$?

if [ $EXIT_STATUS -eq 0 ]; then
    print_info "Uploading $VIVIDE_IMAGE and $VIVIDE_CHANGES..."
    curl -T "$VIVIDE_IMAGE" -u"fniephaus:$BINTRAY_KEY" "https://api.bintray.com/content/hpi-swa-lab/Vivide/Latest/$VIVIDE_IMAGE"
    curl -T "$VIVIDE_CHANGES" -u"fniephaus:$BINTRAY_KEY" "https://api.bintray.com/content/hpi-swa-lab/Vivide/Latest/$VIVIDE_CHANGES"
    print_info "Done!"
else
    print_info "Preparation of Vivide image failed."
fi

exit $EXIT_STATUS