# /usr/bin/env python

import os,sys
from string import Template
import csv
from subprocess import run
import shlex

sh_file_content_template='''
#!/usr/bin/env bash

python3 ./gen_varistor.py
'''.lstrip()

main_sh_file_content_template='''
#!/usr/bin/env bash

# don't edit this file directly !
# updated by library/symbols/gen_build.py

set -e

$content

'''.lstrip()

main_sh_build_sh_sub_script_template='''
# update for taobao-c

cd taobao-c
  ./build.sh
cd -

#
'''.lstrip()

def list_all_files():
  output=[]
  for root, dirs, files in os.walk(".", topdown = False):
    for name in files:
        if name.find('.py') > -1:
          output.append(os.path.join(root, name))
  return output

def filter_taobao_dirs(all_files):
  return filter(lambda x: x.find('./taobao-')>-1,all_files)

def filter_file_with_ext(all_files, ext_wanted):
  return filter(lambda x: x.find(ext_wanted) > -1 , all_files)

def list_py_files():
  temp = filter_taobao_dirs(list_all_files())
  return filter_file_with_ext(temp, '.py')

def list_sh_files():
  temp = filter_taobao_dirs(list_all_files())
  return filter_file_with_ext(temp,'.sh')

def create_sh_file():
  sh_dirs= map(lambda x: os.path.dirname(x), list(list_py_files()))
  return ['{}/build.sh'.format(sh_dir) for sh_dir in sh_dirs]

def get_sh_file_content(py_file_path):
  return sh_file_content_template.replace('gen_varistor.py',py_file_path)

def get_py_filename(sh_filename):
  temp_py_filename='-'.join(os.path.basename(os.path.dirname(sh_filename)).split('-')[1:])
  temp_py_filename = 'gen_{}.py'.format(temp_py_filename)
  return temp_py_filename

def get_sh_sub_script(path_name):
  return main_sh_build_sh_sub_script_template.replace('taobao-c',path_name)

def get_sh_script(sub_scripts):
  return main_sh_file_content_template.replace('$content', ''.join(sub_scripts))

def write_sh_file(sh_file_path, py_file_path):
  f_out = open(sh_file_path,'w')
  f_out.writelines(get_sh_file_content(py_file_path))
  f_out.close()

sh_paths = list(create_sh_file())
# print(sh_paths)
sh_paths_basepaths = [os.path.basename(os.path.dirname(sh_path)) for sh_path in sh_paths]

sh_subscripts = [get_sh_sub_script(sh_path_basepath) for sh_path_basepath in sh_paths_basepaths]

main_sh_file_content=get_sh_script(sh_subscripts)

# [(print('touch {}'.format(sh_filepath))) for sh_filepath in sh_paths]
[write_sh_file(sh_filepath, get_py_filename(sh_filepath)) for sh_filepath in sh_paths]

f_sh_main=open('build.sh','w')
f_sh_main.writelines(main_sh_file_content)