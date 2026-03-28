open Core
open Common.Util

type t = {
  verbose : bool;
  mip_solver : MIPSolver.Config.t ext_file;
  sat_solver : SATSolver.Config.t ext_file;
}
[@@deriving yojson]

module type ConfigType = sig
  val config : t
end

let instantiate_ext_files cfg =
  let open Or_error in
  SATSolver.Config.load_ext_file cfg.sat_solver >>= fun sat ->
  MIPSolver.Config.load_ext_file cfg.mip_solver >>= fun mip ->
  Ok { cfg with sat_solver = sat; mip_solver = mip }

let load_ext_file = function
  | ExtFile.Instance x -> Ok (ExtFile.Instance x)
  | Filename filename -> (
      let open Or_error in
      try_with (fun () -> Yojson.Safe.from_file filename) >>= fun raw_json ->
      match of_yojson raw_json with
      | Ok x -> instantiate_ext_files x >>= fun x -> Ok (ExtFile.Instance x)
      | Error msg ->
          error_string
          @@ sprintf "Invalid ZundaSmt Configuration (%s): %s" filename msg)
