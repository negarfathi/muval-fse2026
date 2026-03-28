(assert
    (forall ((y Int))
        (exists ((z Int))
            (random ((x (IntUniform 0 10)))
                (or
                    (and
                        (<= x y)
                        (<= (+ y 1) z)
                    )
                    (and
                        (> x y)
                        (>= (- y 1) z)
                    )
                )
            )
        )
    )
)