import numpy as np
import abc
import sys
import json
import torch
import os
from torch.distributions import Categorical
import torch.nn.functional as F
from models import TemplatePolicy
from models import TemplatePolicyWithProgram
from models import CriticPolicy
from types import SimpleNamespace
from random import choice


torch.backends.cudnn.deterministic = True
torch.backends.cudnn.benchmark = False
torch.autograd.set_detect_anomaly(True)

# test = "( set-logic LIA ) ( synth-inv inv-f ( ( n Int ) ( x Int ) ( y Int ) ) ) ( declare-primed-var n Int ) ( declare-primed-var x Int ) ( declare-primed-var y Int ) ( define-fun pre-f ( ( n Int ) ( x Int ) ( y Int ) ) Bool ( and ( = n 0 ) ( and ( >= x 0 ) ( and ( >= y 0 ) ( = x y ) ) ) ) ) ( define-fun trans-f ( ( n Int ) ( x Int ) ( y Int ) ( n! Int ) ( x! Int ) ( y! Int ) ) Bool ( or ( and ( = x n ) ( and ( = n! n ) ( and ( = x! x ) ( = y! y ) ) ) ) ( and ( not ( = x n ) ) ( and ( = n! n ) ( and ( = x! ( - x 1 ) ) ( = y! ( - y 1 ) ) ) ) ) ) ) ( define-fun post-f ( ( n Int ) ( x Int ) ( y Int ) ) Bool ( => ( = x n ) ( = y n ) ) ) ( inv-constraint inv-f pre-f trans-f post-f ) <EOF>"

# seqs = [test]

# weights: Array of numpy
def greedy(state, weights, num_of_states):
    assert (0 <= state and state < num_of_states)
    # s_one_hot = np.identity(num_of_states)[state]
    s_one_hot = np.zeros([num_of_states])
    s_one_hot[state] = 1.0
    q_vals = np.matmul(weights, s_one_hot)
    act = np.argmax(q_vals)
    return act

def epsilon_greedy(state, weights, num_of_states, num_of_actions, epsilon):
    assert (0.0 <= epsilon and epsilon <= 1.0)
    if np.random.uniform() < epsilon:
        return choice(range(num_of_actions))
    return greedy(state, weights, num_of_states)


# The abstract class defining the interface of agents of MDPs
# We assume that states and actions are coded as numbers
#   More precisely, the set of states is {0, 1, ..., num_of_states-1}
#   and the set of actions is {0, 1, ..., num_of_actions-1}
class MDPLearnerBase(abc.ABC):
    @abc.abstractmethod
    def __init__(self,agent_config):
        pass

    @abc.abstractmethod
    def act(self,s):
        pass

    def ack(self,s1,a1,r,s2):
        pass
    
    def episode_begin(self):
        pass
    
    def episode_end(self):
        pass

    def save(self,dir_name):
        pass

    def load(self,dir_name):
        pass

    @abc.abstractmethod
    def copy(self):
        pass


class QLearningEpsilonGreedy(MDPLearnerBase):
    def __init__(self,agent_config):
        self.num_of_actions = agent_config.num_of_actions
        self.num_of_states = agent_config.num_of_states
        self.is_learning = agent_config.is_learning

        # assert (agent_config.input_dir : pathlib.Path)
        self.epsilon = agent_config.epsilon
        self.alpha = agent_config.alpha
        self.gamma = agent_config.gamma

        self.w = np.zeros((self.num_of_actions, self.num_of_states))

    def act(self,state):
        return epsilon_greedy(state, self.w, self.num_of_states, self.num_of_actions, self.epsilon)

    def ack(self,s1,a1,r,s2):
        if not self.is_learning:
            return None
        a2 = greedy(s2, self.w, self.num_of_states)
        self.w[a1][s1] += self.alpha * (r + self.gamma * self.w[a2][s2] - self.w[a1][s1])

    def save(self,dir_path):
        assert dir_path is not None
        # assert (dir_path : pathlib.Path)

        np.savez_compressed(dir_path.joinpath("tables.npz"), w=self.w)
        # np.save(dir_path.joinpath("action_value_table.npy"), self.w)

        data = {}
        data['algorithm'] = "Epsilon Greedy Q-Learning"
        data['num of states'] = self.num_of_states
        data['num of actions'] = self.num_of_actions
        fp = dir_path.joinpath("info.json").open(mode="w")
        json.dump(data,fp)

    def load(self,dir_path):
        assert dir_path is not None

        # assert (dir : pathlib.Path)
        t = np.load(dir_path.joinpath("tables.npz"))
        self.w = t["w"]
        # self.w = np.load(dir_path.joinpath("action_value_table.npy"))

        # It might be desirable to check and validate dir_path/info.json
        # The current implementation omit this process

    # This class does nothing when an episode begins/ends
    # So episode_begin and episode_end are the default implementation

    def copy(self):
        new_agent_config = SimpleNamespace()
        new_agent_config.num_of_actions = self.num_of_actions
        new_agent_config.num_of_states = self.num_of_states
        new_agent_config.is_learning = self.is_learning

        new_agent_config.epsilon = self.epsilon
        new_agent_config.alpha = self.alpha
        new_agent_config.gamma = self.gamma

        new_agent = self.__class__(new_agent_config)
        new_agent.w = self.w

        return new_agent


