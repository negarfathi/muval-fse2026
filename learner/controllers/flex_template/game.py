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
    # [[nd1,...,ndk], n_coeff, n_const, DisjConj, Coeff, Const, Null, Timeout]
    data: typing.Tuple[typing.List[int],int,int,bool,bool,bool,bool,bool]
    z3_logs: typing.List[typing.Tuple[int,int]]
    is_restarted: bool

States = typing.Tuple[float, typing.Union[STimeout,SSat,SUnsat,SFail,SAct]]

##
## type Actions = {
##   increase_conj : non-empty list of pairs of non-negative integers,
##     [(j_1,n_1), ..., (j_k, n_k)] increases the j_i-th component by ni (for i = 1,...,k)
##     Here the index j_i is 0 origin
##     If the j_i-th component does not exist, this action issues increase_disj
##     (n_i is almost ignored;
##       if n_i = 0, the action does noting
##       if n_i > 0, it issues increase_disj)
##     Note that the added component is not necessarily j_i
##   incleane_coeff : Optional[non-negative integer],
##   incleane_const : Optional[non-negative integer],
## }
##
## None represents infinity
##
class Actions(typing.NamedTuple):
    increase_conj: typing.List[typing.Tuple[int, int]]
    increase_coeff: typing.Optional[int]
    increase_const: typing.Optional[int]

