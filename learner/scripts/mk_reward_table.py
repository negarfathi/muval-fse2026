import argparse
import json
import sys
import pathlib

#
# To ignore useless fields when evaluating each line of the log
#
def SAct(data, z3_logs, is_restarted):
    return None

def Actions(increase_conj, increase_disj, increase_coeff, increase_const):
    return None

#
# Main part
#
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Making the Reward Table from a Log (standard input).')

    bench_name = ""
    table = {}

    for line in sys.stdin:
        d = eval(line)
        
        if 'tag' not in d:
            continue

        if d['tag'] == "START":
            bench_name = pathlib.Path(d['file']).name
        
        if d['tag'] == "SAT" or d['tag'] == "UNSAT" or d['tag'] == "TIMEOUT":
            table[bench_name] = float(d['time'])
    
    json.dump(table, fp=sys.stdout, indent=4)
    print("")
