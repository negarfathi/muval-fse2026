(assert
    (exists ((x Real))
        (random ((y (Uniform -3 3)))
            (<= y x)
        )
    )
)