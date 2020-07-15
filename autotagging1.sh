#!/bin/sh

#get highest tags on master
VERSION=`git describe master --tags --abbrev=0`
echo "Latest Tag Version: $VERSION"

#get current pom version
echo "Pom Version: ${POM_VERSION}"
