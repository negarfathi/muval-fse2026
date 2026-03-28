let rec fib n =
  if n = 0 || n = 1 then 1
  else fib (n - 1) + fib (n - 2)

let rec power x n =
  if n = 1 then x
  else x * power x (n - 1)

let main alpha beta n =
  (* alpha and beta are complex numbers *)
  if alpha + beta = 1 && alpha * beta = -1 then
    assert (fib n = (power beta (n + 1) - power alpha (n + 1)) / (beta - alpha))
