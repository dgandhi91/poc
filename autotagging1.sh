#!/bin/sh

#get highest tags across all branches, not just the current branch
LATEST_TAG_VERSION=`git describe --tags --abbrev=0`
echo "Latest Tag Version: $LATEST_TAG_VERSION"

#get current pom version
echo "Pom Version in auto tagging: $1"

if [$LATEST_TAG_VERSION != $1]; then
    git tag $1
    git push --tags
    echo "Tag created and pushed: $1"
else
    echo "Already a tag on this commit"
fi


