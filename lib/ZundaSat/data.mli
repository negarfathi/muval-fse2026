open Type
open Core

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

val create : unit -> t
val constrs_of : t -> constrs
val learnts_of : t -> learnts
val watches_of : t -> watches
val undos_of : t -> undos
val propQ_of : t -> propQ
val levels_of : t -> levels
val reason_of : t -> reason
val assigns_of : t -> assigns
val trail_of : t -> trail
val trail_lim_of : t -> trail_lim
val nvars : t -> int
val nassigns : t -> int
val nconstrants : t -> int
val nlearnts : t -> int
val value_of : t -> int -> Lbool.t
val value_of_lit : t -> Literal.t -> Lbool.t
val decision_level_of : t -> int
val level_of : t -> Literal.t -> int
val add_constr : t -> Clause.t -> unit
val constrs_str_of : t -> string
val assigns_str_of : t -> string
val trail_str_of : t -> string
val learnts_str_of : t -> string
val propQ_str_of : t -> string
val watches_str_of : t -> Litenv.t -> string
val watches_str_of_lit : t -> Literal.t -> string
