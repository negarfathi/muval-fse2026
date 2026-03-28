(assert
    (random ((x (IntUniform 0 10)))
        (forall ((y Int))
            (=> (< y x)
                (exists ((z Int)) (and (< y z) (< z x)))
            )
        )
    )
)