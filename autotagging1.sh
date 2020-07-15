#!/bin/sh

#get highest tags on master
VERSION=`git describe --tags --abbrev=0`
echo "Latest Tag Version: $VERSION"

#get current pom version
echo "Pom Version in auto tagging: $1"
