(assert
    (exists ((x Int) (y Int))
        (random ((z (IntUniform 0 3)))
            (and
                (or (= x 0) (= x 1) (= x 2))
                (or (= y 0) (= y 1))
                (not (= z 3))
                (or
                    (and (<= x z) (< z (+ x 1)) (= y 0))
                    (and (or (> x z) (>= z (+ x 1))) (= y 1))
                )
            )
        )
    )
)