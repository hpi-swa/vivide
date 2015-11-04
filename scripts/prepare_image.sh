#!/bin/bash
# Copyright (c) 2014-2015 Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2015 Fabio Niephaus, Google Inc.

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

# Check required arguments
# ==============================================================================
if [ "$TRAVIS_BRANCH" != "master" ]; then
    print_info "Nothing to do, because this is not the master branch"
    exit 0
elif [ -z "$PROJECT_HOME" ]; then
    print_info "\$PROJECT_HOME is not defined!"
    exit 1
elif [ -z "$SMALLTALK_CI_HOME" ]; then
    print_info "\$SMALLTALK_CI_HOME is not defined!"
    exit 1
elif [ -z "$SMALLTALK" ]; then
    print_info "\$SMALLTALK is not defined!"
    exit 1
fi
# ==============================================================================

# Set paths and files
# ==============================================================================
DEPLOY_PATH="$SMALLTALK_CI_HOME/deploy"
VIVIDE_IMAGE="Vivide-$SMALLTALK.image"
VIVIDE_CHANGES="Vivide-$SMALLTALK.changes"
DEPLOY_TARGET="https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/vivide/"
COG_VM="$SMALLTALK_CI_VMS/cogspurlinux/bin/squeak" # Spur by default
COG_VM_PARAM="-nosound -nodisplay"
# ==============================================================================

mkdir "$DEPLOY_PATH" && cd "$DEPLOY_PATH"

if [ $SMALLTALK == "Squeak4.6" ]; then
    print_info "Downloading Squeak4.6 image..."
    wget http://ftp.squeak.org/4.6/Squeak4.6-15102.zip
    unzip Squeak4.6-15102.zip
    wget http://ftp.squeak.org/sources_files/SqueakV46.sources.gz
    gunzip SqueakV46.sources.gz
    COG_VM="$SMALLTALK_CI_VMS/coglinux/bin/squeak"
elif [ $SMALLTALK == "Squeak5.0" ]; then
    print_info "Downloading Squeak5.0 image..."
    wget http://ftp.squeak.org/5.0/Squeak5.0-15113.zip
    unzip Squeak5.0-15113.zip
    wget http://ftp.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
else
    print_info "Downloading SqueakTrunk image..."
    wget http://build.squeak.org/job/Trunk/default/lastSuccessfulBuild/artifact/target/TrunkImage.zip
    unzip TrunkImage.zip
    wget http://ftp.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
fi

mv *.image "$VIVIDE_IMAGE"
mv *.changes "$VIVIDE_CHANGES"

print_info "Preparing Vivide image from $SMALLTALK image..."
EXIT_STATUS=0
"$COG_VM" $COG_VM_PARAM "$VIVIDE_IMAGE" "$PROJECT_HOME/scripts/prepare_image.st" || EXIT_STATUS=$?

if [ $EXIT_STATUS -eq 0 ]; then
    print_info "Uploading $VIVIDE_IMAGE and $VIVIDE_CHANGES..."
    curl -s -u "$DEPLOY_CREDENTIALS" -T "$VIVIDE_IMAGE" "$DEPLOY_TARGET" && print_info "$VIVIDE_IMAGE uploaded."
    curl -s -u "$DEPLOY_CREDENTIALS" -T "$VIVIDE_CHANGES" "$DEPLOY_TARGET" && print_info "$VIVIDE_CHANGES uploaded."
    print_info "Done!"
else
    print_info "Preparation of Vivide image failed."
fi

exit $EXIT_STATUS
