#!/usr/bin/env bash

set -ex

docker build . -t logickee/pcb-cicd

docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_bom   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_drawings   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_drc   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_erc   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_plot   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_pnp   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_rfq   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_sch   &
docker run -t -v $PWD:/workspace  logickee/pcb-cicd make ci_step   &

wait