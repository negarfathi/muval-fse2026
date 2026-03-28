import typing

import json
import re
import subprocess
import threading

import sys
ON_POSIX = 'posix' in sys.builtin_module_names

from lib.nonblocking_reader import NonblockReader

constraints_list = []
unsat_cores_list = []

def preprocess_programs(input_filename):
    with open(input_filename) as f:
        content = f.readlines()
        out = ""
        for i, line in enumerate(content):
            # print(line)
            if i + 1 == len(content):
                out += " <EOF>"
            else:
                line = re.sub("; (.*?)$", "", line)
                line = line.strip()
                line = re.sub("\(", " ( ", line)
                line = re.sub("\)", " ) ", line)
                out += line

    out = re.sub(" +", " ", out)
    string_representation = out.strip()
    return string_representation


# # Definition of the type for messages from PCSat
# class PCSatMsg:
#     # Sent when PCSat is timed out
#     class Timeout:
#         pass

#     # Sent when PCSat requires the agent to input the 'timeout' for the next step
#     class InputTimeout(typing.NamedTuple):
#         current_timeout: typing.Optional[int]

#     class CandidateInfo(typing.NamedTuple):
#         num_of_constraints: int
#         num_of_sat_constraints: int

#     class TemplateExtension(typing.NamedTuple):
#         predicate_name: str
#         data: typing.Tuple[int,int,int,int,bool,bool,bool,bool,bool]

#     class Unsat:
#         pass

#     class Sat:
#         pass

#     class InvalidMessage(typing.NamedTuple):
#         line: str
#         reader: typing.Any

#     t = typing.Union[Timeout, InputTimeout, CandidateInfo, TemplateExtension, Unsat, Sat]

class PCSatMsg:
    # Sent when PCSat is timed out
    class Timeout:
        pass

    # Sent when PCSat requires the agent to input the 'timeout' for the next step
    class InputTimeout(typing.NamedTuple):
        current_timeout: typing.Optional[int]

    class CandidateInfo(typing.NamedTuple):
        num_of_constraints: int
        num_of_sat_constraints: int

    class TemplateExtension(typing.NamedTuple):
        predicate_name: str
<<<<<<< HEAD
        data: typing.Tuple[int,int,int,int,bool,bool,bool,bool,bool]
        # (#constrs, #pvars, args)
        additional_data: typing.Tuple[int, int, float]
        # program: str
=======
        data: typing.Any
>>>>>>> e203c9096 (adding a new agent, of which abstract state space is finer)

    class Unsat:
        pass

    class Sat:
        pass

    class InvalidMessage(typing.NamedTuple):
        line: str
        reader: typing.Any

    t = typing.Union[Timeout, InputTimeout, CandidateInfo, TemplateExtension, Unsat, Sat]


# Definition of the type for messages from the controller
class ControllerMsg:
    # Sent when the dialogue shohuld terminate
    class Bye(typing.NamedTuple):
        result: typing.Any

    class ActAndRead(typing.NamedTuple):
        action: typing.Optional[str]
        timeout: float

    t = typing.Union[Bye, ActAndRead]

# Read
# --> MSG_from_PCSat + timeout
# <-- (MSG_to_PCSat * timeout) + "Bye"
#   "Bye" is a special message that terminates the dialogue
#   This is the unique way to terminates the dialogue

