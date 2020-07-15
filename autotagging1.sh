#!/bin/sh

#get highest tags across all branches, not just the current branch
VERSION=`git describe --tags --abbrev=0`
echo "Latest Tag Version: $VERSION"

#get current pom version
echo "Pom Version in auto tagging: $1"
