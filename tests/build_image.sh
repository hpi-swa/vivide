#!/bin/bash

case "$ST" in

  Vivide-base)
    cd $IMAGES_PATH
    mkdir -p Squeak4.5
    cd Squeak4.5
    wget -q http://placebo.hpi.uni-potsdam.de/webhome/marcel.taeumel/travisci/vivide-base.zip
    unzip vivide-base.zip
    wget -q http://ftp.squeak.org/4.5/SqueakV41.sources.gz
    gunzip SqueakV41.sources.gz
    IMAGE_BASE_NAME=vivide-base
 
    # move the image components into the correct location
    mv *.sources $SOURCES_PATH
    mv ${IMAGE_BASE_NAME}.changes ../${IMAGE_TARGET_NAME}.changes
    mv ${IMAGE_BASE_NAME}.image ../${IMAGE_TARGET_NAME}.image
  ;;

  # default script as fallback
  *)
    ./$BUILDER_CI_HOME/build_image.sh
	exit $?
  ;;
esac

# success
exit 0