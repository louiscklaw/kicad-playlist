#!/usr/bin/env bash

docker run --rm -t -v $PWD/test_proj1:/kicad-project logickee/kicad-automation-scripts python3 -m kicadAutomation.eeschema.schematic run_erc /kicad-project/test.sch /kicad-project/ERC_output