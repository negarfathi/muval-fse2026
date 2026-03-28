(assert
    (exists ((x Real))
        (random ((y (Uniform -3 3)))
            (and
                (<= -3 x)
                (<= x 3)
                (<= y x)
            )
        )
    )
)