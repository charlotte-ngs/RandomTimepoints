#!/bin/bash

PARDIR=/Users/peter/Data/Projects/GitHub/charlotte-ngs/RandomTimepoints
BRANCH=gh-pages
cd $PARDIR
if [ ! -d "$BRANCH" ];then
  mkdir $BRANCH
fi

cd $BRANCH

PROJ=RandomTimepoints
GITHUBURL="https://github.com/charlotte-ngs/${PROJ}.git"
echo $GITHUBURL
git clone $GITHUBURL

cd $PROJ
git checkout -b $BRANCH
# check
git branch

MASTER=master
git branch -d $MASTER
# check
git branch

git rm -rf *

git add .
git commit -m"First commit of new branch $BRANCH"
git push origin $BRANCH
git status
