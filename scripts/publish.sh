#!/usr/bin/env bash

# ---
# git add content/
git add .
git commit -m "$1"
git push

# ---
rm -rf ../dircosine.github.io/*
cp -av ./public/* ../dircosine.github.io/

cd ../dircosine.github.io/

git add .
git commit -m "$1"
git push