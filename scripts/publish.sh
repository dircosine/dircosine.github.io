#!/usr/bin/env bash

# 이 프로젝트 commit && push
git add 
git commit -m "$1"
git push

# 빌드 결과 copy && commit && push (for github pages)
rm -rf ../dircosine.github.io/*
cp -av ./public/* ../dircosine.github.io/

cd ../dircosine.github.io/

git add .
git commit -m "$1"
git push