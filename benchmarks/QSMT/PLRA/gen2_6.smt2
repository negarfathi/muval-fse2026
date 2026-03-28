(assert
    (forall ((y Real))
        (exists ((z Real))
            (random ((x (Uniform 0 10)))
                (or
                    (> 0 y)
                    (> y 10)
                    (and
                        (<= 0 z)
                        (<= z 10)
                        (or
                            (and (<= x y) (<= (+ y 1) z))
                            (and (> x y) (>= (- y 1) z))
                        )
                    )
                )
            )
        )
    )
)