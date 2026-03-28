import typing

##
## type States = {time_used : float} * (STimeout + SSat + SUnsat + SAct(data:any,z3_logs:list[(int,int)]))
##
class STimeout(typing.NamedTuple):
    pass

class SSat(typing.NamedTuple):
    pass

class SUnsat(typing.NamedTuple):
    pass

class SFail(typing.NamedTuple):
    pass

class SAct(typing.NamedTuple):
    # [nd, nc, n_coeff, n_const, DisjConj, Coeff, Const, Null, Timeout]
    data: typing.Tuple[int,int,int,int,bool,bool,bool,bool,bool]
    z3_logs: typing.List[typing.Tuple[int,int]]
    is_restarted: bool
    is_locally_timed_out: bool

States = typing.Tuple[float, typing.Union[STimeout,SSat,SUnsat,SFail,SAct]]

##
## type Actions = {
##   increase_conj : non-negative integer,
##   increase_disj : non-negative integer,
##   incleane_coeff : Optional[non-negative integer],
##   incleane_const : Optional[non-negative integer],
##   local_timeout: non-negative integer (ms)
## }
##
## None represents infinite
##
class Actions(typing.NamedTuple):
    increase_conj: int
    increase_disj: int
    increase_coeff: typing.Optional[int]
    increase_const: typing.Optional[int]
    local_timeout: typing.Optional[int]

