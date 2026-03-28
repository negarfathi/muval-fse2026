open Ast.LogicOld

module Make (_ : Config.ConfigType) : sig
  val solve_formula : id:int option -> Formula.t -> MuCLP.Problem.solution

  (* solve hes need_example: return (_, None) if need_example is false but it runs fast *)
  val solve :
    id:int option ->
    bool ->
    bool ->
    MuCLP.Problem.t ->
    MuCLP.Problem.solution * int list option

  val solve_onlymu_onlyexists :
    id:int option ->
    bool ->
    int ->
    bool ->
    MuCLP.Problem.t ->
    MuCLP.Problem.solution * int list option

  val solve_onlynu_onlyforall :
    id:int option ->
    bool ->
    int ->
    bool ->
    MuCLP.Problem.t ->
    MuCLP.Problem.solution * int list option

  val solve_nobounds :
    bool ->
    int ->
    bool ->
    MuCLP.Problem.t ->
    MuCLP.Problem.solution * int list option
end
