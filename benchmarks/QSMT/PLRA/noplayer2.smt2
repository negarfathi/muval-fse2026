(assert
    (random ((x (Uniform 0 10)))
        (and
            (<= 0 x)
            (<= x 6)
        )
    )
)