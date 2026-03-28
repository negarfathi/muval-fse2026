import pathlib
from random import shuffle
from datetime import datetime
import re
import sys
import argparse
import json
from os import mkdir
from glob import glob
import subprocess


fl = glob("/home/tsukada/work/fptprove/benchmarks/sygus-comp/comp/2019/Inv_Track/*/*.sl")
p = pathlib.Path("/home/tsukada/work/fptprove/benchmarks/SyGuS/pcsat_rl/")
shuffle(fl)
for file in fl:
    fp = pathlib.Path(file)
    fp_rel = fp.relative_to("/home/tsukada/work/fptprove/benchmarks/sygus-comp/comp/2019/Inv_Track/")
    extended_name = str(fp_rel.parent)+"-"+str(fp_rel.name)
    print(p/extended_name)
    
test_num = int(len(fl) * 0.2)
learn_num = len(fl)-test_num
print(test_num, learn_num, len(fl))
tests = fl[0:test_num]
learns = fl[(test_num):len(fl)]
print(len(tests), len(learns))
# print()
# print(tests)
# print()
# print(learns)

for file in tests:
    fp = pathlib.Path(file)
    fp_rel = fp.relative_to("/home/tsukada/work/fptprove/benchmarks/sygus-comp/comp/2019/Inv_Track/")
    extended_name = str(fp_rel.parent)+"-"+str(fp_rel.name)
    # print(p/"test"/extended_name)
    dist = p/"test"/extended_name
    cmd = ["cp", str(fp), str(dist)]
    print(cmd)
    subprocess.call(cmd)

for file in learns:
    fp = pathlib.Path(file)
    fp_rel = fp.relative_to("/home/tsukada/work/fptprove/benchmarks/sygus-comp/comp/2019/Inv_Track/")
    extended_name = str(fp_rel.parent)+"-"+str(fp_rel.name)
    dist = p/"learn"/extended_name
    cmd = ["cp", str(fp), str(dist)]
    print(cmd)
    subprocess.call(cmd)

# #
# # Main part
# #
# if __name__ == "__main__":
#     files=[]
#     for line in sys.stdin:
#         line = line.rstrip()
#         fl = glob(line + "/config*")
#         fp = open(fl[0], "r")
#         d = json.load(fp)
#         fp.close()
#         if d["version"] == [0,2,1] and d["auto restart"] is not None:
#             print(line)
#             for df in glob(line + "/d*.log"):
#                 subprocess.call(["grep", "END", df])
#             files.append(line)
#     cmd = ["scp", "-r"] + files + ["35.188.219.250:icml2021/tmp"]
#     print(cmd)
#     #subprocess.call(cmd)

