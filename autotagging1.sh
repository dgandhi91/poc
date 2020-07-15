#!/bin/sh

#get highest tags across all branches, not just the current branch
VERSION=`git describe --tags $(git rev-list --tags --max-count=1)`
echo "Latest Tag Version: $VERSION"

