(assert
    (exists ((x Real))
        (random ((y (Uniform 0 10)))
            (and
                (<= 0 x)
                (<= x 10)
                (>= (- x y) (- 1))
                (<= (+ x y) 11)
            )
        )
    )
)