class MonteCarloEpsilonGreedy(MDPLearnerBase):
    def __init__(self,agent_config):
        self.num_of_actions = agent_config.num_of_actions
        self.num_of_states = agent_config.num_of_states
        self.is_learning = agent_config.is_learning

        self.epsilon = agent_config.epsilon
        self.alpha = agent_config.alpha
        self.gamma = agent_config.gamma

        self.w = np.zeros((self.num_of_actions, self.num_of_states))
        self.c = np.zeros((self.num_of_actions, self.num_of_states))


    def act(self, state):
        return epsilon_greedy(state, self.w, self.num_of_states, self.num_of_actions, self.epsilon)

    def ack(self,s1,a1,r,s2):
        # Just records the action-value-reward tuple
        self.ep.append((s1,a1,r))

    def episode_begin(self):
        self.ep = []
    
    def episode_end(self):
        # learn if the flag is true
        # (this function immediately returns if the flag is false)
        if not self.is_learning:
            return None

        g = 0
        while len(self.ep) > 0:
            (s,a,r) = self.ep.pop()
            g = self.gamma * g + r

            # We follows "first-visit MC"
            # So if the pair (s,a) is not the first appearance in the episode,
            # we do not learn from this pair
            is_found = False
            for (s1,a1,_r1) in self.ep:
                if s == s1 and a == a1:
                    is_found = True
            if is_found:
                continue

            # update the value
            sn = s
            an = a
            self.w[an][sn] = (self.w[an][sn] * self.c[an][sn] + g)/(self.c[an][sn] + 1)
            self.c[an][sn] += 1

    def save(self,dir_path):
        assert dir_path is not None
        # assert (dir_path : pathlib.Path)

        np.savez_compressed(dir_path.joinpath("tables.npz"), w=self.w, c=self.c)
        # np.save(dir_path.joinpath("action_value_table.npy"), self.w)
        # np.save(dir_path.joinpath("occurrence_count.npy"), self.c)

        data = {}
        data['algorithm'] = "Epsilon Greedy Monte Carlo"
        data['num of states'] = self.num_of_states
        data['num of actions'] = self.num_of_actions
        fp = dir_path.joinpath("info.json").open(mode="w")
        json.dump(data,fp)

    def load(self,dir_path):
        assert dir_path is not None
        # assert (dir : pathlib.Path)

        t = np.load(dir_path.joinpath("tables.npz"))
        self.w = t["w"]
        self.c = t["c"]
        # self.w = np.load(dir_path.joinpath("action_value_table.npy"))
        # self.c = np.load(dir_path.joinpath("occurrence_count.npy"))
        # It might be desirable to check and validate dir_path/info.json
        # The current implementation omit this process
    
    def copy(self):
        new_agent_config = SimpleNamespace()
        new_agent_config.num_of_actions = self.num_of_actions
        new_agent_config.num_of_states = self.num_of_states
        new_agent_config.is_learning = self.is_learning

        new_agent_config.epsilon = self.epsilon
        new_agent_config.alpha = self.alpha
        new_agent_config.gamma = self.gamma

        new_agent = self.__class__(new_agent_config)
        new_agent.w = self.w
        new_agent.c = self.c

        return new_agent


