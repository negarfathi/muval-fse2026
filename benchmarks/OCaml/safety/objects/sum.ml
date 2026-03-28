(* ./rcaml.opt -hccs psb -enable-lang-restrict -numconj 2 -precond-template -default-size-cata benchmarks/obj_safety/sum.ml *)

class sum = object (s)
  method sum x = if x <= 0 then 0 else x + s#sum (x-1)
end

let main x =
  let t = new sum in
  assert (t#sum x >= x)
