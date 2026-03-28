let seq =
    fun k -> (fun k -> k 1) (fun x -> (
        (fun k -> (fun k -> k x) (fun y -> (fun k -> k (y + 2)) k))
    ) k)

[@@@assert "typeof(seq) <: ({z: int | z = 3} -> ans) -> ans"]