import typing
import collections.abc

import learner_core
from . import game
from .agent_ABC import AgentABC

num_of_states = 1024 + 1
num_of_actions = 2 * 2 * 3 * 3

# An abstract state is represented by a number { i : int | 0 <= i <= 1024 }
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
# sl = [f1, f2, f3, b0, b1, b2, b3, b4, b5, b6]
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

    sl = [f1, f2, f3, b0, b1, b2, b3, b4, b5, b6]
    #print(sl)

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


class UnbiasedAgent(AgentABC):
    def __init__(self, coreClass, coreConfig):
        coreConfig.num_of_actions = num_of_actions
        coreConfig.num_of_states = num_of_states

        self.core_base : learner_core.MDPLearnerBase = typing.cast(learner_core.MDPLearnerBase, coreClass(coreConfig))
        self.cores : typing.List[learner_core.MDPLearnerBase] = []
        self.prev_state_num : typing.List[typing.Optional[int]] = []
        self.prev_act_num : typing.List[typing.Optional[int]] = []
        self.name_index_map : collections.abc.Mapping[str,int] = {}
    
    def act(self, s: game.States) -> game.Actions:
        sn = states_to_num(s)
        r = reward(s)

        # if sn == 0, the state s is a final state and thus the action affects all agents
        # otherwise, the action affects only the agent of name s.predicate_name
        if sn == 0:
            for i in range(len(self.cores)):
                if self.prev_state_num[i] is not None:
                    assert self.prev_act_num[i] is not None
                    self.cores[i].ack(self.prev_state_num[i], self.prev_act_num[i], r, sn)
            # The action is meaningless in this case
            # Use the action of core_base
            act_num = self.core_base.act(sn)

            self.prev_state_num = sn
            self.prev_act_num = act_num

            return num_to_action(act_num)

        else:
            sd = typing.cast(game.SAct, s[1])
            # if the agent for s.predicate_name exists, we should send ack to the agent
            # otherwise the target of the action is a new agent, hence we do not need to send ack
            if sd.predicate_name in self.name_index_map:
                i = self.name_index_map[sd.predicate_name]
                if self.prev_state_num[i] is not None:
                    assert self.prev_act_num[i] is not None
                    self.cores[i].ack(self.prev_state_num[i], self.prev_act_num[i], r, sn)
            else:
                # If the agent does not yet exist, we create a new agent
                self.cores.append(self.core_base.copy())
                self.prev_state_num.append(None)
                self.prev_act_num.append(None)
                self.name_index_map[sd.predicate_name] = len(self.cores)-1
                self.cores[-1].episode_begin()

            assert sd.predicate_name in self.name_index_map
            i = self.name_index_map[sd.predicate_name]

            act_num = self.cores[i].act(sn)

            self.prev_state_num[i] = sn
            self.prev_act_num[i] = act_num

            return num_to_action(act_num)
        

    def episode_begin(self):
        self.cores = []
        self.prev_state_num = []
        self.prev_act_num = []
        self.name_index_map = {}
    
    def episode_end(self):
        for i in range(len(self.cores)):
            self.cores[i].episode_end()

    def save(self,dir_name):
        self.core_base.save(dir_name)

    def load(self,dir_name):
        self.core_base.load(dir_name)
