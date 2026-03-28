(assert
    (forall ((x Real))
        (exists ((y Real))
            (random ((z (Uniform (- (+ (+ x y) 0.5)) (+ (+ x y) 0.5))))
                (or
                    (< x 0)
                    (< 0.5 x)
                    (and
                        (<= 0 y)
                        (<= y 0.5)
                        (>= (+ (+ (- (* 80 x) (* 20 y)) (* 10 z)) 50) 30)
                    )
                )
            )
        )
    )
)