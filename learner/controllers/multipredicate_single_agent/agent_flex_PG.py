import typing
import copy

import learner_core
from . import game
from .agent_ABC import AgentABC

length_of_states = 10 # 16
action_base = [2, 2, 2, 2, 3, 3]

# max_of_base(base) returns (the maximum-value-of-the-number-following-the-base + 1)
def max_of_base(base: typing.List[int]) -> int:
    max = 1
    for i in base:
        max *= i
    return max

num_of_actions = max_of_base(action_base)

def encode(base: typing.List[int], digit: typing.List[int]) -> int:
    assert(len(base)==len(digit))
    num = 0
    for i in range(len(base)):
        assert(0 <= digit[i] and digit[i] < base[i])
        num *= base[i]
        num += digit[i]
    return num

def decode(base: typing.List[int], num: int) -> typing.List[int]:
    assert(0 <= num and num < max_of_base(base))
    digit = [0] * len(base)
    for i in reversed(range(len(base))):
        assert(0 < base[i])
        digit[i] = (num % base[i])
        num //= base[i]
    return digit


def truncate_state(state : game.States) -> int:

    def pad_list(l, n):
      padded_l = l + [0] * (n - len(l))
      return padded_l

    s = state[1]

    if type(s) is game.STimeout:
        sl = [0] * length_of_states
        return sl
    elif type(s) is game.SSat:
        sl = [0] * length_of_states
        return sl
    elif type(s) is game.SUnsat:
        sl = [0] * length_of_states
        return sl
    elif type(s) is game.SFail:
        sl = [0] * length_of_states
        return sl

    # Then type(s) = game.SAct
    assert(type(s) == game.SAct)
    s = typing.cast(game.SAct, s)
    data = s.data

    nc = copy.copy(data[0])       # the list of numbers of conjuncts
    # sc = data[1]       # upper bound of the sum of the abs of coefficients
    # sd = data[2]       # upper bound of the sum of the abs of constants
    sc = data[1] if data[1] else -1      # upper bound of the sum of the abs of coefficients
    sd = data[2] if data[2] else -1      # upper bound of the sum of the abs of constants

    # information about the unsat core
    # f1 = data[3]
    # f2 = data[4]
    # f3 = data[5]
    
    f1 = 1 if data[3] else -1
    f2 = 1 if data[4] else -1
    f3 = 1 if data[5] else -1
    
    # Ignoring the following flags to reduce the state space
    # f4 = s[6]

    # ensure that nc has at least 4 components (by filling 0)
    # nc.extend([0,0,0,0])
    # i = [0,0,0,0]
    # for j in range(4):
    #     if nc[j] <= 3:
    #         i[j] = nc[j]
    #     else:
    #         i[j] = 4

    # if sc is not None and sc <= 4:
    #     i4 = sc
    # else:
    #     i4 = 5

    # if sd is not None and sd <= 4:
    #     i5 = sd
    # else:
    #     i5 = 5

    # if len(s.z3_logs) == 0:
    #     i6 = 0
    # elif len(s.z3_logs) <= 5:
    #     i6 = 1
    # elif len(s.z3_logs) <= 10:
    #     i6 = 2
    # else:
    #     i6 = 3

    out = [c for c in nc]
    out = out + [sc, sd, f1, f2, f3, len(s.z3_logs)]
    out = pad_list(out, length_of_states)

    return out

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

    act = decode(action_base, num)

    if act[4] == 2:
        increase_coeff = None
    else:
        increase_coeff = act[4]

    if act[5] == 2:
        increase_const = None
    else:
        increase_const = act[5]

    return game.Actions([(0,act[0]),(1,act[1]),(2,act[2]),(3,act[3])], increase_coeff, increase_const)


class PGAgent(AgentABC):
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
        assert sn != None
        act_num = self.core.act(sn)

        self.prev_state_num = sn
        self.prev_act_num = act_num

        self.prev_state = sn

        return num_to_action(act_num)
    
    # def ack(self, s: game.States) -> game.Actions:
    #     if self.coreClass == learner_core.MonteCarloPolicyGradient or \
    #     self.coreClass == learner_core.VanillaAC or self.coreClass == learner_core.A2C:
    #         # this is a list of size: length_of_states
    #         sn = truncate_state(s)
    #     else:
    #         sn = states_to_num(s)
    #     r = reward(s)

    #     if self.coreClass == learner_core.MonteCarloPolicyGradient or \
    #        self.coreClass == learner_core.VanillaAC or self.coreClass == learner_core.A2C:
    #         # self.core.ack(sn, r)
    #         self.core.ack(self.prev_state, self.prev_act_num, r, sn)
    #     else:
    #         if self.prev_state_num is not None:
    #             assert self.prev_act_num is not None
    #             self.core.ack(self.prev_state_num, self.prev_act_num, r, sn)


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


# class UnbiasedFinerAgent(AgentABC):
#     def __init__(self, coreClass, coreConfig):
#         coreConfig.num_of_actions = num_of_actions
#         coreConfig.num_of_states = num_of_states

#         self.core : learner_core.MDPLearnerBase = typing.cast(learner_core.MDPLearnerBase, coreClass(coreConfig))
#         self.prev_state_num : typing.Optional[int] = None
#         self.prev_act_num : typing.Optional[int] = None

#     def act(self, s: game.States) -> game.Actions:
#         sn = states_to_num(s)
#         r = reward(s)

#         if self.prev_state_num is not None:
#             assert self.prev_act_num is not None
#             self.core.ack(self.prev_state_num, self.prev_act_num, r, sn)

#         act_num = self.core.act(sn)

#         self.prev_state_num = sn
#         self.prev_act_num = act_num

#         return num_to_action(act_num)

#     def episode_begin(self):
#         self.prev_state_num = None
#         self.prev_act_num = None
#         self.core.episode_begin()

#     def episode_end(self):
#         self.core.episode_end()

#     def save(self,dir_name):
#         self.core.save(dir_name)

#     def load(self,dir_name):
#         self.core.load(dir_name)
