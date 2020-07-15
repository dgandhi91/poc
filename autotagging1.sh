#!/bin/sh

#get highest tags on master
VERSION=`git describe master --tags --abbrev=0`
echo "Latest Tag Version: $VERSION"

#get current pom version
POM_VERSION=mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep -v '\['
echo "Pom Version in auto tagging: $POM_VERSION"
