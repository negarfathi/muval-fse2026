from datetime import datetime
import json
import sys
import pathlib
from os import mkdir
from types import SimpleNamespace
from glob import glob

import random
import string

import run
import learner_core
from controllers.flex_template.controller import Controller
from controllers.flex_template.agent_neutral_finer_abstraction import UnbiasedFinerAgent
from controllers.flex_template.agent_flex_PG import PGAgent

def v_0_4_0_run(args, config):
    # Check if the necessarily keys exist
    for key in ["bench list", "log directry", "number of epochs", "agent", "prover", "auto restart"]:
        if key not in config:
            sys.stderr.write(f"ERROR: key {key} is missing in '{args.conf}'\n")
            exit(1)

    # checking keys in prover
    for key in ["command", "timeout"]:
        if key not in config["prover"]:
            sys.stderr.write(f"ERROR: key 'prover'.'{key}' is missing in '{args.conf}'\n")
            exit(1)

    # checking keys in agent
    def agent_key_missing_error(key):
        sys.stderr.write(f"ERROR: key 'agent'.'{key}' is missing in '{args.conf}'\n")
        exit(1)

    if "kind" not in config["agent"]:
        agent_key_missing_error("kind")

    if config["agent"]["kind"] in ["Epsilon Greedy", "Monte Carlo", "Monte Carlo Policy Gradient", "Vanilla Actor Critic", "A2C"]:
        for key in ["input dir", "output dir", "learn", "epsilon", "alpha", "gamma"]:
            if key not in config["agent"]:
                agent_key_missing_error(key)
    elif config["agent"]["kind"] == "Greedy":
        for key in ["input file"]:
            if key not in config["agent"]:
                agent_key_missing_error(key)
    else:
        sys.stderr.write(f"ERROR: unknown agent kind '{config['agent']['kind']}'\n")
        exit(1)

    # creates the benchmark list
    benches = []
    for bench in config["bench list"]:
        blist = list(glob(bench))
        benches.extend(blist)

    # generates the unique log directly, using the current time
    t = datetime.now()
    random_suffix = "".join([random.choice(string.ascii_lowercase + string.ascii_uppercase) for _ in range(8)])
    log_directry = config["log directry"] + "/a" + t.strftime("%Y%m%d-%H%M%S") + "-" + random_suffix
    sys.stderr.write(f"mkdir '{log_directry}'\n")
    mkdir(path=log_directry)

    # save the configuration to the log directry
    config_log_file_name = log_directry + "/config-" + t.strftime("%Y%m%d-%H%M%S") + ".json"
    config_log_file = open(config_log_file_name, "w")
    json.dump(config, fp=config_log_file, indent=4)
    config_log_file.write("\n")
    config_log_file.close()

    # # load the PCSat synthesizer configuration file,
    # # modify it, and save it
    # try:
    #     config_fp = open(config["prover"]["synthesizer config"], "r")
    #     pcsat_config = json.load(config_fp)
    #     config_fp.close()
    # except FileNotFoundError as err:
    #     sys.stderr.write(f"ERROR: PCSat configuration file '{config['prover']['synthesizer config']}' cannot be found\n")
    #     sys.stderr.write(f"  {err}\n")
    #     exit(1)
    # except json.decoder.JSONDecodeError as err:
    #     sys.stderr.write(f"ERROR: PCSat configuration file '{config['prover']['synthesizer config']}' cannot be parsed\n")
    #     sys.stderr.write(f"  {err}\n")
    #     exit(1)

    # pcsat_config[1]["solution_template"]["restart_threshold"] = config["auto restart"]

    # pcsat_config_log_file_name = log_directry + "/pcsat-config-" + t.strftime("%Y%m%d-%H%M%S") + ".json"
    # pcsat_config_log_file = open(pcsat_config_log_file_name, "w")
    # json.dump(pcsat_config, fp=pcsat_config_log_file, indent=4)
    # pcsat_config_log_file.write("\n")
    # pcsat_config_log_file.close()

    # # overwrite the current config file
    # pcsat_config_file = open(config["prover"]["synthesizer config"], "w")
    # json.dump(pcsat_config, fp=pcsat_config_file, indent=4)
    # pcsat_config_file.write("\n")
    # pcsat_config_file.close()

    # cerates prover and agent
    core_config = SimpleNamespace()
    if config["agent"]["kind"] == "PCSatAgent":
        assert False
    else:
        if config["agent"]["kind"] == "Epsilon Greedy":
            core_config.is_learning = bool(config["agent"]["learn"])
            core_config.epsilon = float(config["agent"]["epsilon"])
            core_config.alpha = float(config["agent"]["alpha"])
            core_config.gamma = float(config["agent"]["gamma"])
            coreClass = learner_core.QLearningEpsilonGreedy
        elif config["agent"]["kind"] == "Monte Carlo":
            core_config.is_learning = bool(config["agent"]["learn"])
            core_config.epsilon = float(config["agent"]["epsilon"])
            core_config.alpha = float(config["agent"]["alpha"])
            core_config.gamma = float(config["agent"]["gamma"])
            coreClass = learner_core.MonteCarloEpsilonGreedy
        elif config["agent"]["kind"] == "Monte Carlo Policy Gradient":
            core_config.is_learning = bool(config["agent"]["learn"])
            core_config.epsilon = float(config["agent"]["epsilon"])
            core_config.alpha = float(config["agent"]["alpha"])
            core_config.gamma = float(config["agent"]["gamma"])
            coreClass = learner_core.MonteCarloPolicyGradient
        elif config["agent"]["kind"] == "A2C":
            core_config.is_learning = bool(config["agent"]["learn"])
            core_config.epsilon = float(config["agent"]["epsilon"])
            core_config.alpha = float(config["agent"]["alpha"])
            core_config.gamma = float(config["agent"]["gamma"])
            coreClass = learner_core.A2C

        elif config["agent"]["kind"] == "Greedy":
            core_config = SimpleNamespace()
            coreClass = learner_core.Greedy
        else:
            sys.stderr.write(f"ERROR: unknown agent kind '{config['agent']['kind']}'\n")
            exit(1)

        if "reward" not in config["agent"]:
            config["agent"]["reward"] = "default"
        
        if config["agent"]["reward"] == "from table":
            if "reward table" not in config["agent"]:
                sys.stderr.write(f"ERROR: 'reward table' is not found in 'agent'\n")
                exit(1)
            
            # Read the 'reward table' file
            try:
                reward_table_fp = open(config["agent"]["reward table"], "r")
                reward_table = json.load(reward_table_fp)
                reward_table_fp.close()
            except FileNotFoundError as err:
                table_file_name = config["agent"]["reward table"]
                sys.stderr.write(f"ERROR: reward table file '{table_file_name}' cannot be found\n")
                sys.stderr.write(f"  {err}\n")
                exit(1)
            except json.decoder.JSONDecodeError as err:
                table_file_name = config["agent"]["reward table"]
                sys.stderr.write(f"ERROR: reward table file '{table_file_name}' cannot be parsed\n")
                sys.stderr.write(f"  {err}\n")
                exit(1)
            
            for file in benches:
                path = pathlib.Path(file)
                if path.name not in reward_table:
                    sys.stderr.write(f"ERROR: '{path.name}' cannot be found in the reward table\n")
                    exit(1)
            
            # save the table file to the log directry
            reward_table_log_file_name = log_directry + "/reward-table-" + t.strftime("%Y%m%d-%H%M%S") + ".json"
            reward_table_log_file = open(reward_table_log_file_name, "w")
            json.dump(reward_table, fp=reward_table_log_file, indent=4)
            reward_table_log_file.write("\n")
            reward_table_log_file.close()


        if config["agent"]["state abstraction"] == "finer":
            agent = UnbiasedFinerAgent(coreClass,core_config)
        elif config["agent"]["state abstraction"] == "tensor":
            agent = PGAgent(coreClass,core_config)
        else:
            sys.stderr.write(f"ERROR: unknown agent state abstracction '{config['agent']['state abstraction']}'\n")
            exit(1)
        
        if config["agent"]["input dir"] is not None:
            agent.load(pathlib.Path(config["agent"]["input dir"]))

    if config["auto restart"] is None:
        restart_threshold = None
    else:
        restart_threshold = int(config["auto restart"])

    timeout = float(config["prover"]["timeout"])
    c = Controller(agent, restart_threshold, timeout)

    # computes the prefix for log files
    logfileprefix = log_directry + "/d" + t.strftime("%Y%m%d-%H%M%S") + "-" + random_suffix

    prover_cmd = config['prover']['command']
    timeout = float(config['prover']['timeout'])
    epochs = int(config['number of epochs'])

    def end_of_epoch(i:int) -> None:
        # if i % 20 == 19:
        #     dn = log_directry + "/t" + t.strftime("%Y%m%d-%H%M%S") + "-" + random_suffix + ("-{:04d}".format(i))
        #     mkdir(path=dn)
        #     agent.save(pathlib.Path(dn))
        dn = log_directry + "/t" + t.strftime("%Y%m%d-%H%M%S") + "-" + random_suffix + ("-{:04d}".format(i))
        mkdir(path=dn)
        agent.save(pathlib.Path(dn))

    param = run.RunParam(epochs,benches,logfileprefix,timeout,prover_cmd,end_of_epoch)

    # the main function
    run.run(param,c.make)

    if config["agent"]["output dir"] is not None:
        agent.save(pathlib.Path(config["agent"]["output dir"]))




def exec(args, c):
    # Check if the necessarily keys exist
    for key in ["mode"]:
        if key not in c:
            sys.stderr.write(f"ERROR: key {key} is missing in '{args.conf}'\n")
            exit(1)
    
    # Check the mode
    if c["mode"] == "run":
        v_0_4_0_run(args, c)
    else:  
        sys.stderr.write(f"ERROR: the mode {c['mode']} is not supported\n")
        exit(1)
