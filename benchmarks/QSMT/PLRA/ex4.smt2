(assert
    (random ((x (Gauss 0 10)))
        (forall ((y Real))
            (exists ((z Real)) 
                (and 
                    (or (<= x y) (< y z)) 
                    (< z x)
                )
            )
        )
    )
)