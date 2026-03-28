(* savonet/liquidsoap sequence.ml, https://github.com/savonet/liquidsoap *)

class virtual source = object
  method virtual is_ready : bool
end

class sourceA = object
  method is_ready = false
end
[@@rtype"
is_ready_sourceA :: {v:bool | v = false}
"]

class sourceB = object
  method is_ready = true
end
[@@rtype"
is_ready_sourceB :: {v:bool | v = true}
"]

class virtual operator (sources : source list) = object (self)
  method virtual is_ready : bool
  method virtual get_frame : unit -> unit
  method get () =
    if not self#is_ready then ()
    else
      self#get_frame ()
end
[@@rtype"
    get_operator :: (v1 : {v1':unit | true}) ->
                    {v3:unit | true}"
]


class sequence sources = object (self)
  inherit operator sources

  val mutable head_ready = false
  val mutable sources = sources

  method is_ready = head_ready || List.exists (fun s -> s#is_ready) sources
  [@@rtype"
    List.exists :: (v1 : (v11:{v11':source | true}) ->
                         {v12:bool | v12 = size(v11)}) ->
                   (v2 : {v2':source list | size(v2')}) ->
                   {v3:bool | v3 = size(v2)}"
  ]

  method get_frame () =
    if head_ready then
      ()
    else
      match sources with
      | a::(_::_ as tl) ->
        if a#is_ready then
          head_ready <- true
        else
          sources <- tl;
        self#get_frame ()
      | [a] ->
        assert (a#is_ready) ; (* Our #is_ready ensures that. *)
        head_ready <- true;
        self#get_frame ()
      | [] -> assert false
end
[@@rtype"
is_ready_sequence :: {v1:bool | v1 = true}
get_frame_sequence :: (o : obj) -> 
                      (v1 : {v1':unit | size(o)}) ->
                      unit
"]

let _ = (new sequence [new sourceA; new sourceA; new sourceB])#get_frame ()

let size_obj [@size] = function
  (* c1 : Inab_C, c2 : Draw_C *)
  | Obj(c1,m1,c2,m2) -> c2
let size_obj_list [@size] = function
  | []_obj_list -> false
  | ::_obj_list(hd,tl) -> hd || tl
let size_cls [@size] = function
  | Is_ready_sourceA -> false
  | Is_ready_sourceB -> true
  | Get_frame_sources(head_ready,sources,unit) -> head_ready || s
