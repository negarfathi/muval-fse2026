import typing

import learner_core
from . import game
from .agent_ABC import AgentABC

num_of_states = 64 + 1
num_of_actions = 2 * 2 * 3 * 3

# An abstract state is represented by a number { i : int | 0 <= i <= 64 }
# 0 is the unique terminal state.
# To define the other states, let
# ~~~
# (b0, b1) = (nd < nc, nd = nc)
# b2 = (sc is None) or (2 <= sc)
# b3 = (sc is None) or (5 <= sc)
# b4 = (sd is None) or (2 <= sd)
# b5 = (sd is None) or (5 <= sd)
# b6 = (r < len(Z3_logs))
#
# sl = [b0, b1, b2, b3, b4, b5]
#   This agent does not use the following information:
#     Unsat-core information (f1, f2, f3)
#     Z3_logs information (b6)
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

    b0 = (nd < nc)
    b1 = (nd == nc)
    b2 = (sc is None) or (2 <= sc)
    b3 = (sc is None) or (5 <= sc)
    b4 = (sd is None) or (2 <= sd)
    b5 = (sd is None) or (5 <= sd)
    b6 = (0 < len(s.z3_logs))

    sl = [b0, b1, b2, b3, b4, b5]
    # print(sl)

    # calculate the number representation of sl
    a = 0
    for i,b in enumerate(sl):
        if b:
            a += 2**i

    assert(0 <= a and a < num_of_states)
    return a + 1

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


class AgentNeutralNoFlagNoLog(AgentABC):
    def __init__(self, coreClass, coreConfig):
        coreConfig.num_of_actions = num_of_actions
        coreConfig.num_of_states = num_of_states

        self.core : learner_core.MDPLearnerBase = typing.cast(learner_core.MDPLearnerBase, coreClass(coreConfig))
        self.prev_state_num : typing.Optional[int] = None
        self.prev_act_num : typing.Optional[int] = None
    
    def act(self, s: game.States) -> game.Actions:
        sn = states_to_num(s)
        r = reward(s)

        if self.prev_state_num is not None:
            assert self.prev_act_num is not None
            self.core.ack(self.prev_state_num, self.prev_act_num, r, sn)

        act_num = self.core.act(sn)

        self.prev_state_num = sn
        self.prev_act_num = act_num

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
