#!/bin/sh

set -e

MY_DIR=$(cd `dirname $0` && pwd)
SRCROOT=$(dirname $MY_DIR)
cd $SRCROOT

mkdir -p .dependencies
cd .dependencies

curl -fsO https://github.com/PureDarwin/xnubuild/releases/download/10.13/xnubuild.hdrs.tar.gz
tar xf xnubuild.hdrs.tar.gz
rm xnubuild.hrs.tar.gz

cd $SRCROOT
cp .travis/travis.xcconfig darwinbuild.xcconfig
