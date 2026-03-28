let rec fib x =
  if x = 0 then 0
  else if x = 1 then 1
  else fib (x - 1) + fib (x - 2)

let main x = assert(fib x = fast_fib x)

[@@@types
"
"]
