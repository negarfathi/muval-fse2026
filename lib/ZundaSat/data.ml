open Type
open Core
open Vector
open Type.Lbool

type t =
  constrs
  * learnts
  * watches
  * undos
  * propQ
  * levels
  * reason
  * assigns
  * trail
  * trail_lim

and learnts = Clause.t Vector.t
and constrs = Clause.t Vector.t
and watches = Clause.t Vector.t Vector.t
and undos = Clause.t Vector.t Vector.t
and propQ = Literal.t Queue.t
and levels = int Vector.t
and reason = Clause.t Vector.t
and assigns = Lbool.t Vector.t
and trail = Literal.t Vector.t
and trail_lim = int Vector.t

let create () =
  ( Vector.create (),
    Vector.create (),
    Vector.create (),
    Vector.create (),
    Queue.create (),
    Vector.create (),
    Vector.create (),
    Vector.create (),
    Vector.create (),
    Vector.create () )

let constrs_of = function constrs, _, _, _, _, _, _, _, _, _ -> constrs
let learnts_of = function _, learnts, _, _, _, _, _, _, _, _ -> learnts
let watches_of = function _, _, watches, _, _, _, _, _, _, _ -> watches
let undos_of = function _, _, _, undos, _, _, _, _, _, _ -> undos
let propQ_of = function _, _, _, _, propQ, _, _, _, _, _ -> propQ
let levels_of = function _, _, _, _, _, levels, _, _, _, _ -> levels
let reason_of = function _, _, _, _, _, _, reason, _, _, _ -> reason
let assigns_of = function _, _, _, _, _, _, _, assigns, _, _ -> assigns
let trail_of = function _, _, _, _, _, _, _, _, trail, _ -> trail
let trail_lim_of = function _, _, _, _, _, _, _, _, _, trail_lim -> trail_lim
let nvars t = Vector.size_of @@ assigns_of t
let nassigns t = Vector.size_of @@ trail_of t
let nconstrants t = Vector.size_of @@ constrs_of t
let nlearnts t = Vector.size_of @@ learnts_of t

let value_of t var =
  let assigns = assigns_of t in
  assigns.%[var]

let value_of_lit t lit =
  let assigns = assigns_of t in
  if Literal.sign_of lit then !(assigns.%[Literal.var_of lit])
  else assigns.%[Literal.var_of lit]

let level_of t lit =
  if Stdlib.(lit = Literal.undef) then -999
  else
    let levels = levels_of t in
    levels.%[Literal.var_of lit]

let add_constr t c =
  if Fn.non Clause.is_undef c then Vector.push (constrs_of t) c

let decision_level_of t = Vector.size_of @@ trail_lim_of t

let constrs_str_of t =
  let constrs = constrs_of t in
  Vector.fold_left constrs ~init:"======== constrs =========\n"
    ~f:(fun ret constr -> ret ^ Clause.str_of constr ^ ", \n")
  ^ "==========================\n"

let assigns_str_of t =
  let assigns = assigns_of t in
  Vector.fold_left assigns ~init:"======== assigns =========\n"
    ~f:(fun ret assign -> ret ^ Lbool.str_of assign ^ ", ")
  ^ "\n==========================\n"

let trail_str_of t =
  let trail = trail_of t in
  let levels = levels_of t in
  Vector.fold_left trail ~init:"========   trail  =========\n"
    ~f:(fun ret lit ->
      ret ^ Literal.str_of lit ^ " level:"
      ^ (string_of_int @@ levels.%[Literal.var_of lit])
      ^ "\n")
  ^ "\n==========================\n"

let learnts_str_of t =
  let learnts = learnts_of t in
  Vector.fold_left learnts ~init:"======== learnts =========\n"
    ~f:(fun ret constr -> ret ^ Clause.str_of constr ^ ", \n")
  ^ "==========================\n"

let propQ_str_of t =
  let propQ = propQ_of t in
  let levels = levels_of t in
  List.fold_left (Base.Queue.to_list propQ) ~init:"========  propQ  =========\n"
    ~f:(fun ret lit ->
      ret ^ Literal.str_of lit ^ " level:"
      ^ (string_of_int @@ levels.%[Literal.var_of lit])
      ^ "\n")
  ^ "\n==========================\n"

let watches_str_of t env =
  let watches = watches_of t in
  let _, ret =
    Vector.fold_left watches ~init:(0, "========  watches  =========\n")
      ~f:(fun (index, ret) cnstrs ->
        let name = Litenv.name_of env (index / 2) in
        let name = if index mod 2 = 0 then name else "-" ^ name in
        ( index + 1,
          ret ^ name ^ ":\n"
          ^ Vector.fold_left cnstrs ~init:"" ~f:(fun ret cnstr ->
                ret ^ Clause.str_of cnstr ^ "\n")
          ^ "\n" ))
  in
  ret ^ "\n==========================\n"

let watches_str_of_lit t lit =
  let watches = watches_of t in
  let watch = watches.%[Literal.index_of lit] in
  Vector.fold_left watch
    ~init:(sprintf "========  watch:[%s] =========\n" (Literal.str_of lit))
    ~f:(fun ret cnstr -> ret ^ Clause.str_of cnstr ^ "\n")
  ^ "\n==========================\n"
