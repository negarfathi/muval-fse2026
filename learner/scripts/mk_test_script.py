import pathlib
from random import shuffle
from datetime import datetime
import re
import sys
import argparse
import json
from os import mkdir
from glob import glob

#
# Main part
#
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Making Testing Scripts.')

    parser.add_argument(
        '--dir',
        required=True,
        metavar='DIR',
        dest='dir',
        help='absolute path to the directory for configuration files for the tests'
    )

    parser.add_argument(
        '--log',
        required=True,
        metavar='LOGDIR',
        dest='logdir',
        help='absolute path to the log directory'
    )

    args = parser.parse_args()

    dir_path = pathlib.Path(args.dir)
    log_path = pathlib.Path(args.logdir)

    commands = []

    for line in sys.stdin:
        line = line.rstrip()

        m = re.match(r"a([0-9]+)-([0-9]+)-([a-zA-Z]+)/d([0-9]+)-([0-9]+)-([a-zA-Z]+)-([0-9]+).log", line)

        if m:
            date = m[1]
            time = m[2]
            serial = m[7]
            salt = m[3]
            config_file_name = log_path / f"a{date}-{time}-{salt}" / f"config-{date}-{time}.json"
            model_dir_name = log_path / f"a{date}-{time}-{salt}" / f"t{date}-{time}-{salt}-{serial}"
            config_output = dir_path / f"config-for-testing-{date}-{time}-{salt}-{serial}.json"

            try:
                config_fp = open(config_file_name, "r")
                config_dict = json.load(config_fp)
                config_fp.close()
            except FileNotFoundError as err:
                sys.stderr.write(f"ERROR: configuration file '{config_file_name}' cannot be found\n")
                sys.stderr.write(f"  {err}\n")
                continue
            except json.decoder.JSONDecodeError as err:
                sys.stderr.write(f"ERROR: configuration file '{config_file_name}' cannot be parsed\n")
                sys.stderr.write(f"  {err}\n")
                continue
            
            config_dict["number of epochs"] = 3
            config_dict["bench list"] = ["benchmarks/sygus-comp/comp/2018/Inv_Track/*.sl"]
            config_dict["prover"]["timeout"] = 120.0
            config_dict["agent"]["input dir"] = str(model_dir_name)
            config_dict["agent"]["output dir"] = None
            config_dict["agent"]["learn"] = False
            config_dict["agent"]["epsilon"] = 0.0

            config_output_fp = open(config_output, "w")
            json.dump(config_dict, fp=config_output_fp, indent=4)
            config_output_fp.write("\n")
            config_output_fp.close()

            commands.append(f"python learner/main.py --config {config_output}")

        else:
            sys.stderr.write(f"Illegal input: {line}\n")
    
    shuffle(commands)
    for line in commands:
        print(line)
