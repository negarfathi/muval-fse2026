(assert
    (exists ((x Real))
        (random ((y (Uniform 0 10)))
            (and
                (<= 0 x)
                (<= x 4)
                (<= y x)
            )
        )
    )
)