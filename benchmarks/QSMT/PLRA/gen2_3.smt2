(assert
    (exists ((x Real))
        (forall ((y Real))
            (random ((z (Uniform 0 (+ x y 4))))
                (or
                    (< y 0)
                    (< 10 y)
                    (and
                        (<= 0 x)
                        (<= x 10)
                        (<= (+ x y) (- z 1))
                    )
                )
            )
        )
    )
)