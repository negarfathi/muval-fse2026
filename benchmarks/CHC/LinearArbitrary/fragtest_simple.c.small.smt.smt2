(set-logic HORN)

(declare-fun |main@empty.loop.body| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_4| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader2| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph7| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_16| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= B (= G 0))
     (= C (= H 0))
     (= D (= I 0))
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= A (= E 0)))
      )
      (main@empty.loop E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_4 E F G H C)
        (and (= A F) (= D true) (= D (= B C)))
      )
      (main@.preheader2 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_4 D E F G H)
        (and (= A E) (not C) (= C (= B H)))
      )
      (main@_4 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader2 F H I A)
        (and (= B H) (= E 0) (= G 0) (= D true) (= D (= C 0)))
      )
      (main@.preheader1 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader2 D E F I)
        (and (= A E) (= G 0) (= H 0) (not C) (= C (= B 0)))
      )
      (main@.lr.ph7 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader1 A B C D E)
        true
      )
      (main@_16 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph7 J L M A B E)
        (and (= C L)
     (= I H)
     (= K G)
     (= G (+ 1 B))
     (= H (+ 1 A))
     (= F true)
     (= F (= D E)))
      )
      (main@.preheader1 I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph7 H I J A B M)
        (and (= C I) (= F (+ 1 A)) (= K F) (= L G) (= G (+ 1 B)) (not E) (= E (= D M)))
      )
      (main@.lr.ph7 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_16 F G H B D)
        (and (= A B) (= E true) (= E (= C D)))
      )
      (main@.preheader F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_16 D E F G H)
        (and (= A G) (not C) (= C (= B H)))
      )
      (main@_16 D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader E F B)
        (and (= C B) (= D 0) (= A true) (= A (not (<= B (- 1)))))
      )
      (main@.lr.ph C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@.preheader A B C)
        (and (not D) (= D (not (<= C (- 1)))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph C A I J)
        (and (= D (not (<= C J)))
     (= F (+ (- 1) C))
     (= G F)
     (= H E)
     (= E (+ 1 A))
     (= B true)
     (= D true)
     (= B (not (<= I E))))
      )
      (main@.lr.ph G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph F B D G)
        (and (= E (not (<= D C)))
     (= A (+ (- 1) F))
     (= C (+ 1 B))
     (not H)
     (= E true)
     (= H (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error
        true
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F)
        (= A true)
      )
      (main@empty.loop.body B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F)
        (not A)
      )
      (main@_4 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E)
        true
      )
      (main@empty.loop A B C D E)
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
