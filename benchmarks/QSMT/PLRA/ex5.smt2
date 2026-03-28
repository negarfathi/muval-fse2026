(assert
    (forall ((y Real))
        (exists ((z Real)) 
            (random ((x (Gauss 0 10)))
                (and 
                    (or (<= x y) (< y z)) 
                    (< z x)
                )
            )
        )
    )
)