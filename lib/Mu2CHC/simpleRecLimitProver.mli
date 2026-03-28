open Ast.LogicOld

module Make (_ : Config.ConfigType) : sig
  val solve_formula : id:int option -> Formula.t -> MuCLP.Problem.solution
  val solve : id:int option -> MuCLP.Problem.t -> MuCLP.Problem.solution

  val solve_onlyforall :
    id:int option -> int -> MuCLP.Problem.t -> MuCLP.Problem.solution

  val solve_onlyexists :
    id:int option -> int -> MuCLP.Problem.t -> MuCLP.Problem.solution

  val solve_onlyforall_with_coe :
    id:int option -> int -> int -> MuCLP.Problem.t -> MuCLP.Problem.solution
end