class Greedy(MDPLearnerBase):
    def __init__(self,agent_config):
        self.num_of_actions = agent_config.num_of_actions
        self.num_of_states = agent_config.num_of_states

        self.w = np.zeros((self.num_of_actions, self.num_of_states))

    def act(self,state):
        return greedy(state, self.w, self.num_of_states)

    def ack(self,s1,a1,r,s2):
        pass

    def save(self,dir_path):
        pass

    def load(self,dir_path):
        assert dir_path is not None
        # assert (dir : pathlib.Path)
        self.w = np.load(dir_path.joinpath("action_value_table.npy"))

        # It might be desirable to check and validate dir_path/info.json
        # The current implementation omit this process

    def copy(self):
        new_agent_config = SimpleNamespace()
        new_agent_config.num_of_actions = self.num_of_actions
        new_agent_config.num_of_states = self.num_of_states

        new_agent = self.__class__(new_agent_config)
        new_agent.w = self.w

        return new_agent


class MonteCarloPolicyGradient(MDPLearnerBase):
    def __init__(self,agent_config):
        self.num_of_actions = agent_config.num_of_actions
        self.length_of_states = agent_config.length_of_states
        self.is_learning = agent_config.is_learning
        self.gamma = agent_config.gamma
        
        self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        self.policy = TemplatePolicy(self.length_of_states, self.num_of_actions)
        # self.policy = TemplatePolicyWithProgram(self.length_of_states, self.num_of_actions)
        self.policy = self.policy.to(self.device)
        self.learning_rate = agent_config.alpha #1e-4
        self.optimizer = torch.optim.RMSprop(list(self.policy.parameters()), lr=self.learning_rate)

        # self.encoder = batch_encoder

        self.action_pool = []
        self.action_print = []
        self.reward_pool = []
        
    def act(self, state):
        # input state is a list of size: length_of_states
        # output: action number
        # print(state)
        state = torch.tensor(state, dtype=torch.float, device=self.device).unsqueeze(0)
        # program_repr = state[-1]
        # state = torch.tensor(state[:-1], dtype=torch.float, device=self.device).unsqueeze(0)
        
        # print(state.shape)
        # print(program_repr)
        # print(program_repr.shape)
        # state = torch.cat([state, program_repr], dim=1)
        action_num_probs = self.policy(state)
        action_m = Categorical(action_num_probs)
        action_num = action_m.sample()
        # print(action_num_probs)
        # print(action_num)
        # print(action_num.shape)
        # print(action_num.dtype)
        
        self.action_pool.append(action_m.log_prob(action_num))
        self.action_print.append(action_num_probs.detach())

        # must return .item() version. Otherwise it is sent to
        # the num_to_action funtion and is thus modified in-place
        # which then causes errors during loss.backward()
        return action_num.item()

    def ack(self,s1,a1,r,s2):
        # Just records the action-value-reward tuple
        self.ep.append((s2, r))
        # print(r)

    def episode_begin(self):
        self.action_pool = []
        self.action_print = []
        self.reward_pool = []
        self.ep = []
    
    def episode_end(self):
        if not self.is_learning:
            return None

        self.reward_pool = [p[1] for p in self.ep]
        # remove the first reward associated with None action
        self.reward_pool = self.reward_pool[1:]
        # remove the last dummy action
        self.action_pool = self.action_pool[:-1]

        # compute accumulative rewards
        
        # print(self.ep)        
        # print(len(self.ep))
        # print(self.action_pool)
        # print(len(self.action_pool))
        # print(self.reward_pool)
        # print(len(self.reward_pool))

        assert len(self.action_pool) == len(self.reward_pool)
        running_add = 0
        for i in reversed(range(len(self.reward_pool))):
            running_add = running_add * self.gamma + self.reward_pool[i]
            self.reward_pool[i] = running_add
                
        self.optimizer.zero_grad()
        # print(self.reward_pool)
        for i in range(len(self.reward_pool)):
            reward = self.reward_pool[i]
            # print(reward)
            loss = -self.action_pool[i] * (reward)
            loss.backward()
            
        self.optimizer.step()
        # print("Updated parameters.")
        # prf = torch.mean(torch.stack(self.action_print), 0)
        # print("Preferences: {}\n".format(prf))

    def save(self,dir_path):
        if not self.is_learning:
            print("Nothing to save.")
            
        assert dir_path is not None
        fn = "checkpoint.ckpt"
        fn = os.path.join(dir_path, fn)
        torch.save({
            'policy_state_dict': self.policy.state_dict(),
            'optimizer_state_dict': self.optimizer.state_dict(),
        }, fn)

        print("Models saved.")
        
        # # assert (dir_path : pathlib.Path)

        # np.save(dir_path.joinpath("action_value_table.npy"), self.w)
        # np.save(dir_path.joinpath("occurrence_count.npy"), self.c)

        # data = {}
        # data['algorithm'] = "Epsilon Greedy Monte Carlo"
        # data['num of states'] = self.num_of_states
        # data['num of actions'] = self.num_of_actions
        # fp = dir_path.joinpath("info.json").open(mode="w")
        # json.dump(data,fp)

    def load(self,dir_path):
        assert dir_path is not None
        fn = "checkpoint.ckpt"
        fn = os.path.join(dir_path, fn)
        checkpoint = torch.load(fn)
        self.policy.load_state_dict(checkpoint["policy_state_dict"])
        self.optimizer.load_state_dict(checkpoint["optimizer_state_dict"])
        if self.is_learning:
            self.policy.train()
            print("Models loaded (training).")
        else:
            self.policy.eval()
            print("Models loaded (evaluation).")
        
        # # assert (dir : pathlib.Path)

        # self.w = np.load(dir_path.joinpath("action_value_table.npy"))
        # self.c = np.load(dir_path.joinpath("occurrence_count.npy"))
        # # It might be desirable to check and validate dir_path/info.json
        # # The current implementation omit this process
    
    def copy(self):
        pass
        # new_agent_config = SimpleNamespace()
        # new_agent_config.num_of_actions = self.num_of_actions
        # new_agent_config.num_of_states = self.num_of_states
        # new_agent_config.is_learning = self.is_learning

        # new_agent_config.epsilon = self.epsilon
        # new_agent_config.alpha = self.alpha
        # new_agent_config.gamma = self.gamma

        # new_agent = self.__class__(new_agent_config)
        # new_agent.w = self.w
        # new_agent.c = self.c

        # return new_agent


