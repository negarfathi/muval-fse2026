(* solve MIP using Gurobi *)
open Core
open Ctypes
open Foreign
open Lp
open Lp_grb

let make_pmap vars xs =
  Stdlib.List.fold_left2
    (fun m k v -> Lp.PMap.add k v m)
    Lp.PMap.empty
    (List.map ~f:Poly.of_var vars)
    xs

module Var_attrs = struct
  type t = {
    objs : float list;
    lbs : float list;
    ubs : float list;
    types : Vt.t list;
    names : string list;
  }

  let vtype v =
    let open Var in
    match v.attr with
    | Continuous _ -> Vt.CONTINUOUS
    | General _ -> Vt.INTEGER
    | Binary -> Vt.BINARY

  let make objective vars =
    let obj =
      List.map ~f:(Poly.linear_coeff (Objective.to_poly objective)) vars
    in
    {
      objs = obj;
      lbs = List.map ~f:(fun v -> fst (Var.to_bound v)) vars;
      ubs = List.map ~f:(fun v -> snd (Var.to_bound v)) vars;
      types = List.map ~f:vtype vars;
      names = List.map ~f:Var.to_string vars;
    }
end

(* get 0-origin index of v in vars (Var.t list) *)
let rec idx_var (v : Var.t) = function
  | [] -> failwith (sprintf "cannot find %s in vars" v.name)
  | hd :: rest -> if Stdlib.(hd = v) then 0 else 1 + idx_var v rest

let idx vars = List.map ~f:(fun v -> idx_var v vars)

module Constr = struct
  type t = {
    linds : int list;
    lvals : float list;
    qrows : int list;
    qcols : int list;
    qvals : float list;
    sense : Cs.t;
    rhs : float;
    cname : string;
  }

  let to_sense c = if Cnstr.is_eq c then Cs.EQ else Cs.LT

  let of_cnstr vars cnstr =
    let dec = Poly.decompose (Cnstr.lhs cnstr) in
    let open Poly in
    {
      linds = idx vars dec.lvs;
      lvals = dec.lcs;
      qrows = idx vars dec.qv0s;
      qcols = idx vars dec.qv1s;
      qvals = dec.qcs;
      sense = to_sense cnstr;
      rhs = Cnstr.rhs cnstr;
      cname = Cnstr.name cnstr;
    }
end

let set_dir env model obj =
  if Objective.is_max obj then set_maximize env model
  else set_minimize env model

let add_obj_qterms env model vars dobj =
  let open Lp.Poly in
  match dobj.qcs with
  | [] -> ()
  | _ ->
      add_qpterms env model (idx vars dobj.qv0s) (idx vars dobj.qv1s) dobj.qcs

let add_constraints env model vars =
  List.iter ~f:(fun c ->
      let cr = Constr.of_cnstr vars c in
      match cr.qvals with
      | [] -> add_constr env model cr.linds cr.lvals cr.sense cr.rhs cr.cname
      | _ ->
          add_qconstr env model cr.linds cr.lvals cr.qrows cr.qcols cr.qvals
            cr.sense cr.rhs cr.cname)

(**gurobi foreign function*)
let set_param =
  foreign "GRBsetintparam" (env @-> string @-> int @-> returning int)

let set_output env flag =
  let _ = set_param env "OutputFlag" flag in
  ()

let solve ?(write_fname = "") problem =
  let obj, cnstrs = Problem.obj_cnstrs problem in
  let dobj = Poly.decompose (Objective.to_poly obj) in
  let vars = Problem.uniq_vars problem in
  let vattr = Var_attrs.make obj vars in
  let env = empty_env ~start:false () in
  try
    set_output env 0;
    start_env env;
    let name = Option.value ~default:"model" (Problem.name problem) in
    let model =
      new_model env name vattr.objs vattr.lbs vattr.ubs vattr.types vattr.names
    in
    try
      set_dir env model obj;
      add_obj_qterms env model vars dobj;
      add_constraints env model vars cnstrs;
      update_model env model;
      let _ = set_param env "OutputFlag" 0 in
      if String.length write_fname > 0 then write env model write_fname else ();
      optimize env model;
      match get_status env model with
      | OPTIMAL ->
          let obj = get_obj_val env model in
          let xs = make_pmap vars (get_obj_x env model @@ List.length vars) in
          free_model env model;
          free_env env;
          Ok (obj, xs)
      | stat -> failwith ("Problem is " ^ Stat.to_string stat)
    with e ->
      free_model env model;
      raise e
  with
  | Gurobi_error msg | Failure msg ->
      free_env env;
      Error msg
  | e ->
      (* unexpected exception *)
      free_env env;
      raise e
