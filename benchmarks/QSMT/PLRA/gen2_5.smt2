(assert
    (exists ((x Real))
        (forall ((y Real))
            (random ((z (Uniform 0 10)))
                (or
                    (< y 0)
                    (< 10 y)
                    (and
                        (<= 0 x)
                        (<= x 10)
                        (>= x (- z 1))
                        (>= y (- z 1))
                    )
                )
            )
        )
    )
)