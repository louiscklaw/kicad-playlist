#!/usr/bin/env bash

# don't edit this file directly !
# updated by library/symbols/gen_build.py

set -e

# update for taobao-components

cd taobao-components
  ./build.sh
cd -

#
# update for taobao-fuse

cd taobao-fuse
  ./build.sh
cd -

#
# update for taobao-zd

cd taobao-zd
  ./build.sh
cd -

#
# update for taobao-board

cd taobao-board
  ./build.sh
cd -

#
# update for taobao-r

cd taobao-r
  ./build.sh
cd -

#
# update for taobao-osc

cd taobao-osc
  ./build.sh
cd -

#
# update for taobao-l

cd taobao-l
  ./build.sh
cd -

#
# update for taobao-arm-board

cd taobao-arm-board
  ./build.sh
cd -

#
# update for taobao-RM

cd taobao-RM
  ./build.sh
cd -

#
# update for taobao-bead

cd taobao-bead
  ./build.sh
cd -

#
# update for taobao-connector

cd taobao-connector
  ./build.sh
cd -

#
# update for taobao-button

cd taobao-button
  ./build.sh
cd -

#
# update for taobao-pinhead

cd taobao-pinhead
  ./build.sh
cd -

#
# update for taobao-allwinner

cd taobao-allwinner
  ./build.sh
cd -

#
# update for taobao-mounting-hole

cd taobao-mounting-hole
  ./build.sh
cd -

#
# update for taobao-transistor

cd taobao-transistor
  ./build.sh
cd -

#
# update for taobao-tc

cd taobao-tc
  ./build.sh
cd -

#
# update for taobao-tc-th

cd taobao-tc-th
  ./build.sh
cd -

#
# update for taobao-fpc

cd taobao-fpc
  ./build.sh
cd -

#
# update for taobao-relay

cd taobao-relay
  ./build.sh
cd -

#
# update for taobao-d

cd taobao-d
  ./build.sh
cd -

#
# update for taobao-c

cd taobao-c
  ./build.sh
cd -

#
# update for taobao-rpack

cd taobao-rpack
  ./build.sh
cd -

#
# update for taobao-cp

cd taobao-cp
  ./build.sh
cd -

#
# update for taobao-led

cd taobao-led
  ./build.sh
cd -

#
# update for taobao-sd

cd taobao-sd
  ./build.sh
cd -

#
# update for taobao-components-staging

cd taobao-components-staging
  ./build.sh
cd -

#
# update for taobao-varistor

cd taobao-varistor
  ./build.sh
cd -

#


