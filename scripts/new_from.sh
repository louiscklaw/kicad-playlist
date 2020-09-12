#!/usr/bin/env bash

set -x
rm -rf * .*

TEST=`echo $PWD|rev |cut -d'/' -f1 |rev`

git branch -D poc/$TEST
git checkout -b poc/$TEST

rsync -avz ../$1/ .

cd ./kicad

  mv *.kicad_pcb $TEST.kicad_pcb
  mv *.sch $TEST.sch
  mv *.pro $TEST.pro
  mv *-cache.lib $TEST-cache.lib

cd -
