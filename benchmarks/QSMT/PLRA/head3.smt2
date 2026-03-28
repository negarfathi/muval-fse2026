(assert
    (random ((x (Gauss 0 10)))
        (exists ((y Real))
            (and
                (<= 0 y)
                (<= y x)
                (<= x (+ y 1))
            )
        )
    )
)