class VanillaAC(MDPLearnerBase):
    def __init__(self,agent_config):
        self.num_of_actions = agent_config.num_of_actions
        self.length_of_states = agent_config.length_of_states
        self.is_learning = agent_config.is_learning
        self.gamma = agent_config.gamma
        
        self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        self.actor = TemplatePolicy(self.length_of_states, self.num_of_actions)
        self.actor = self.actor.to(self.device)
        self.critic = CriticPolicy(self.length_of_states)
        self.critic = self.critic.to(self.device)
        self.learning_rate = 5e-5
        self.actor_optimizer = torch.optim.RMSprop(list(self.actor.parameters()), lr=self.learning_rate)
        self.critic_optimizer = torch.optim.RMSprop(list(self.critic.parameters()), lr=self.learning_rate)

        self.action_pool = []
        self.action_print = []
        self.reward_pool = []
        
        self.I = 1
        
    def act(self, state):
        # input state is a list of size: length_of_states
        # output: action number
        state = torch.tensor(state, dtype=torch.float, device=self.device).unsqueeze(0)

        action_num_probs = self.actor(state)
        action_m = Categorical(action_num_probs)
        action_num = action_m.sample()
        
        self.action_pool.append(action_m.log_prob(action_num))
        self.action_print.append(action_num_probs.detach())

        prev_state = self.ep[-1][0]
        # print("prev_state: {}".format(prev_state))
        # print("state: {}".format(state))
        if prev_state:
            prev_state = torch.tensor(prev_state, dtype=torch.float, device=self.device).unsqueeze(0)
            prev_score = self.critic(prev_state)
            current_score = self.critic(state)

            reward = self.ep[-1][2]
            # print("reward is {}:".format(reward))
            # compute TD
            delta = reward + self.gamma * current_score - prev_score
            # print("prev_score is: {}".format(prev_score))
            # print("cuurent score is: {}".format(current_score))
            # print("delta is: {}".format(delta))
            # print("I is: {}".format(self.I))

            self.critic_optimizer.zero_grad()
            # critic_loss = -prev_score * delta.item()
            # critic_loss = delta.pow(2).mean()
            mseloss = torch.nn.MSELoss()
            critic_loss = mseloss(prev_score, torch.tensor(reward, dtype=torch.float, device=self.device))
            # print("critic loss: {}".format(critic_loss))
            critic_loss.backward()
            self.critic_optimizer.step()

            self.actor_optimizer.zero_grad()
            actor_loss = -action_m.log_prob(action_num) * (delta.item()) * self.I
            actor_loss.backward()
            self.actor_optimizer.step()

            self.I = self.gamma * self.I
            print("updated parameters.")
        else:
            pass
        # must return .item() version. Otherwise it is sent to
        # the num_to_action funtion and is thus modified in-place
        # which then causes errors during loss.backward()
        return action_num.item()

    def ack(self,s1,a1,r,s2):
        # Just records the action-value-reward tuple
        self.ep.append((s1,a1,r,s2))

    def episode_begin(self):
        self.action_pool = []
        self.action_print = []
        self.reward_pool = []
        self.ep = []
    
    def episode_end(self):
        if not self.is_learning:
            return None

        self.I = 1

        prf = torch.mean(torch.stack(self.action_print), 0)
        print("Preferences: {}\n".format(prf))

    def save(self,dir_path):
        if not self.is_learning:
            print("Nothing to save.")
            
        assert dir_path is not None
        fn = "checkpoint.ckpt"
        fn = os.path.join(dir_path, fn)
        torch.save({
            'actor_state_dict': self.actor.state_dict(),
            'actor_optimizer_state_dict': self.actor_optimizer.state_dict(),
            'critic_state_dict': self.critic.state_dict(),
            'critic_optimizer_state_dict': self.critic_optimizer.state_dict(),
            
        }, fn)

        print("Models saved.")
        
        # # assert (dir_path : pathlib.Path)

        # np.save(dir_path.joinpath("action_value_table.npy"), self.w)
        # np.save(dir_path.joinpath("occurrence_count.npy"), self.c)

        # data = {}
        # data['algorithm'] = "Epsilon Greedy Monte Carlo"
        # data['num of states'] = self.num_of_states
        # data['num of actions'] = self.num_of_actions
        # fp = dir_path.joinpath("info.json").open(mode="w")
        # json.dump(data,fp)

    def load(self,dir_path):
        assert dir_path is not None
        fn = "checkpoint.ckpt"
        fn = os.path.join(dir_path, fn)
        checkpoint = torch.load(fn)
        self.actor.load_state_dict(checkpoint["actor_state_dict"])
        self.actor_optimizer.load_state_dict(checkpoint["actor_optimizer_state_dict"])
        self.critic.load_state_dict(checkpoint["critic_state_dict"])
        self.critic_optimizer.load_state_dict(checkpoint["critic_optimizer_state_dict"])

        if self.is_learning:
            self.actor.train()
            self.critic.eval()
            print("Models loaded (training).")
        else:
            self.actor.eval()
            self.critic.eval()
            print("Models loaded (evaluation).")
        
        # # assert (dir : pathlib.Path)

        # self.w = np.load(dir_path.joinpath("action_value_table.npy"))
        # self.c = np.load(dir_path.joinpath("occurrence_count.npy"))
        # # It might be desirable to check and validate dir_path/info.json
        # # The current implementation omit this process
    
    def copy(self):
        pass
        # new_agent_config = SimpleNamespace()
        # new_agent_config.num_of_actions = self.num_of_actions
        # new_agent_config.num_of_states = self.num_of_states
        # new_agent_config.is_learning = self.is_learning

        # new_agent_config.epsilon = self.epsilon
        # new_agent_config.alpha = self.alpha
        # new_agent_config.gamma = self.gamma

        # new_agent = self.__class__(new_agent_config)
        # new_agent.w = self.w
        # new_agent.c = self.c

        # return new_agent

