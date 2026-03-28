import typing

import learner_core
from . import game
from .agent_ABC import AgentABC

# from autoencoder.autoencoder import *

num_of_states = 512 + 1
num_of_actions = 2 * 2 * 3 * 3
# num_of_actions = 5 * 5 * 7 * 7

length_of_states = 8 #11

# An abstract state is represented by a number { i : int | 0 <= i <= 512 }
# 0 is the unique terminal state.
# To define the other states, let
# ~~~
# b1 = (nd <= nc)
# b2 = (sc is None) or (2 <= sc)
# b3 = (sc is None) or (5 <= sc)
# b4 = (sd is None) or (2 <= sd)
# b5 = (sd is None) or (5 <= sd)
# b6 = (r < len(Z3_logs))
#
# sl = [f1, f2, f3, b1, b2, b3, b4, b5, b6]
# ~~~
# Then   
#     (abstract state) = (sl as a number via binary) + 1
# where b5 is the most significant bit.

def states_to_num(state : game.States) -> int:
    s = state[1]

    if type(s) is game.STimeout:
        return 0
    elif type(s) is game.SSat:
        return 0
    elif type(s) is game.SUnsat:
        return 0
    elif type(s) is game.SFail:
        return 0

    # Then type(s) = game.SAct
    assert(type(s) == game.SAct)
    s = typing.cast(game.SAct, s)
    data = s.data

    nd = data[0]       # number of disjuncts
    nc = data[1]       # number of conjuncts
    sc = data[2]       # upper bound of the sum of the abs of coefficients
    sd = data[3]       # upper bound of the sum of the abs of constants

    # information about the unsat core
    f1 = data[4]  
    f2 = data[5]
    f3 = data[6]
    # Ignoring the following flags to reduce the state space
    # f4 = s[7]

    b1 = (nd <= nc)
    b2 = (sc is None) or (2 <= sc)
    b3 = (sc is None) or (5 <= sc)
    b4 = (sd is None) or (2 <= sd)
    b5 = (sd is None) or (5 <= sd)
    b6 = (0 < len(s.z3_logs))

    sl = [f1, f2, f3, b1, b2, b3, b4, b5, b6]
    # print(sl)

    # calculate the number representation of sl
    a = 0
    for i,b in enumerate(sl):
        if b:
            a += 2**i

    return a + 1

def truncate_state(state : game.States) -> int:
    s = state[1]
    # device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
    if type(s) is game.STimeout:
        sl = [0] * length_of_states
        # sl.append(torch.zeros((1,512), device=device))
        return sl
    elif type(s) is game.SSat:
        sl = [0] * length_of_states
        # sl.append(torch.zeros((1,512), device=device))
        return sl
    elif type(s) is game.SUnsat:
        sl = [0] * length_of_states
        # sl.append(torch.zeros((1,512), device=device))
        return sl
    elif type(s) is game.SFail:
        sl = [0] * length_of_states
        # sl.append(torch.zeros((1,512), device=device))
        return sl

    # Then type(s) = game.SAct
    assert(type(s) == game.SAct)
    s = typing.cast(game.SAct, s)
    data = s.data
    # additional_data = s.additional_data
    
    # program = s.program
    # program_input = program.strip().split()
    # program_repr, _ = batch_encoder.encode([program_input])
    # program_repr = torch.cat(program_repr.split(1), dim=2).squeeze(0)
    
    # print(program_repr)
    # print(program_repr.shape)
    nd = data[0]       # number of disjuncts
    nc = data[1]       # number of conjuncts
    sc = data[2] if data[2] else -1      # upper bound of the sum of the abs of coefficients
    sd = data[3] if data[3] else -1      # upper bound of the sum of the abs of constants

    # nconstrs = additional_data[0]
    # npvars = additional_data[1]
    # nargs = additional_data[2]
    # information about the unsat core
    f1 = data[4]  
    f2 = data[5]
    f3 = data[6]
    # Ignoring the following flags to reduce the state space
    # f4 = s[7]

    # TODO: Could use len() directly
    # TODO: use language models on anther problem to learn a representation
    # Then we use that representation as static information for a single problems
    #
    # b6 = (0 < len(s.z3_logs))
    b6 = len(s.z3_logs)
    # sl = [nd, nc, sc, sd, b6]

    # sl = [nd, nc, sc, sd, b6, nconstrs, npvars, nargs, program_repr]
    # sl = [f1, f2, f3, nd, nc, sc, sd, b6, nconstrs, npvars, nargs]
    sl = [f1, f2, f3, nd, nc, sc, sd, b6]
    return sl

