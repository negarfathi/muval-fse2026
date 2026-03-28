import typing
import learner_core

from . import game
from .agentABC import AgentABC

NUM_OF_STATES = 1024 + 1
NUM_OF_ACTIONS = 2 * 2 * 3 * 3 * 3

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
# sl = [f1, f2, f3, b1, b2, b3, b4, b5, b6, is_locally_timed_out]
# ~~~
# Then   
#     (abstract state) = (sl as a number via binary) + 1
# where b5 is the most significant bit.

def states_to_num(state : game.States) -> int:
    s = state[1]

    if isinstance(s, (game.STimeout, game.SSat, game.SUnsat, game.SFail)):
        return 0

    # Then type(s) = game.SAct
    assert(isinstance(s, game.SAct))
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

    sl = [f1, f2, f3, b1, b2, b3, b4, b5, b6, s.is_locally_timed_out]
    # print(sl)

    # calculate the number representation of sl
    a = 0
    for i,b in enumerate(sl):
        if b:
            a += 2**i

    return a + 1

def reward(state : game.States) -> float:
    r = -state[0]
    s = state[1]

    if isinstance(s, game.STimeout):
        r -= 10.0
    elif isinstance(s, (game.SSat, game.SUnsat)):
        r += 10.0

    return r

def num_to_action(num: int) -> game.Actions:
    assert (0 <= num and num < NUM_OF_ACTIONS)

    increase_conj = num % 2
    num //= 2
    increase_disj = num % 2
    num //= 2
    ce = num % 3
    num //= 3
    co = num % 3
    num //= 3
    to = num

    if ce == 2:
        increase_coeff = None
    else:
        increase_coeff = ce

    if co == 2:
        increase_const = None
    else:
        increase_const = co

    if to == 0:
        local_timeout : typing.Optional[int] = 3000
    elif to == 1:
        local_timeout = 10000
    else:
        local_timeout = None

    return game.Actions(increase_conj,
                        increase_disj,
                        increase_coeff,
                        increase_const,
                        local_timeout)


class Agent(AgentABC):
    def __init__(self, coreClass, coreConfig):
        coreConfig.num_of_actions = NUM_OF_ACTIONS
        coreConfig.num_of_states = NUM_OF_STATES

        self.core : learner_core.MDPLearnerBase =\
            typing.cast(learner_core.MDPLearnerBase, coreClass(coreConfig))

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

