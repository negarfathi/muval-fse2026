import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.distributions import Categorical

class TemplatePolicy(nn.Module):
    def __init__(self, length_of_states, num_of_actions):
        super(TemplatePolicy, self).__init__()
        self.fc = nn.Linear(length_of_states, 256)
        self.fc2 = nn.Linear(256, 512)        
        self.head = nn.Linear(512, num_of_actions)
        self.out = nn.Softmax(dim=1)

    def forward(self, x):
        x = F.relu(self.fc(x))
        x = F.relu(self.fc2(x))        
        x = self.out(self.head(x))
        return x


# class FCResBlock(nn.Module):
#     def __init__(self, length_of_states, num_of_actions, nn_dim, use_layer_norm=True,):
#         self.use_layer_norm = use_layer_norm
#         super(FCResBlock, self).__init__()
#         self.norm_in = nn.LayerNorm(length_of_states)
#         self.norm_out = nn.LayerNorm(nn_dim)
#         self.transform1 = torch.nn.Linear(nn_dim, nn_dim)
#         torch.nn.init.normal_(self.transform1.weight, std=0.005)
#         self.transform2 = torch.nn.Linear(nn_dim, nn_dim)
#         torch.nn.init.normal_(self.transform2.weight, std=0.005)
#         self.out = torch.nn.Linear(nn_dim, num_of_actions) # adjust output shape

#     def forward(self, x):
#         if self.use_layer_norm:
#             x_branch = self.norm_in(x)
#         else:
#             x_branch = x
#         x_branch = self.transform1(F.relu(x_branch))
#         if self.use_layer_norm:
#             x_branch = self.norm_out(x_branch)
#         x_out = x + self.transform2(F.relu(x_branch))
#         x_out = self.out(x_out)
#         return x_out


# state value for now
# TODO: use action value?
class CriticPolicy(nn.Module):
    def __init__(self, length_of_states):
        super(CriticPolicy, self).__init__()
        self.fc = nn.Linear(length_of_states, 256)
        self.fc2 = nn.Linear(256, 512)        
        self.head = nn.Linear(512, 1)

    def forward(self, x):
        x = F.relu(self.fc(x))
        x = F.relu(self.fc2(x))        
        x = self.head(x)
        return x


class TemplatePolicyWithProgram(nn.Module):
    def __init__(self, length_of_states, num_of_actions):
        super(TemplatePolicyWithProgram, self).__init__()
        self.fc = nn.Linear(length_of_states+512, 128)
        self.fc2 = nn.Linear(128, 256)        
        self.head = nn.Linear(256, num_of_actions)
        self.out = nn.Softmax(dim=1)

    def forward(self, x):
        x = F.relu(self.fc(x))
        x = F.relu(self.fc2(x))        
        x = self.out(self.head(x))
        return x
