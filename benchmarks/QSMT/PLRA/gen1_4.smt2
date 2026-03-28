(assert
    (exists ((x Real))
        (random ((y (Uniform 0 (+ x 4))))
            (and
                (<= 0 x)
                (<= x 10)
                (>= (- x y) (- 1))
            )
        )
    )
)