# def read_and_act(program, reader,writer,controller,init_timeout,res):
def read_and_act(reader,writer,controller,init_timeout,res):
    timeout : int = init_timeout
    msg : typing.Optional[PCSatMsg.t] = None

    while True:
        ## Read and parse the message from PCSat
        ## Then send it to the controller
        ## Then do the action requested by the controller

        # Read the next message from PCSat

        line = reader.readline(timeout=timeout)
        msg = None
        # print("entered")
        # print(line)
        # print("entered")

        # print("one done")
        # return
        # When readline() times out
        if line is None:
            msg = PCSatMsg.Timeout()
            # we replace line with the dummy string, which does not match any of the following patterns
            line=""

        m = re.match(r"#constrs: ([0-9]+)", line)
        if m:
            num_constrs = json.loads(m[1])
            continue
        m = re.match(r"constraints: (.*?)$", line)
        if m:
            # print(m[1])
            constrs = json.loads(m[1])
            constraints_list.extend(constrs["clauses"])
            continue

        m = re.match(r"#pvars: ([0-9]+)", line)
        if m:
            num_pvars = json.loads(m[1])
            continue

        m = re.match(r"#args: ([0-9]+)", line)
        if m:
            num_args = json.loads(m[1])
            continue

        # m = re.match(r"examples: (.*?)$", line)
        # if m:
        #     print(m[1])
        #     examples = json.loads(m[1])
        #     continue

        # m = re.match(r"candidates: (.*?)$", line)
        # if m:
        #     print(m[1])
        #     candidates = json.loads(m[1])
        #     continue

        # m = re.match(r"labeled bounds constraint: (.*?)$", line)
        # if m:
        #     print(m[1])
        #     labeled_bounds_constraint = json.loads(m[1])
        #     unsat_cores_list.append(labeled_bounds_constraint["constr"])
        #     continue

        # m = re.match(r"labeled constraint: (.*?)$", line)
        # if m:
        #     print(m[1])
        #     labeled_constraint = json.loads(m[1])
        #     unsat_cores_list.append(labeled_constraint["constr"])
        #     continue

        # m = re.match(r"unsat cores: (.*?)$", line)
        # if m:
        #     print(m[1])
        #     unsat_cores = json.loads(m[1])
        #     continue

        # # m = re.match(r"begin synthesizer", line)
        # # if m:
        # #     print("Matched head")
        # #     continue

        # m = re.match(r"begin constraints", line)
        # if m:
        #     print("Matched begin constraints")
        #     continue

        # m = re.match(r"[0-9]+: (.*?)$", line)
        # if m:
        #     print(m[1])
        #     constraints_list.append(m[1])
        #     continue

        # m = re.match(r"sort env: (.*?)", line)
        # if m:
        #     print("Matched sort")
        #     continue

        # m = re.match(r"wfpvs:", line)
        # if m:
        #     print("Matched wfpvs")
        #     continue

        # m = re.match(r"fnpvs:", line)
        # if m:
        #     print("Matched fnpvs")
        #     continue

        # m = re.match(r"end constraints", line)
        # if m:
        #     print("Matched end constraints")
        #     continue

        # m = re.match(r"begin candidate", line)
        # if m:
        #     print("Matched head")
        #     continue

        # m = re.match(r"begin examples", line)
        # if m:
        #     print("Matched examples")
        #     continue

        # m = re.match(r".+ given example instances .+", line)
        # if m:
        #     print("Matched examples header")
        #     continue

        # m = re.match(r".+ decided positive .+", line)
        # if m:
        #     print("Matched examples header")
        #     continue

        # m = re.match(r"begin synthesizer", line)
        # if m:
        #     print("Matched head.")
        #     continue

        # m = re.match(r"end synthesizer: ([0-9]\.?[0-9]+)", line)

        # if m:
        #     print(m[1])
        #     continue

        ## Pattern Mattching of Messages
        ##
        # print(line)
        # Message "reward"
        m = re.match(r"reward: ([0-9]+)/([0-9]+)", line)
        if m:
            msg = PCSatMsg.CandidateInfo(int(m[2]), int(m[1]))

        # Message "current timeout: [0-9]+|null"
        #   The solver requres 'timeout' (ms) available at this step
        m = re.match(r"^current timeout: ([a-z0-9]*)", line)
        if m:
            if m[1] == "null":
                msg = PCSatMsg.InputTimeout(None)
            else:
                msg = PCSatMsg.InputTimeout(int(m[1]))

        # Message "state of inv-f":
        #   The following part tells the current state
        #   The solver requires an action
        m = re.match(r"state of ([^:])*: (.*)", line)
        if m:
            # print(line)
            # Dedode the state and return
            data = json.loads(m[2])
            additional_data = [num_constrs, num_pvars, num_args]
            # print("Additional data: {}".format(additional_data))

            # msg = PCSatMsg.TemplateExtension(m[1], data)
            msg = PCSatMsg.TemplateExtension(m[1], data, additional_data)
            # msg = PCSatMsg.TemplateExtension(m[1], data, additional_data, program)

        # Message "unsat"
        #   This session has been finished
        if re.match(r"^unsat.*", line):
            msg = PCSatMsg.Unsat()

        # Message "sat":
        #   This session has been finished
        if re.match(r"^sat.*", line):
            msg = PCSatMsg.Sat()

        # Otherwise the message is invalid
        if msg is None:
            msg = PCSatMsg.InvalidMessage(line,reader)

        # if msg is None:
        #     # An invalid message
        #     # This will never happen
        #     # but we need to check it for typecheck
        #     assert (msg is not None)
        # print("msg is {}".format(msg))
        a : ControllerMsg.t = controller(msg)
        # print("a is {}".format(a))
        if type(a) == ControllerMsg.Bye:
            res['val'] = a.result
            return

        timeout = a.timeout
        # print(a.action)
        writer(a.action)

class PCSatWrapper:
    def __init__(self, timeout, prover_cmd):
        self.timeout = timeout
        self.prover_cmd = prover_cmd

    def run(self, input_filename, controller):
        # print(repr({ 'tag':"START", 'file':self.inputfile }), file=config.logfile)  # pylint: disable=no-member

        # program = preprocess_programs(input_filename)

        proc = subprocess.Popen(self.prover_cmd + [input_filename],
                                stdin=subprocess.PIPE,
                                stdout=subprocess.PIPE,
                                stderr=subprocess.STDOUT,
                                close_fds=ON_POSIX)

        # Define the writer function for the subprocess
        def writer(s):
            if s is not None:
                proc.stdin.write(s.encode("utf8"))
                proc.stdin.flush()

        # Create the (nonblocking) reader
        reader = NonblockReader(proc.stdout)

        res = {}
        # th = threading.Thread(target=read_and_act, args=(program, reader,writer,controller,self.timeout,res), daemon=True)
        th = threading.Thread(target=read_and_act, args=(reader,writer,controller,self.timeout,res), daemon=True)
        th.start()

        # start scanning the stdout of the subprocess
        #   this function ends either (i) stdout closes, or (ii) it times out
        reader.enqueue_output(timeout=self.timeout + 1)

        # Wait until the dialogue finishes
        th.join()

        # Finalize the subprocess
        proc.stdin.close()
        proc.stdout.close()
        if proc.poll() is None:
            #self.proc.kill()
            proc.terminate()
            proc.wait()
            assert proc.poll() is not None

        # constraints_set = list(set(constraints_list))
        # constraints_json = json.dumps(constraints_set)
        # with open("./constraints_data.json","w") as f:
        #     f.write(constraints_json)
        # print("Cosntraints data saved.")

        # unsat_cores_set = list(set(unsat_cores_list))
        # unsat_cores_json = json.dumps(unsat_cores_set)
        # with open("./unsat_cores_data.json","w") as f:
        #     f.write(unsat_cores_json)
        # print("Unsat cores data saved.")

        if 'val' in res:
            return res['val']
        else:
            return { 'tag':'FAIL' }
