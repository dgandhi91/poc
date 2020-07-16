#!/bin/sh

#get highest tags across all branches, not just the current branch
LATEST_TAG_VERSION=`git describe --tags --abbrev=0`
echo "Latest Tag Version: LATEST_TAG_VERSION"

#get current pom version
POM_VERSION = $1
echo "Pom Version in auto tagging: $POM_VERSION"

if "$LATEST_TAG_VERSION" != "$POM_VERSION"; then
    git tag "$POM_VERSION"
    git push --tags
    echo "Tag created and pushed: $POM_VERSION"
else
    echo "Already a tag on this commit"
fi


