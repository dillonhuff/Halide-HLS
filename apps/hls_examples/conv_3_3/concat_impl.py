import os
import re

width = 4
outName = 'big_conv2d_{0}_0.v'.format(str(1080*1920/ width))
f = open(outName, 'w')
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

newStr = ''
for line in open(outName, 'r').readlines():
    m = re.match('^module hls_target \(', line)
    if m:
        print 'matched on line:', line, m.group(0)
        newStr += 'module top (\n'
    else:
        newStr += line
        # newStr += line.replace("ap_clk", "CLK")


fStr = open(outName, 'w').write(newStr)
