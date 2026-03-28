(assert
    (forall ((x Real))
        (random ((y (Uniform -3 3)))
            (or
                (> -3 x)
                (> x 3)
                (<= y x)
            )
        )
    )
)