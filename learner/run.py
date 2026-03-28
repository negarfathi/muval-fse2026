import typing

from random import shuffle

import sys
import time
import pathlib

import pcsat_wrapper

class RunParam(typing.NamedTuple):
    epochs: int
    benches: typing.List[pathlib.Path]
    logfileprefix: str
    timeout: float
    prover_cmd: typing.List[str]
    end_of_epoch: typing.Callable[[int],None]

def run(
    param: RunParam,
    controller_maker : typing.Callable[[pathlib.Path, typing.IO], typing.Callable[[pcsat_wrapper.PCSatMsg.t], pcsat_wrapper.ControllerMsg.t]]
    ) -> None:
    benches = param.benches
    pcsat = pcsat_wrapper.PCSatWrapper(param.timeout,param.prover_cmd)

    for i in range(param.epochs):
        shuffle(benches)
        sys.stderr.write(f"Epoch {i} starts\n")

        time_epoch_start = time.perf_counter()
        res = {"Sat": 0, "Unsat": 0, "Fail": 0}
        fn = "{}-{:04d}.log".format(param.logfileprefix, i)

        sys.stderr.write(f"Open log file: {fn}\n")
        logfile = open(fn, "w")

        for file in benches:
            t0 = time.perf_counter()
            val = pcsat.run(file, controller_maker(file,logfile))
            t1 = time.perf_counter()

            if val['tag'] == "SAT":
                res["Sat"] += 1
            elif val['tag'] == "UNSAT":
                res["Unsat"] += 1
            else:
                res["Fail"] += 1
            
            sys.stderr.write("Episode: {:7s}({:8.04f}s), {}\n".format(val['tag'],t1-t0,file))

        sys.stderr.write(f"Epoch {i} ends: " + str(res) + "\n")
        param.end_of_epoch(i)
        
        time_epoch_end = time.perf_counter()
        x = typing.cast(typing.Any, { 'tag':"END" })
        x['time'] = time_epoch_end - time_epoch_start
        x['Sat'] = res['Sat']
        x['Unsat'] = res['Unsat']
        x['Fail'] = res['Fail']
        logfile.write(repr(x) + "\n")
        logfile.close()
