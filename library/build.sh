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

cd symbols/taobao-cp
  ./build.sh
cd -

cd symbols/taobao-fuse
  ./build.sh
cd -

cd symbols/taobao-led
  ./build.sh
cd -

cd symbols/taobao-osc
  ./build.sh
cd -
