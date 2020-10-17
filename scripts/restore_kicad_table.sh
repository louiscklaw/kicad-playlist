#!/usr/bin/env bash

set -ex

cd kicad-config
  rsync -avzh --progress ./sym-lib-table /home/logic/.config/kicad/sym-lib-table

  rsync -avzh --progress ./fp-lib-table /home/logic/.config/kicad/fp-lib-table

cd -
