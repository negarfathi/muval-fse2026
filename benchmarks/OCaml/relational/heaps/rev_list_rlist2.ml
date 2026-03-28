type list = Nil | Cons of int * list
type rlist = RNil | RCons of int * rlist ref

let rec rev l acc = 
  match l with
  | Nil -> acc
  | Cons(x,xs) -> rev xs (Cons(x,acc))


let rec rrev2 head_ref =
  let next r =
    match r with
    | RNil -> assert false
    | RCons(x,xs) -> !xs
  in
  let nextp r =
    match !r with
    | RNil -> assert false
    | RCons(x,xs) -> xs
  in
  match !head_ref with
  | RNil -> () (* empty list *)
  | _ ->
    (* List has only one node *)
    match next (!head_ref) with
    | RCons(_,xs) when !xs = RNil -> () (* List has only one element *)
    | RCons(x,xs) ->
      (* reverse the rest list and put the first element at the end *)
      begin
        rrev2 (nextp head_ref);
        (nextp head_ref) := RCons(x,head_ref);

        nextp head_ref := RNil;          

        (* fix the head pointer *)
        head_ref := next !head_ref
      end
    | _ -> assert false

let rec lrleq l rl =
  match l, !rl with
  | Nil, RNil -> true
  | Cons(x1,xs1), RCons(x2,xs2) -> x1 = x2 && lrleq xs1 xs2
  | _ -> false

let main l rl =
  if lrleq l rl then
    begin
      let l' = rev l Nil in
      rrev2 rl;
      assert(lrleq l' rl)
    end

let rec pr ppf r =
  match !r with
  | RNil -> Format.fprintf ppf "RNil"
  | RCons(x,xs) -> Format.fprintf ppf "RCons(%d,%a)" x pr xs

let _ =
  let l = ref (RCons(2, ref (RCons(1, ref (RCons(0, ref RNil)))))) in
  rrev2 l;
  Format.printf "l = %a@." pr l
