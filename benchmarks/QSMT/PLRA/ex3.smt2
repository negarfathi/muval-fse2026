(assert
    (forall ((y Real))
        (exists ((z Real))
            (random ((x (Gauss 0 10)))
                (or
                    (and
                        (<= x y)
                        (< y z)
                    )
                    (and
                        (> x y)
                        (> y z)
                    )
                )
            )
        )
    )
)