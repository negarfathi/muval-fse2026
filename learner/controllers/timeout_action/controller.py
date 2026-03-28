import typing

import sys
import time
import pathlib

from . import game
from . import agentABC
from pcsat_wrapper import PCSatMsg
from pcsat_wrapper import ControllerMsg

def action_to_string(a : game.Actions) -> str:
    s = ""
    for _ in range(a.increase_conj):
        s += "increase_conj\n"

    for _ in range(a.increase_disj):
        s += "increase_disj\n"

    if a.increase_coeff is None:
        s += "set_inf_coeff\n"
    else:
        for _ in range(a.increase_coeff):
            s += "increase_coeff\n"

    if a.increase_const is None:
        s += "set_inf_const\n"
    else:
        for _ in range(a.increase_const):
            s += "increase_const\n"
    
    s += "end\n"

    return s


class Controller:
    def __init__(self, agent : agentABC.AgentABC, restart_threshold : typing.Optional[int], timeout : float) -> None:
        self.agent = agent
        self.timeout = timeout
        self.restart_threshold = restart_threshold

    def make(self, inputFileName : pathlib.Path, logFileObj : typing.IO) -> typing.Callable[[PCSatMsg.t], ControllerMsg.t]:
        start_time = time.perf_counter()
        prev_time = start_time
        # local_timeout : int (ms)
        local_timeout : typing.Optional[int] = None
        is_locally_timed_out = False
        need_restart = False
        is_restarted = False
        z3_logs = typing.cast(typing.List[typing.Tuple[int,int]], [])

        print(repr({ 'tag':"START", 'file':inputFileName }), file=logFileObj)
        self.agent.episode_begin()


        def gen(msg : PCSatMsg.t, time_rest : float, current_time : float) -> ControllerMsg.t:
            nonlocal start_time, prev_time, local_timeout, is_locally_timed_out, need_restart, is_restarted, z3_logs

            if type(msg) == PCSatMsg.InputTimeout:
                if need_restart or is_restarted or is_locally_timed_out:
                    # If we need restarting, set 0 to "timeout" of the next iteration
                    # Restart flag will be set False, after issuing the restart command
                    return ControllerMsg.ActAndRead("0\n", time_rest)
                elif local_timeout is None:
                    return ControllerMsg.ActAndRead("null\n", time_rest)
                else:
                    local_timeout = typing.cast(int, local_timeout)
                    # Otherwise, calculates the local_timeout
                    local_time_rest = max(0, local_timeout - int(1000 * (current_time - prev_time)))
                    return ControllerMsg.ActAndRead(f"{local_time_rest}\n", time_rest)

            if type(msg) == PCSatMsg.CandidateInfo:
                msg = typing.cast(PCSatMsg.CandidateInfo, msg)
                z3_logs.append((msg.num_of_sat_constraints, msg.num_of_constraints))
                # if z3_logs is longer than the threshold, we needs restarting
                if self.restart_threshold is not None and len(z3_logs) >= self.restart_threshold:
                    need_restart = True
                return ControllerMsg.ActAndRead(None, time_rest)
            
            if type(msg) == PCSatMsg.TemplateExtension:
                msg = typing.cast(PCSatMsg.TemplateExtension, msg)
                time_spent = current_time - prev_time
                if need_restart:
                    need_restart = False
                    is_restarted = True
                    return ControllerMsg.ActAndRead("restart\n"+"end\n", time_rest)
                elif msg.data[8] and not is_locally_timed_out and not is_restarted:
                    # locally timed out
                    is_locally_timed_out = True
                    return ControllerMsg.ActAndRead("revert\n"+"end\n", time_rest)
                else:
                    s0 : game.States = (time_spent, game.SAct(msg.data, z3_logs, is_restarted, is_locally_timed_out))
                    print(repr({'tag':'ACT', 'time':time_spent, 'state':s0}), file=logFileObj)
                    act = self.agent.act(s0)
                    print(repr({"Action":act}), file=logFileObj)
                    z3_logs = []
                    is_restarted = False
                    is_locally_timed_out = False
                    local_timeout = act.local_timeout
                    prev_time = current_time
                    return ControllerMsg.ActAndRead(action_to_string(act), time_rest)


            if type(msg) in [PCSatMsg.Timeout, PCSatMsg.Sat, PCSatMsg.Unsat]:
                # record the total time
                total_time = current_time - start_time
                local_time = current_time - prev_time

                ## here log should contain both local_ and total_time
                ## The field names should be changed: 'time':local_time, 'total_time':total_time
                if type(msg) == PCSatMsg.Timeout:
                    s1 : game.States = (local_time, game.STimeout())
                    res = { 'tag':'TIMEOUT', 'time':total_time }
                elif type(msg) == PCSatMsg.Sat:
                    s1 = (local_time, game.SSat())
                    res = { 'tag':'SAT', 'time':total_time }
                elif type(msg) == PCSatMsg.Unsat:
                    s1 = (local_time, game.SUnsat())
                    res = { 'tag':'UNSAT', 'time':total_time }
                else:
                    # This will never happen
                    assert False

                self.agent.act(s1)
                self.agent.episode_end()

                print(repr(res), file=logFileObj)

                return ControllerMsg.Bye(res)
                
            # this position cannot be reached
            print(msg)
            assert False

        def controller_instance(msg : typing.Union[PCSatMsg.t, PCSatMsg.InvalidMessage]) -> ControllerMsg.t:
            if type(msg) == PCSatMsg.InvalidMessage:
                msg = typing.cast(PCSatMsg.InvalidMessage, msg)
                print("Fail: ", inputFileName, file=sys.stderr)

                lines = [msg.line]
                reader = msg.reader

                # Read the rest of inputs
                while True:
                    t1 = time.perf_counter()
                    time_rest = self.timeout - (t1 - start_time)
                    if time_rest < 0:
                        break
                    
                    line = reader.readline(timeout=time_rest)
                    if line is None:
                        break

                    lines.append(line)

                res = {'tag':'FAIL', 'filename':inputFileName, 'msgs':lines}
                print(repr(res), file=logFileObj)
                return ControllerMsg.Bye(res)
            else:
                msg = typing.cast(PCSatMsg.t, msg)
                t = time.perf_counter()
                time_rest = self.timeout - (t - start_time)
                return gen(msg, time_rest, t)

        return controller_instance

