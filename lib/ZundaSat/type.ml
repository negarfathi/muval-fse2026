open Core

module Litenv : sig
  type t = (string, int) Hashtbl.Poly.t * (int, string) Hashtbl.Poly.t * int ref

  val create : unit -> t
  val last_index_of : t -> int
  val set_last_index : t -> int -> unit
  val index_of : t -> string -> int
  val name_of : t -> int -> string
  val exists : t -> string -> bool
end = struct
  type t = (string, int) Hashtbl.Poly.t * (int, string) Hashtbl.Poly.t * int ref

  let create () = (Hashtbl.Poly.create (), Hashtbl.Poly.create (), ref 0)
  let env_of = function env, _, _ -> env
  let rev_env_of = function _, rev_env, _ -> rev_env
  let last_index_of = function _, _, last_index -> !last_index

  let set_last_index t new_last_index =
    match t with _, _, last_index -> last_index := new_last_index

  let index_of t name =
    let env = env_of t in
    let rev_env = rev_env_of t in
    match Hashtbl.find env name with
    | Some index -> index
    | None ->
        let last_index = last_index_of t in
        let env = env_of t in
        Hashtbl.Poly.set env ~key:name ~data:last_index;
        Hashtbl.Poly.set rev_env ~key:last_index ~data:name;
        set_last_index t (last_index + 1);
        last_index

  let name_of t index =
    let rev_env = rev_env_of t in
    match Hashtbl.find rev_env index with
    | Some name -> name
    | None -> failwith "unknown var"

  let exists t name =
    let env = env_of t in
    match Hashtbl.find env name with Some _ -> true | None -> false
end

module Lbool : sig
  type t = True | False | Undef

  val neg_of : t -> t
  val bool_of : t -> bool
  val mk_lbool : bool -> t
  val str_of : t -> string
  val ( ! ) : t -> t
end = struct
  type t = True | False | Undef

  let bool_of = function True -> true | False -> false | Undef -> assert false
  let neg_of = function True -> False | False -> True | Undef -> Undef
  let mk_lbool sign = if not sign then True else False
  let str_of = function True -> "True" | False -> "False" | Undef -> "Undef"
  let ( ! ) = neg_of
end

module Literal : sig
  type t = int * name * sign
  and sign = Lbool.t
  and name = string

  val undef : t
  val neg_of : t -> t
  val var_of : t -> int
  val name_of : t -> name
  val sign_of : t -> bool
  val is_undef : t -> bool
  val var_of_name : name -> Litenv.t -> int
  val mk_lit : name -> sign -> Litenv.t -> t
  val index_of : t -> int
  val is_equal : t -> t -> bool
  val str_of : t -> string
end = struct
  include Lbool

  type t = int * name * sign
  and sign = Lbool.t
  and name = string

  let undef = (-1, "", Undef)
  let neg_of = function var, name, sign -> (var, name, !sign)
  let var_of = function var, _, _ -> var
  let name_of = function _, name, _ -> name
  let sign_of = function _, _, sign -> Fn.non bool_of sign
  let var_of_name name env = Litenv.index_of env name
  let mk_lit name sign env = (var_of_name name env, name, sign)
  let is_undef = function _, _, Lbool.Undef -> true | _ -> false

  let index_of = function
    | var, _, False -> var * 2
    | var, _, True -> (var * 2) + 1
    | _ -> assert false

  let is_equal l1 l2 =
    let open Stdlib in
    if is_undef l1 && is_undef l2 then true
    else if Fn.non is_undef l1 && Fn.non is_undef l2 then
      index_of l1 = index_of l2
    else false

  let str_of = function
    | _, name, True -> sprintf " %s " name
    | _, name, False -> sprintf "-%s " name
    | _ -> sprintf "[undef]"
end

module Clause : sig
  type t = Literal.t Vector.t * learnt
  and learnt = Lbool.t

  val undef : t
  val create : Lbool.t -> t
  val mk_clause : Literal.t Vector.t -> t
  val mk_learned_clause : Literal.t Vector.t -> t
  val lits_of : t -> Literal.t Vector.t

  (* val of_list : string list * string list -> Litenv.t -> t *)
  val is_learnt : t -> Lbool.t
  val is_undef : t -> bool
  val is_equal : t -> t -> bool
  val str_of : t -> string
end = struct
  include Lbool

  type t = Literal.t Vector.t * learnt
  and learnt = Lbool.t

  let undef = (Vector.create (), Undef)
  let create learnt = (Vector.create (), learnt)
  let mk_clause lits = (lits, Lbool.False)
  let mk_learned_clause lits = (lits, Lbool.True)
  let lits_of = function lits, _ -> lits
  let is_learnt = function _, learnt -> learnt
  let is_undef = function _, Lbool.Undef -> true | _ -> false

  let is_equal t1 t2 =
    let lits1 = lits_of t1 in
    let lits2 = lits_of t2 in
    if
      (is_undef t1 && is_undef t2)
      || Vector.size_of lits1 <> Vector.size_of lits2
    then false
    else
      snd
      @@ Vector.fold_left lits1 ~init:(0, true) ~f:(fun (i, ret) elem1 ->
             if i = -1 then (i, ret)
             else
               let elem2 = Vector.get_exn lits2 i in
               if Literal.is_equal elem1 elem2 then (i + 1, ret) else (-1, false))

  let str_of = function
    | lits, False ->
        Vector.fold_left lits ~init:"c:(" ~f:(fun ret lit ->
            ret ^ Literal.str_of lit ^ "\\/")
        ^ ")"
    | lits, True ->
        Vector.fold_left lits ~init:"l:(" ~f:(fun ret lit ->
            ret ^ Literal.str_of lit ^ "\\/")
        ^ ")"
    | _ -> "(undef)"
end
