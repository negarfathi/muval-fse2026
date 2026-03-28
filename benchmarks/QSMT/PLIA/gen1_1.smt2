(assert
    (exists ((x Int))
        (random ((y (IntUniform -3 3)))
            (and
                (<= -3 x)
                (<= x 3)
                (<= y x)
            )
        )
    )
)