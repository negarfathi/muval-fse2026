import pathlib
from random import shuffle
from datetime import datetime
import re
import sys
import argparse
import json
from os import mkdir
from glob import glob

import pandas as pd

#
# Generates a pandas data from a log directory
# The generated table has the following columns
#
#  Epoch : int,  the epoch of the data
#  Name : str,   the name of the benchmark file
#                TOTAL is a special name, where the summary of the epoch is given
#  SAT : int,    the number of SAT instances
#                this is 0 or 1 if the datum is for a benchmark file
#                this column can be >= 2 if name = TOTAL
#  UNSAT, TIMEOUT : int
#                similar to the above
#  Time : float, the time in seconds
#

def add_data(d, epoch, name, sat, unsat, timeout, time):
    d["Epoch"].append(epoch)
    d["Name"].append(str(name))
    d["SAT"].append(sat)
    d["UNSAT"].append(unsat)
    d["TIMEOUT"].append(timeout)
    d["time"].append(time)

#
# To ignore useless fields when evaluating each line of the log
#
def SAct(data, additional_data, z3_logs, is_restarted, program):
    return None

def Actions(increase_conj, increase_disj, increase_coeff, increase_const):
    return None

#
# Main part
#
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate Pandas data from logs.')

    parser.add_argument(
        '--dir',
        required=True,
        metavar='DIR',
        dest='dir',
        help='output directory'
    )

    parser.add_argument(
        'logs',
        metavar='LOGS',
        nargs='+',
        help='input log directories "aYYYYMMDD-TTMMSS-XXXXXXXX"'
    )

    args = parser.parse_args()
    outdir = pathlib.Path(args.dir)

    print(args.logs)

    for logdir in args.logs:
        path = pathlib.Path(logdir)
        print(f"Reading {path}...")
        loglist = sorted(path.glob('*.log'))
        
        d = {
            "Epoch": [],
            "Name" : [],
            "SAT" : [],
            "UNSAT" : [],
            "TIMEOUT" : [],
            "time" : []
        }

        flag=False
        for log in loglist:
            m = re.match("d([0-9]+)-([0-9]+)-([a-zA-Z]+)-([0-9]+).log", log.name)
            if not(m):
                continue
            
            epoch = int(m[4])
            logfp = log.open(mode="r")
            bench_name = ""

            for line in logfp:
                l = eval(line)
                
                if 'tag' not in l:
                    continue

                if l['tag'] == "START":
                    if flag is True:
                        print(f"  Missing data: Result of {bench_name} at epoch {epoch}")
                    flag=True
                    bench_name = pathlib.Path(l['file']).name
                
                if l['tag'] == "SAT":
                    flag=False
                    add_data(d, epoch, bench_name, 1, 0, 0, float(l['time']))
                
                if l['tag'] == "UNSAT":
                    flag=False
                    add_data(d, epoch, bench_name, 0, 1, 0, float(l['time']))
                
                if l['tag'] == "TIMEOUT":
                    flag=False
                    add_data(d, epoch, bench_name, 0, 0, 1, float(l['time']))
                
                if l['tag'] == "END":
                    add_data(d, epoch, 'TOTAL', int(l['Sat']), int(l['Unsat']), int(l['Fail']), float(l['time']))
        
        dt = {
            "Epoch": pd.Series(d["Epoch"], dtype="int64"),
            "Name" : pd.Series(d["Name"], dtype="string"),
            "SAT" : pd.Series(d["SAT"], dtype="int64"),
            "UNSAT" : pd.Series(d["UNSAT"], dtype="int64"),
            "TIMEOUT" : pd.Series(d["TIMEOUT"], dtype="int64"),
            "time" : pd.Series(d["time"], dtype="float64")
        }

        pdd = pd.DataFrame(dt)
        outpath = outdir / (path.name + ".pkl")
        pdd.to_pickle(outpath)
        print(f"  Generating data to '{str(outpath)}'")
