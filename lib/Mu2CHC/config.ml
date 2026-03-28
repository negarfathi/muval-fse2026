open Core
open Common.Util

type t = {
  optimizer : MuCLP.Optimizer.Config.t ext_file;
  qelim : MuCLP.Qelim.Config.t;
  coe : (int * int) option;
  verbose : bool;
}
[@@deriving yojson]

module type ConfigType = sig
  val config : t
end

let instantiate_ext_files cfg =
  let open Or_error in
  MuCLP.Optimizer.Config.load_ext_file cfg.optimizer >>= fun optimizer ->
  MuCLP.Qelim.Config.instantiate_ext_files cfg.qelim >>= fun qelim ->
  Ok { cfg with optimizer; qelim }

let load_ext_file = function
  | ExtFile.Instance x -> Ok (ExtFile.Instance x)
  | Filename filename -> (
      let open Or_error in
      try_with (fun () -> Yojson.Safe.from_file filename) >>= fun raw_json ->
      match of_yojson raw_json with
      | Ok x -> instantiate_ext_files x >>= fun x -> Ok (ExtFile.Instance x)
      | Error msg ->
          error_string
          @@ sprintf "Invalid Mu2CHC Configuration (%s): %s" filename msg)
