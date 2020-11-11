#!/usr/bin/env bash

set -ex

pushd symbols
    sh ./build.sh
popd

pushd footprint
    echo 'helloworld footprint build'
popd
