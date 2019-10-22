import os

f = open('map_8.v', 'w')
directory  = './times_5/hls_target/impl/verilog/'
for filename in os.listdir(directory):
    if filename.endswith(".v"):
        print(os.path.join(directory, filename))
        continue
    else:
        continue

f.close()
