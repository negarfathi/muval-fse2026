(assert
    (exists ((x Real))
        (forall ((y Real))
            (random ((z (Uniform (- 10) 10)))
                (or
                    (< y (- 5))
                    (< 5 y)
                    (and
                        (<= (- 5) x)
                        (<= x 5)
                        (<= z (+ x y))
                    )
                )
            )
        )
    )
)