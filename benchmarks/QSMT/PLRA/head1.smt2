(assert
    (random ((x (Uniform 0 10)))
        (exists ((y Real))
            (and
                (<= 0 y)
                (<= y 5)
                (<= x y)
            )
        )
    )
)