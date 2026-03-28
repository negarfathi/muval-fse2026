let seq =
    fun k -> (fun x -> (fun y -> k (y + 2)) x) 1

[@@@assert "typeof(seq) <: ({z: int | z = 3} -> ans) -> ans"]