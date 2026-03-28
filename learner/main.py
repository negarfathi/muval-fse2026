from random import shuffle
from datetime import datetime
import sys
import argparse
import json
from os import mkdir
from types import SimpleNamespace
from glob import glob

#
# Main part
#
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Reinforcement Learning of Constraint Solving.')
    parser.add_argument('--config', metavar='CONF', dest='conf', help='path to the configuration file', default='learner/config.json')
    args = parser.parse_args()

    try:
        config_fp = open(args.conf, "r")
        config_dict = json.load(config_fp)
        config_fp.close()
    except FileNotFoundError as err:
        sys.stderr.write(f"ERROR: configuration file '{args.conf}' cannot be found\n")
        sys.stderr.write(f"  {err}\n")
        exit(1)
    except json.decoder.JSONDecodeError as err:
        sys.stderr.write(f"ERROR: configuration file '{args.conf}' cannot be parsed\n")
        sys.stderr.write(f"  {err}\n")
        exit(1)

    # Check the version of the configuration file
    if [0,2,0] <= config_dict["version"] and config_dict["version"] <= [0,2,0]:
        from setup import v_0_2_0
        v_0_2_0.exec(args, config_dict)
    elif [0,2,1] <= config_dict["version"] and config_dict["version"] <= [0,2,1]:
        from setup import v_0_2_1
        v_0_2_1.exec(args, config_dict)
    elif [0,3,0] <= config_dict["version"] and config_dict["version"] <= [0,3,0]:
        from setup import v_0_3_0
        v_0_3_0.exec(args, config_dict)
    elif [0,4,0] <= config_dict["version"] and config_dict["version"] <= [0,4,0]:
        from setup import v_0_4_0
        v_0_4_0.exec(args, config_dict)
    elif [0,5,0] <= config_dict["version"] and config_dict["version"] <= [0,5,0]:
        from setup import v_0_5_0
        v_0_5_0.exec(args, config_dict)
    else:
        sys.stderr.write(f"ERROR: version mismatch\n")
        sys.stderr.write(f"  ther version of the configuration file '{args.conf}' is {config_dict['version']}, which this command does not support\n")
        exit(1)