class A2C(MDPLearnerBase):
    def __init__(self,agent_config):
        self.num_of_actions = agent_config.num_of_actions
        self.length_of_states = agent_config.length_of_states
        self.is_learning = agent_config.is_learning
        self.gamma = agent_config.gamma

        self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        self.actor = TemplatePolicy(self.length_of_states, self.num_of_actions)
        self.actor = self.actor.to(self.device)
        self.critic = CriticPolicy(self.length_of_states)
        self.critic = self.critic.to(self.device)
        self.learning_rate = agent_config.alpha #1e-4 #5e-5
        self.actor_optimizer = torch.optim.RMSprop(list(self.actor.parameters()), lr=self.learning_rate)
        self.critic_optimizer = torch.optim.RMSprop(list(self.critic.parameters()), lr=self.learning_rate)
        # self.actor_scheduler = torch.optim.lr_scheduler.StepLR(self.actor_optimizer, step_size=2*687, gamma=0.9)
        # self.critic_scheduler = torch.optim.lr_scheduler.StepLR(self.critic_optimizer, step_size=2*687, gamma=0.9)

        self.action_pool = []
        self.action_print = []
        self.reward_pool = []
        self.qvalue = []

    def act(self, state):
        # input state is a list of size: length_of_states
        # output: action number
        state = torch.tensor(state, dtype=torch.float, device=self.device).unsqueeze(0)
        # print(state)
        action_num_probs = self.actor(state)
        # if not self.is_learning:
        #     action_num = torch.argmax(action_num_probs)
        #     print(action_num_probs)
        #     # print("chosen action:{}".format(action_num))
        #     self.action_pool.append(0)
        action_m = Categorical(action_num_probs)
        action_num = action_m.sample()
        self.action_pool.append(action_m.log_prob(action_num))

        # self.action_print.append(action_num_probs.detach())

        # must return .item() version. Otherwise it is sent to
        # the num_to_action funtion and is thus modified in-place
        # which then causes errors during loss.backward()
        return action_num.item()

    def ack(self,s1,a1,r,s2):
        # Just records the action-value-reward tuple
        self.ep.append((s1,a1,r,s2))

    def episode_begin(self):
        self.action_pool = []
        self.action_print = []
        self.reward_pool = []
        self.qvalue = []

        self.ep = []

    def episode_end(self):
        if not self.is_learning:
            return None

        # compute critic values
        # print(self.ep)
        self.reward_pool = [p[2] for p in self.ep]
        
        # remove the first reward associated with None action
        self.reward_pool = self.reward_pool[1:]
        # remove the last dummy action (which is used to report the last reward)
        self.action_pool = self.action_pool[:-1]
        assert len(self.action_pool) == len(self.reward_pool)

        # Note that running_add = 0 gives us REINFORCE with baselines
        # running_add = next_value by critic is only used when the episode does not
        # reach the terminal state in which case the expected reward is sort of unknown
        # Note that if we still do this at the end of episode, it's still Monte Carlo and
        # hence not using the full power of actor-critic
        # Note that because actor-critic can handle this kind of situation, it is suitable
        # for continues tasks as well as episodic tasks
        # Also this is no Sutton's advantage
        running_add = 0
        for i in reversed(range(len(self.reward_pool))):
            running_add = running_add * self.gamma + self.reward_pool[i]
            self.reward_pool[i] = running_add

        # backward at each step
        self.actor_optimizer.zero_grad()
        self.critic_optimizer.zero_grad()
        for i,r in enumerate(self.reward_pool):
            qvalue = self.critic(torch.tensor(self.ep[i][3], dtype=torch.float, device=self.device))
            delta = r - qvalue.item()
            actor_loss = -self.action_pool[i] * delta
            actor_loss.backward()
            
            mseloss = torch.nn.MSELoss()
            critic_loss = mseloss(qvalue, torch.tensor(r, dtype=torch.float, device=self.device).unsqueeze(0))
            critic_loss.backward()

            # critic_loss = F.smooth_l1_loss(qvalue, torch.tensor(r, dtype=torch.float, device=self.device).unsqueeze(0))
            # critic_loss.backward()
            
            mseloss = torch.nn.MSELoss()
            critic_loss = mseloss(qvalue, torch.tensor(r, dtype=torch.float, device=self.device).unsqueeze(0))
            critic_loss.backward()
            
        self.actor_optimizer.step()
        self.critic_optimizer.step()
        
        # self.actor_scheduler.step()
        # self.critic_scheduler.step()
        # print("updated parameters")
        # # backward using mean
        # qvalues = [self.critic(torch.tensor(p[3], dtype=torch.float, device=self.device)) for p in self.ep]
        # # Do not use torch.tensor as that will erase the grad information
        # qvalues = torch.cat(qvalues)
        # all_rewards = [torch.tensor(r, dtype=torch.float, device=self.device).view([1]) for r in self.reward_pool]
        # all_rewards = torch.cat(all_rewards)

        # delta = all_rewards - qvalues

        # action_pool_tensors = torch.cat(self.action_pool)
        # delta_items = delta.detach()
        # actor_loss = -(action_pool_tensors * delta_items).mean()
        # critic_loss = delta.pow(2).mean()

        # self.actor_optimizer.zero_grad()
        # self.critic_optimizer.zero_grad()
        # actor_loss.backward()
        # critic_loss.backward()
        # self.actor_optimizer.step()
        # self.critic_optimizer.step()

        # prf = torch.mean(torch.stack(self.action_print), 0)
        # print("Preferences: {}\n".format(prf))

    def save(self,dir_path):
        if not self.is_learning:
            print("Nothing to save.")

        assert dir_path is not None
        fn = "checkpoint.ckpt"
        fn = os.path.join(dir_path, fn)
        torch.save({
            'actor_state_dict': self.actor.state_dict(),
            'actor_optimizer_state_dict': self.actor_optimizer.state_dict(),
            'critic_state_dict': self.critic.state_dict(),
            'critic_optimizer_state_dict': self.critic_optimizer.state_dict(),
            # 'actor_scheduler_state_dict':self.actor_scheduler.state_dict(),
            # 'critic_scheduler_state_dict':self.critic_scheduler.state_dict()
        }, fn)

        print("Models saved.")

        # # assert (dir_path : pathlib.Path)

        # np.save(dir_path.joinpath("action_value_table.npy"), self.w)
        # np.save(dir_path.joinpath("occurrence_count.npy"), self.c)

        # data = {}
        # data['algorithm'] = "Epsilon Greedy Monte Carlo"
        # data['num of states'] = self.num_of_states
        # data['num of actions'] = self.num_of_actions
        # fp = dir_path.joinpath("info.json").open(mode="w")
        # json.dump(data,fp)

    def load(self,dir_path):
        assert dir_path is not None
        fn = "checkpoint.ckpt"
        fn = os.path.join(dir_path, fn)
        checkpoint = torch.load(fn)
        self.actor.load_state_dict(checkpoint["actor_state_dict"])
        self.actor_optimizer.load_state_dict(checkpoint["actor_optimizer_state_dict"])
        self.critic.load_state_dict(checkpoint["critic_state_dict"])
        self.critic_optimizer.load_state_dict(checkpoint["critic_optimizer_state_dict"])
        # self.actor_scheduler.load_state_dict(checkpoint["actor_scheduler_state_dict"])
        # self.critic_scheduler.load_state_dict(checkpoint["critic_scheduler_state_dict"])

        if self.is_learning:
            self.actor.train()
            self.critic.train()
            print("Models loaded (training).")
        else:
            self.actor.eval()
            self.critic.eval()
            print("Models loaded (evaluation).")

        # # assert (dir : pathlib.Path)

        # self.w = np.load(dir_path.joinpath("action_value_table.npy"))
        # self.c = np.load(dir_path.joinpath("occurrence_count.npy"))
        # # It might be desirable to check and validate dir_path/info.json
        # # The current implementation omit this process

    def copy(self):
        pass
        # new_agent_config = SimpleNamespace()
        # new_agent_config.num_of_actions = self.num_of_actions
        # new_agent_config.num_of_states = self.num_of_states
        # new_agent_config.is_learning = self.is_learning

        # new_agent_config.epsilon = self.epsilon
        # new_agent_config.alpha = self.alpha
        # new_agent_config.gamma = self.gamma

        # new_agent = self.__class__(new_agent_config)
        # new_agent.w = self.w
        # new_agent.c = self.c

        # return new_agent
