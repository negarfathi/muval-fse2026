(set-logic HORN)

(declare-fun |main@verifier.error| ( Bool Int ) Bool)
(declare-fun |main@_7| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@_2| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (main@entry A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= B (= E 0)) (= A true) (= B true) (= A (= D 0)))
      )
      (main@empty.loop C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_2 F G H C)
        (and (= A F) (= D (+ 1 H)) (= E true) (= E (= B C)))
      )
      (main@_7 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_2 F G C I)
        (and (= A F) (= E (+ 1 C)) (= H E) (not D) (= D (= B I)))
      )
      (main@_2 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@_7 D A G)
        (and (= F (= E 0))
     (= C D)
     (= I G)
     (not B)
     (not H)
     (= F true)
     (= B (not (<= G 99))))
      )
      (main@verifier.error H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_7 H I E)
        (and (= D (= C 0))
     (= F 0)
     (= B H)
     (= G E)
     (not A)
     (not D)
     (= A (not (<= E 99))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph H A D F)
        (and (= B (+ 1 H)) (= C D) (= I (+ 1 A)) (= G true) (= G (= E F)))
      )
      (main@verifier.error.loopexit H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph B A J K)
        (and (= C J) (= H F) (= F (+ 1 B)) (= G (+ 1 A)) (= I G) (not E) (= E (= D K)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) ) 
    (=>
      (and
        (main@verifier.error.loopexit A B)
        (and (= D C) (= E B) (= C (not (<= A 98))))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (not C) (not A) (= C (not (<= 200 B))))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop B C D)
        (= A true)
      )
      (main@empty.loop.body B C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop B C E)
        (and (not A) (= D 0))
      )
      (main@_2 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C)
        true
      )
      (main@empty.loop A B C)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
