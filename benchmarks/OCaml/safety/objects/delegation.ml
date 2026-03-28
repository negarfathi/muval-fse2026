class one = object (s)
  method foo = s#bar
  method bar = 1
end

class two = object
  inherit one as p

  method foo = p#foo
  method bar = 2
end

let main () =
  let t = new two in
  assert (t#foo = 2)

