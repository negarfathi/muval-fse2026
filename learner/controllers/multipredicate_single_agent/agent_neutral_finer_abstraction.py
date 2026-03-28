import typing
import copy

import learner_core
from . import game
from .agent_ABC import AgentABC

state_base = [2, 2, 2, 5, 5, 5, 5, 6, 6, 4]
action_base = [2, 2, 2, 2, 3, 3]

# max_of_base(base) returns (the maximum-value-of-the-number-following-the-base + 1)
def max_of_base(base: typing.List[int]) -> int:
    max = 1
    for i in base:
        max *= i
    return max

num_of_states = max_of_base(state_base) + 1
num_of_actions = max_of_base(action_base)

def encode(base: typing.List[int], digit: typing.List[int]) -> int:
    print("base=", base, " digit=", digit)
    assert(len(base)==len(digit))
    num = 0
    for i in range(len(base)):
        #print("i=",i, " digit[i]=", digit[i], " base[i]=", base[i])
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

# An abstract state is represented by a number { i : int | 0 <= i <= 1024 }
# 0 is the unique terminal state.
# To define the other states, let
# ~~~
# i0 = (abstraction nc[0])
#   0 if nc[0] = 0
#   1 if nc[0] = 1
#   2 if nc[0] = 2
#   3 if nc[0] = 3
#   4 if nc[0] >= 4
# i1 = (abstraction nc[1])
#   0 if nc[0] = 0
#   1 if nc[0] = 1
#   2 if nc[0] = 2
#   3 if nc[0] = 3
#   4 if nc[0] >= 4
# i2 = (abstraction nc[2])
#   0 if nc[0] = 0
#   1 if nc[0] = 1
#   2 if nc[0] = 2
#   3 if nc[0] = 3
#   4 if nc[0] >= 4
# i3 = (abstraction nc[3])
#   0 if nc[0] = 0
#   1 if nc[0] = 1
#   2 if nc[0] = 2
#   3 if nc[0] = 3
#   4 if nc[0] >= 4
# i4 = (abstraction of sc)
#   0 if sc = 0
#   1 if sc = 1
#   2 if sc = 2
#   3 if sc = 3
#   4 if sc = 4
#   5 if sc > 4
# i5 = (abstraction of sd)
#   0 if sd = 0
#   1 if sd = 1
#   2 if sd = 2
#   3 if sd = 3
#   4 if sd = 4
#   5 if sd > 4
# i6 = (0 < len(Z3_logs))
#   0 if len(Z3_logs) = 0
#   1 if len(Z3_logs) in [1,5]
#   2 if len(Z3_logs) in [6,10]
#   3 if len(Z3_logs) > 10
# sl = [f1, f2, f3, i0, i1, i2, i3, i4, i5, i6]
# ~~~
# Then
#     (abstract state) = (sl as a number) + 1
# where i5 is the most significant bit.

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
    # print("data", s.data)
    data = s.data[0][2]
    print("Hey!!", data)

    nc = copy.copy(data[0])       # the list of numbers of conjuncts
    sc = data[1]       # upper bound of the sum of the abs of coefficients
    if data[2] is None:
        sd = 0
    else:
        sd = data[2]       # upper bound of the sum of the abs of constants

    # ignore data[3]
    data.pop(3)

    # information about the unsat core
    f1 = int(data[3])
    f2 = int(data[4])
    f3 = int(data[5])
    # Ignoring the following flags to reduce the state space
    # f4 = s[6]

    # ensure that nc has at least 4 components (by filling 0)
    nc.extend([0,0,0,0])
    i = [0,0,0,0]
    for j in range(4):
        if nc[j] <= 3:
            i[j] = nc[j]
        else:
            i[j] = 4

    if sc is not None and sc <= 4:
        i4 = sc
    else:
        i4 = 5

    if sd is not None and sd <= 4:
        i5 = sd
    else:
        i5 = 5 

    if len(s.z3_logs) == 0:
        i6 = 0
    elif len(s.z3_logs) <= 5:
        i6 = 1
    elif len(s.z3_logs) <= 10:
        i6 = 2
    else:
        i6 = 3

    return encode(state_base, [f1,f2,f3,i[0],i[1],i[2],i[3],i4,i5,i6]) + 1

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


class UnbiasedFinerAgent(AgentABC):
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

        if type(s[1]) is game.SAct:
            t = typing.cast(game.SAct, s[1])
            acts = [num_to_action(act_num)]
            # print("t=", t)
            for _ in range(1,len(t.data)):
                # fill the empty actions to predicates other than the first one
                acts.append(num_to_action(0))
        else:
            acts = []

        return acts

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
