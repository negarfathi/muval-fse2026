open Core
open Ast.LogicOld

module Make (_ : Config.ConfigType) : sig
  val solve_formula :
    ?print_sol:bool -> Formula.t -> MuCLP.Problem.solution Or_error.t

  val solve :
    ?print_sol:bool -> MuCLP.Problem.t -> MuCLP.Problem.solution Or_error.t

  val solve_onlyforall :
    id:int option -> int -> MuCLP.Problem.t -> MuCLP.Problem.solution

  val solve_onlyexists :
    id:int option -> int -> MuCLP.Problem.t -> MuCLP.Problem.solution
end
