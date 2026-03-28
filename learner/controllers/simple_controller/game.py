import typing

##
## type States = {time_used : float} * (STimeout + SSat + SUnsat + SAct(data:any,z3_logs:list[(int,int)]))
##
class STimeout(typing.NamedTuple):
    total_time: float
    filename: str

class SSat(typing.NamedTuple):
    total_time: float
    filename: str

class SUnsat(typing.NamedTuple):
    total_time: float
    filename: str

class SFail(typing.NamedTuple):
    pass

class SAct(typing.NamedTuple):
    # [nd, nc, n_coeff, n_const, DisjConj, Coeff, Const, Null, Timeout]
    data: typing.Tuple[int,int,int,int,bool,bool,bool,bool,bool]
    # additional_data: typing.Tuple[int, int, float]
    z3_logs: typing.List[typing.Tuple[int,int]]
    is_restarted: bool
    # program: str


States = typing.Tuple[float, typing.Union[STimeout,SSat,SUnsat,SFail,SAct]]

##
## type Actions = {
##   increase_conj : non-negative integer,
##   increase_disj : non-negative integer,
##   incleane_coeff : Optional[non-negative integer],
##   incleane_const : Optional[non-negative integer],
## }
##
## None represents infinity
##
class Actions(typing.NamedTuple):
    increase_conj: int
    increase_disj: int
    increase_coeff: typing.Optional[int]
    increase_const: typing.Optional[int]

