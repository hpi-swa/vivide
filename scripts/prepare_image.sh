#!/bin/bash
# Copyright (c) 2014-2016 Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2015 Fabio Niephaus, Google Inc.

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

# Check required arguments
# ==============================================================================
if [[ "${TRAVIS_BRANCH}" != "master" ]] || [[ "${TRAVIS_PULL_REQUEST}" != "false" ]]; then
    print_info "Nothing to do, because this is not the master branch or a PR."
    exit 0
elif [[ "${TRAVIS_OS_NAME}" != "linux" ]]; then
    print_info "Nothing to do, because this is not a Linux build."
    exit 0
elif [[ -z "${TRAVIS_BUILD_DIR}" ]]; then
    print_info "\$TRAVIS_BUILD_DIR is not defined!"
    exit 1
elif [[ -z "${SMALLTALK_CI_HOME}" ]]; then
    print_info "\$SMALLTALK_CI_HOME is not defined!"
    exit 1
elif [[ -z "${TRAVIS_SMALLTALK_VERSION}" ]]; then
    print_info "\$TRAVIS_SMALLTALK_VERSION is not defined!"
    exit 1
fi
# ==============================================================================

# Set paths and files
# ==============================================================================
DEPLOY_PATH="${SMALLTALK_CI_HOME}/deploy"
VIVIDE_IMAGE="Vivide-${TRAVIS_SMALLTALK_VERSION}.image"
VIVIDE_CHANGES="Vivide-${TRAVIS_SMALLTALK_VERSION}.changes"
DEPLOY_TARGET="https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/vivide/"
COG_VM_PARAM=""
if [[ "$(uname -s)" == "Linux" ]]; then
    COG_VM_PARAM="-nosound -nodisplay"
fi
# ==============================================================================

mkdir "${DEPLOY_PATH}" && cd "${DEPLOY_PATH}"

if [[ "${TRAVIS_SMALLTALK_VERSION}" == "Squeak-5.1" ]]; then
    print_info "Downloading Squeak-5.1 image..."
    wget http://files.squeak.org/5.1/Squeak5.1-16548-32bit/Squeak5.1-16548-32bit.zip
    unzip Squeak5.1-16548-32bit.zip
    wget http://files.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
else
    print_info "Downloading Squeak-trunk image..."
    wget http://files.squeak.org/trunk/Squeak6.0alpha-17474-32bit/Squeak6.0alpha-17474-32bit.zip
    unzip Squeak6.0alpha-17474-32bit.zip
    wget http://files.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
fi

mv *.image "${VIVIDE_IMAGE}"
mv *.changes "${VIVIDE_CHANGES}"

print_info "Preparing Vivide image from ${TRAVIS_SMALLTALK_VERSION} image..."
EXIT_STATUS=0
"${SMALLTALK_CI_VM}" $COG_VM_PARAM "${VIVIDE_IMAGE}" "${TRAVIS_BUILD_DIR}/scripts/prepare_image.st" || EXIT_STATUS=$?

if [[ $EXIT_STATUS -eq 0 ]]; then
    print_info "Uploading ${VIVIDE_IMAGE} and ${VIVIDE_CHANGES}..."
    curl -s -u "${DEPLOY_CREDENTIALS}" -T "${VIVIDE_IMAGE}" "${DEPLOY_TARGET}" && print_info "${VIVIDE_IMAGE} uploaded."
    curl -s -u "${DEPLOY_CREDENTIALS}" -T "${VIVIDE_CHANGES}" "${DEPLOY_TARGET}" && print_info "${VIVIDE_CHANGES} uploaded."
    print_info "Done!"
else
    print_info "Preparation of Vivide image failed."
fi

exit $EXIT_STATUS
