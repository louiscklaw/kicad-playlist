#!/usr/bin/env python3

import os,sys
from pprint import pprint

single_lib='''
#
# VAR_BLUE_101
#
DEF VAR_BLUE_101 R 0 10 N N 1 F N
F0 "R" 100 100 50 H V L CNN
F1 "VAR_BLUE_101" 100 0 50 H V L CNN
F2 "taobao-variable-resistors:VAR-BLUE" 0 0 50 H I C CNN
F3 "" 0 0 50 H I C CNN
$FPLIST
 footprint-lib:VAR_*
$ENDFPLIST
DRAW
T 0 -70 -80 50 0 0 0 U Normal 0 C C
S -40 -100 40 100 0 1 10 N
P 3 0 1 0 -75 100 -75 50 75 -50 N
X ~ 1 0 150 50 D 50 50 1 1 P
X ~ 2 0 -150 50 U 50 50 1 1 P
ENDDRAW
ENDDEF
'''.strip()

single_dcm='''
$CMP VAR_BLUE_101
D variable resistor
K R r res resistor VAR_BLUE_101 VAR_BLUE_101
F ~
$ENDCMP
'''.strip()

container_lib='''
EESchema-LIBRARY Version 2.4
#encoding utf-8
$content$
#
#End Library
'''.strip()

container_dcm='''
EESchema-DOCLIB  Version 2.0
#
$content$
#
#End Doc Library
'''.strip()

def read_csv_file():
  f_csv=open('./list.csv','r')
  return list(map(lambda x: x.strip(), f_csv.readlines()))


var_resistors = read_csv_file()

libs=list(map(lambda x: single_lib.replace('VAR_BLUE_101',x),var_resistors))
dcms=list(map(lambda x: single_dcm.replace('VAR_BLUE_101',x),var_resistors))

# pprint(libs)

f_lib=open('./taobao-variable-resistors.lib','w')
f_lib.writelines(container_lib.replace('$content$','\n'.join(libs)))

f_dcm=open('./taobao-variable-resistors.dcm','w')
f_dcm.writelines(container_lib.replace('$content$','\n'.join(dcms)))
