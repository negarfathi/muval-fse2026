import typing
import abc
from . import game

class AgentABC(abc.ABC):

    def __init__(self, coreClass, coreConfig):
        pass
    
    @abc.abstractmethod
    def act(self, s: game.States) -> typing.List[game.Actions]:
        pass

    def episode_begin(self):
        pass
    
    def episode_end(self):
        pass

    def save(self,dir_name):
        pass

    def load(self,dir_name):
        pass
