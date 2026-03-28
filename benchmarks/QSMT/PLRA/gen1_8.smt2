(assert
    (exists ((x Real))
        (random ((y (Uniform 0 10)))
            (and
                (<= 0 x)
                (<= x 6)
                (<= y x)
            )
        )
    )
)