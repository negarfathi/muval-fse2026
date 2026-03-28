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

#
# Main part
#
if __name__ == "__main__":
    files=[]
    for line in sys.stdin:
        line = line.rstrip()
        fl = glob(line + "/config*")
        fp = open(fl[0], "r")
        d = json.load(fp)
        fp.close()
        if d["version"] == [0,2,1] and d["auto restart"] is not None:
            print(line)
            for df in glob(line + "/d*.log"):
                subprocess.call(["grep", "END", df])
            files.append(line)
    cmd = ["scp", "-r"] + files + ["35.188.219.250:icml2021/tmp"]
    print(cmd)
    #subprocess.call(cmd)

