(assert
    (exists ((x Int))
        (forall ((y Int))
            (random ((z (IntUniform (- (- (- x) y) 20) (+ x y 20))))
                (or
                    (< y (- 5))
                    (< 5 y)
                    (and
                        (<= (- 5) x)
                        (<= x 5)
                        (<= z (+ x y))
                    )
                )
            )
        )
    )
)