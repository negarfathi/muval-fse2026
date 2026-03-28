(assert
    (random ((x (Gauss 0 10)))
        (forall ((y Real))
            (or (>= y x)
                (exists ((z Real)) (and (< y z) (< z x)))
            )
        )
    )
)