let rec fact x =
  if x = 1 then 1 else x * fact (x - 1)

let main x =
  if x >= 4 then assert (fact x >= x * x)
