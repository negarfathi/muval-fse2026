open Core

type 'a t = Bigbuffer.t * int ref * 'a datas * int ref
and 'a datas = (int, 'a) Hashtbl.Poly.t

let size_of = function _, size, _, _ -> !size
let indexs_of = function indexs, _, _, _ -> indexs
let datas_of = function _, _, datas, _ -> datas
let max_index_of = function _, _, _, max_index -> max_index

let int_to_bytes i =
  let bytes = Bytes.make 4 ' ' in
  let _ = Stdlib.Bytes.set_int32_le bytes 0 @@ Int32.of_int_exn i in
  bytes

let bytes_to_int bytes index =
  Stdlib.Bytes.get_int32_le bytes (index * 4) |> Int32.to_int_exn

let create () = (Bigbuffer.create 100, ref 0, Hashtbl.Poly.create (), ref 0)
let set_size t new_size = match t with _, size, _, _ -> size := new_size

let shrink t nof_elems =
  assert (nof_elems >= 0);
  set_size t nof_elems

let clear t = set_size t 0
let get_index t i = bytes_to_int (Bigbuffer.contents_bytes @@ indexs_of t) i

let get t i =
  let index = get_index t i in
  if index > 0 then Some (Hashtbl.Poly.find_exn (datas_of t) index) else None

let get_exn t i =
  (* let _ = Printf.printf "get:%d:%d\n" i 0 in *)
  let index = get_index t i in
  (* Printf.printf "get:%d:%d\n" i index; *)
  Hashtbl.Poly.find_exn (datas_of t) index

let set t i elem =
  assert (i >= 0);
  let indexs = indexs_of t in
  let datas = datas_of t in
  let index = max_index_of t in
  index := !index + 1;
  let new_index = !index in
  let new_bytes = int_to_bytes new_index in
  (* Printf.printf "set:%d:%d\n" i (bytes_to_int new_bytes 0) ;
     Printf.printf "buffer size:%d\n" @@ Bigbuffer.length indexs; *)
  let _ =
    if Bigbuffer.length indexs >= (i * 4) + 4 then (
      let old_index = get_index t i in
      if old_index > 0 then Hashtbl.set datas ~key:old_index ~data:elem)
    else if Bigbuffer.length indexs = i * 4 then
      Bigbuffer.add_bytes indexs new_bytes
    else (
      while Bigbuffer.length indexs < (i * 4) + 4 do
        Bigbuffer.add_bytes indexs (int_to_bytes 0)
      done;
      Bigbuffer.blit ~dst:new_bytes ~dst_pos:0 ~src:indexs ~src_pos:(i * 4)
        ~len:4)
  in
  Hashtbl.Poly.add_exn datas ~key:new_index ~data:elem

let pop t = set_size t (size_of t - 1)

let push_empty t =
  let size = size_of t in
  set_size t (size + 1)

let push t elem =
  let size = size_of t in
  set t size elem;
  set_size t (size + 1)

let create_def size def =
  let ret = create () in
  let _ =
    for _ = 0 to size do
      push ret def
    done
  in
  ret

let of_list l =
  let vec = create () in
  List.iter l ~f:(push vec);
  vec

let of_set s =
  let vec = create () in
  Set.iter s ~f:(push vec);
  vec

let of_array a =
  let vec = create () in
  Array.iter a ~f:(push vec);
  vec

let to_list t =
  let rec loop i ret =
    if i >= size_of t then ret else loop (i + 1) (get_exn t i :: ret)
  in
  loop 0 []

let last t = get_exn t (size_of t - 1)

let copyTo t dest =
  let size = size_of t in
  for i = 0 to size - 1 do
    push dest (get_exn t i)
  done

let moveTo t dest =
  copyTo t dest;
  shrink t 0

let map t ~f =
  let new_vec = create () in
  let _ =
    for i = 0 to size_of t - 1 do
      push new_vec (f @@ get_exn t i)
    done
  in
  new_vec

let iter t ~f =
  for i = 0 to size_of t - 1 do
    f @@ get_exn t i
  done

let iteri t ~f =
  for i = 0 to size_of t - 1 do
    f i @@ get_exn t i
  done

let fold_left t ~init ~f =
  let rec _fold_left i init =
    if i = size_of t then init
    else
      let init' = f init @@ get_exn t i in
      _fold_left (i + 1) init'
  in
  _fold_left 0 init

let exists t ~f =
  fold_left t ~init:false ~f:(fun ret elem -> if ret then ret else f elem)

let remove_if t ~f =
  let j =
    fold_left t ~init:0 ~f:(fun j elem ->
        if f elem then j
        else (
          set t j elem;
          j + 1))
  in
  shrink t @@ j

let ( .@[] ) = get
let ( .%[] ) = get_exn
let ( .%[]<- ) = set
