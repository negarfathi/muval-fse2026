(assert
    (exists ((x Int))
        (random ((y (IntUniform 0 (+ x 4))))
            (and
                (<= 0 x)
                (<= x 10)
                (>= (- x y) (- 1))
            )
        )
    )
)