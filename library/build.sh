#!/usr/bin/env bash

set -e

cd symbols/taobao-c
  ./build.sh
cd -

cd symbols/taobao-r
  ./build.sh
cd -

cd symbols/taobao-l
  ./build.sh
cd -
