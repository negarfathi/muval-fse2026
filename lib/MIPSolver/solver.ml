open Core
open Common
open Common.Ext
open MIP.Problem
open Ast
open Ast.LogicOld

module type SolverType = sig
  type result = Sat of model | Unsat

  val check_sat : Atom.t list -> sort_env_set -> result
end

module Make (Cfg : Config.ConfigType) : SolverType = struct
  let config = Cfg.config

  type result = Sat of model | Unsat

  (** GurobiInterface.solve ~write_fname:"" *)
  let solve =
    match config.engine with
    | Config.Glpk -> Lp_glpk.solve ~term_output:config.verbose
    | Config.Gurobi -> assert false

  module Debug =
    Debug.Make ((val Debug.Config.(if config.verbose then enable else disable)))

  let check_sat atoms env =
    MIP.Problem.of_atoms atoms |> solve |> function
    | Ok (_, pmap) ->
        Sat
          (List.map (Set.to_list env) ~f:(fun (tvar, sort) ->
               Lp.PMap.find_opt (lp_var_of_tvar tvar sort) pmap |> function
               | Some sol -> (
                   match sort with
                   | T_int.SInt ->
                       ( (tvar, sort),
                         Some
                           (Term.of_value (get_dtenv ())
                           @@ Value.Int (Z.of_float sol)) )
                   | T_real.SReal ->
                       ( (tvar, sort),
                         Some
                           (Term.of_value (get_dtenv ())
                           @@ Value.Real (Q.of_float sol)) )
                   | _ -> failwith "Type of lp var mast be int or real.")
               | None -> ((tvar, sort), None)))
    | Error _ -> Unsat
end
