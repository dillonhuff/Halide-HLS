import os
import re

f = open('map_8.v', 'w')
directory  = './times_5/hls_target/impl/verilog/'
for filename in os.listdir(directory):
    if filename.endswith(".v"):
        print(os.path.join(directory, filename))
        vFileN = os.path.join(directory, filename)
        vFileText = open(vFileN, 'r').read()

        f.write(vFileText)
        f.write('\n\n')
        continue
    else:
        continue

f.close()

fStr = open('map_8.v', 'rw').readlines()
newStr = ''
for line in open('map_8.v', 'r').readlines():
    m = re.match('^module hls_target \(', line)
    if m:
        print 'matched on line:', line, m.group(0)
        newStr += 'module top (\n'
    else:
        newStr += line

fStr = open('map_8.v', 'w').write(newStr)
