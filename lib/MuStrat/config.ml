open Core
open Common.Util

type t = {
  optimizer : MuCLP.Optimizer.Config.t ext_file;
  chc_solver : PCSPSolver.Config.t ext_file;
  backup_chc_solver : PCSPSolver.Config.t ext_file;
  pcsp_solver : PCSPSolver.Config.t ext_file;
  pcsp_solver_determ : PCSPSolver.Config.t ext_file;
  determinize : bool;
  check_problem : bool;
  output_yes_no : bool;
  verbose : bool;
}
[@@deriving yojson]

module type ConfigType = sig
  val config : t
end

let instantiate_ext_files cfg =
  Or_error.(
    MuCLP.Optimizer.Config.load_ext_file cfg.optimizer >>= fun optimizer ->
    PCSPSolver.Config.load_ext_file cfg.chc_solver >>= fun chc_solver ->
    PCSPSolver.Config.load_ext_file cfg.backup_chc_solver
    >>= fun backup_chc_solver ->
    PCSPSolver.Config.load_ext_file cfg.pcsp_solver >>= fun pcsp_solver ->
    PCSPSolver.Config.load_ext_file cfg.pcsp_solver_determ
    >>= fun pcsp_solver_determ ->
    Ok
      {
        cfg with
        optimizer;
        chc_solver;
        backup_chc_solver;
        pcsp_solver;
        pcsp_solver_determ;
      })

let load_ext_file = function
  | ExtFile.Instance x -> Ok (ExtFile.Instance x)
  | Filename filename -> (
      let open Or_error in
      try_with (fun () -> Yojson.Safe.from_file filename) >>= fun raw_json ->
      match of_yojson raw_json with
      | Ok x -> instantiate_ext_files x >>= fun x -> Ok (ExtFile.Instance x)
      | Error msg ->
          error_string
          @@ sprintf "Invalid MuStrat Configuration (%s): %s" filename msg)
