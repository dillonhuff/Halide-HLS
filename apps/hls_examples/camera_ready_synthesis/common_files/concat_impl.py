import os
import re

def concat_verilog(app_name, num_pixels, width):
    outName = '{0}_{1}.v'.format(app_name, str(num_pixels / width))
    f = open(outName, 'w')
    directory  = './{0}/hls_target/impl/verilog/'.format(app_name)

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

    fStr = open(outName, 'w').write(newStr)

app_name = 'conv2d'
num_pixels = 200
width = 1

concat_verilog(app_name, num_pixels, width)

