(* @require nonlinear invariants
   @from Generating Non-Linear Interpolants by Semidefinite Programming
         Liyun Dai, Bican Xia, and Naijun Zhan
         CAV 2013 *)

let rec loop x y =
  if x * x + y * y < 3 then begin
    let x' = x * x + y - 1 in
    let y' = y + x' * y + 1 in
    assert (x' * x' - 2 * y' * y' - 4 <= 0);
    loop x' y'
  end else ()

let main x y = if x * x + y * y < 1 then loop x y
