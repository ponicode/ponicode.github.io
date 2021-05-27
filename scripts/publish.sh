#! /usr/bin/env bash

#
# /!\
# /!\ Disclaimer: Do no run this script locally.
# /!\ Designed for Github Workflow only
# /!\
#

SOURCE_DIRECTORY="docs"
DESTINATION_REPOSITORY_USERNAME="ponicode"
DESTINATION_REPOSITORY_NAME="ponicode.github.io"
TARGET_BRANCH="gh-pages"
COMMIT_MESSAGE="🦄"

TMP_DIR=`mktemp -d`
CURRENT_REPO=`pwd`

if [[ `git diff --name-only HEAD~1 HEAD package.json | wc -l ` -eq 1 ]]
then
    echo "Publishing on $DESTINATION_REPOSITORY_USERNAME/$DESTINATION_REPOSITORY_NAME repository"

    git clone --single-branch --branch $TARGET_BRANCH "https://$TOKEN@github.com/$DESTINATION_REPOSITORY_USERNAME/$DESTINATION_REPOSITORY_NAME.git" $TMP_DIR
    cp -r $SOURCE_DIRECTORY $TMP_DIR
    cd $TMP_DIR

    git config user.email 'aljosha@ponicode.com'
    git config user.name 'Aljosha Armitano'
    git add $SOURCE_DIRECTORY
    git commit -m $COMMIT_MESSAGE
    git push origin $TARGET_BRANCH

else
    echo "Nothing to publish"
fi
