#!/usr/bin/env bash

# ---
# git add content/  # content 만 추가한 경우
git add .           # 이외 build
git commit -m "$1"
git push

# ---
rm -rf ../dircosine.github.io/*
cp -av ./public/* ../dircosine.github.io/

cd ../dircosine.github.io/

git add .
git commit -m "$1"
git push