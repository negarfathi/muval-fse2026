(set-logic HORN)

(declare-fun |main@_2| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@orig.main.exit| ( Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        main@entry
        (and (= B (= D 99)) (= A true) (= B true) (= A (= C 50)))
      )
      (main@empty.loop C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_2 A G H)
        (and (= C (not (<= H A)))
     (= D (and C B))
     (= E (+ 1 A))
     (= F E)
     (= D true)
     (= B (not (= E G))))
      )
      (main@_2 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) ) 
    (=>
      (and
        (main@_2 B A C)
        (and (= D (not (= G A)))
     (= E (not (<= C B)))
     (= G (+ 1 B))
     (not F)
     (= F (and E D)))
      )
      (main@orig.main.exit G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@orig.main.exit A)
        (and (not B) (= C true) (= C (not (= A 50))))
      )
      main@orig.main.exit.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@empty.loop B C)
        (= A true)
      )
      (main@empty.loop.body B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop C D)
        (and (not A) (= B 0))
      )
      (main@_2 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (main@empty.loop.body A B)
        true
      )
      (main@empty.loop A B)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@orig.main.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
