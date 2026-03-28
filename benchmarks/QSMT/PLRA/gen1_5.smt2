(assert
    (exists ((x Real))
        (random ((y (Uniform (- (- x) 6) (+ x 6))))
            (and
                (<= -3 x)
                (<= x 3)
                (<= y x)
            )
        )
    )
)