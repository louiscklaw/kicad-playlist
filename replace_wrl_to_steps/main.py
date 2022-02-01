import os,sys
import pprint
import subprocess, shlex


for root, dirs, files in os.walk(r"c:\temp", topdown=False):
   for name in files:
      if name.find('kicad_mod') > 0:
        print(os.path.join(root, name))
        with open(os.path.join(root, name), 'r+') as fi:
          temp = fi.readlines()
          replaced = map(lambda x : x.replace('.wrl"', '.step"'), temp)
          fi.truncate(0)
          fi.seek(0)
          fi.write(''.join(replaced))
          fi.close()

  #  for name in dirs:
      # print(os.path.join(root, name))

# dir *.kicad_mod /b/s

# powershell -Command "(gc C:\temp\3\Connector.pretty\Banana_Jack_1Pin.kicad_mod) -replace 'wrl', 'step' | Out-File -encoding ASCII C:\temp\3\Connector.pretty\Banana_Jack_1Pin.kicad_mod"

