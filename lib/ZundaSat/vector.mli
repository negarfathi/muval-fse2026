open Core

type 'a t = Bigbuffer.t * int ref * 'a datas * int ref
and 'a datas = (int, 'a) Hashtbl.Poly.t

val create : unit -> 'a t
val create_def : int -> 'a -> 'a t
val size_of : 'a t -> int
val of_list : 'a list -> 'a t
val of_set : 'a Set.Poly.t -> 'a t
val of_array : 'a array -> 'a t
val to_list : 'a t -> 'a list
val shrink : 'a t -> int -> unit
val clear : 'a t -> unit
val get : 'a t -> int -> 'a option
val get_exn : 'a t -> int -> 'a
val set : 'a t -> int -> 'a -> unit
val pop : 'a t -> unit
val push : 'a t -> 'a -> unit
val push_empty : 'a t -> unit
val last : 'a t -> 'a
val copyTo : 'a t -> 'a t -> unit
val moveTo : 'a t -> 'a t -> unit
val map : 'a t -> f:('a -> 'b) -> 'b t
val iter : 'a t -> f:('a -> unit) -> unit
val iteri : 'a t -> f:(int -> 'a -> unit) -> unit
val fold_left : 'a t -> init:'b -> f:('b -> 'a -> 'b) -> 'b
val remove_if : 'a t -> f:('a -> bool) -> unit
val exists : 'a t -> f:('a -> bool) -> bool
val ( .@[] ) : 'a t -> int -> 'a option
val ( .%[] ) : 'a t -> int -> 'a
val ( .%[]<- ) : 'a t -> int -> 'a -> unit
