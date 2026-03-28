let simple : int -> (int -> int) -> int =
    (fun h k ->
        h 3 (fun y -> (fun h k ->
            k (y * 2)
        ) h k))
    (fun x k_op ->
        fun h k ->
            (fun h k -> k (x + 2)) h (fun a -> (
                k_op a
            ) h k))
    (fun x -> fun h k -> k x)

[@@@assert "typeof(simple) <: int -> ({z: int | z = 10} -> int) -> int"]
