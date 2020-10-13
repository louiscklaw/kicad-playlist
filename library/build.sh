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

cd symbols/taobao-d
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

cd symbols/taobao-zd
  ./build.sh
cd -

cd symbols/taobao-tc
  ./build.sh
cd -

cd symbols/taobao-tc-th
  ./build.sh
cd -

cd symbols/taobao-sd
  ./build.sh
cd -

cd symbols/taobao-rpack
  ./build.sh
cd -

cd symbols/taobao-pinhead
  ./build.sh
cd -

cd symbols/taobao-varistor
  ./build.sh
cd -
