let seq () =
    let x = 1 in
    let y = x in
    y + 2

[@@@assert "typeof(seq) <: unit -> {z: int | z = 3}"]