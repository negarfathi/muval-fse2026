(assert
    (exists ((x Int))
        (forall ((y Int))
            (random ((z (IntUniform 0 10)))
                (or
                    (< y 0)
                    (< 10 y)
                    (and
                        (<= 0 x)
                        (<= x 10)
                        (>= (+ x y) (- z 1))
                    )
                )
            )
        )
    )
)