def reward(state : game.States) -> float:
    r = -state[0]
    s = state[1]

    if isinstance(s, game.STimeout):
        r -= 10.0
    elif type(s) in [game.SSat, game.SUnsat]:
        r += 10.0

    return r

def num_to_action(num: int) -> game.Actions:
    assert (0 <= num and num < num_of_actions)

    increase_conj = num % 2
    num //= 2
    increase_disj = num % 2
    num //= 2
    ce = num % 3
    num //= 3
    co = num

    if ce == 2:
        increase_coeff = None
    else:
        increase_coeff = ce

    if co == 2:
        increase_const = None
    else:
        increase_const = co

    return game.Actions(increase_conj,increase_disj,increase_coeff,increase_const)

# def num_to_action(num: int) -> game.Actions:
#     assert (0 <= num and num < num_of_actions)

#     increase_conj = num % 5
#     num //= 5
#     increase_disj = num % 5
#     num //= 5
#     ce = num % 7
#     num //= 7
#     co = num

#     if ce == 6:
#         increase_coeff = None
#     else:
#         increase_coeff = ce

#     if co == 6:
#         increase_const = None
#     else:
#         increase_const = co

#     return game.Actions(increase_conj,increase_disj,increase_coeff,increase_const)


class Agent(AgentABC):
    def __init__(self, coreClass, coreConfig):
        coreConfig.num_of_actions = num_of_actions
        if coreClass == learner_core.MonteCarloPolicyGradient or \
        coreClass == learner_core.VanillaAC or coreClass == learner_core.A2C:
            coreConfig.length_of_states = length_of_states
        else:
            coreConfig.num_of_states = num_of_states

        self.core : learner_core.MDPLearnerBase = typing.cast(learner_core.MDPLearnerBase, coreClass(coreConfig))
        self.prev_state_num : typing.Optional[int] = None
        self.prev_act_num : typing.Optional[int] = None

        self.prev_state = None

        self.coreClass = coreClass
    def act(self, s: game.States) -> game.Actions:
        if self.coreClass == learner_core.MonteCarloPolicyGradient or \
        self.coreClass == learner_core.VanillaAC or self.coreClass == learner_core.A2C:
            # this is a list of size: length_of_states
            sn = truncate_state(s)
        else:
            sn = states_to_num(s)
        r = reward(s)

        if self.coreClass == learner_core.MonteCarloPolicyGradient or \
           self.coreClass == learner_core.VanillaAC or self.coreClass == learner_core.A2C:
            # self.core.ack(sn, r)
            self.core.ack(self.prev_state, self.prev_act_num, r, sn)
        else:
            if self.prev_state_num is not None:
                assert self.prev_act_num is not None
                self.core.ack(self.prev_state_num, self.prev_act_num, r, sn)

        act_num = self.core.act(sn)

        self.prev_state_num = sn
        self.prev_act_num = act_num

        self.prev_state = sn

        return num_to_action(act_num)

    def episode_begin(self):
        self.prev_state_num = None
        self.prev_act_num = None
        self.core.episode_begin()
    
    def episode_end(self):
        self.core.episode_end()

    def save(self,dir_name):
        self.core.save(dir_name)

    def load(self,dir_name):
        self.core.load(dir_name)

class PCSatAgent(AgentABC):
    def __init__(self, coreClass, coreConfig):
        pass

    def act(self, s: game.States) -> game.Actions:
        ss = s[1]
        if isinstance(ss, game.SAct):
            increase_disj = 0
            increase_conj = 0
            increase_coeff: typing.Optional[int] = 0
            increase_const: typing.Optional[int] = 0

            if ss.data[4]:
                if (ss.data[0] + ss.data[1]) % 2 == 0:
                    increase_disj = 1
                else:
                    increase_conj = 1
            
            if ss.data[5]:
                increase_coeff = 1
            
            if ss.data[6]:
                if ss.data[3] >= 3:
                    increase_const = None
                else:
                    increase_const = 1
        
            return game.Actions(increase_conj=increase_conj, increase_disj=increase_disj, increase_const=increase_const, increase_coeff=increase_coeff)
        
        else:
            return game.Actions(0,0,0,0)


