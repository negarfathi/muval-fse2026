(assert
    (exists ((x Int))
        (random ((y (IntUniform 0 10)))
            (and
                (<= 0 x)
                (<= x 10)
                (<= (* 2 y) (- (* 2 x) 1))
            )
        )
    )
)