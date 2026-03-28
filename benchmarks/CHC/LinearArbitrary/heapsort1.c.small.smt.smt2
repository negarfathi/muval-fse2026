(set-logic HORN)

(declare-fun |main@.outer| ( Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_30| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_32| ( Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@_18| ( Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_15| ( Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@_34| ( Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@_21| ( Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Bool Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@entry N)
        (and (= D (not (<= M 0)))
     (= G (= M F))
     (= J (not (<= H 1)))
     (= K (not J))
     (= B N)
     (= C N)
     (= E (* 2 H))
     (= F (+ (- 2) E))
     (= I (ite J (- 1) 0))
     (= L (ite K (- 1) 0))
     (= P (+ H I))
     (= Q (+ M L))
     (= A true)
     (= D true)
     (= G true)
     (= A (= O 1)))
      )
      (main@empty.loop M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.outer B A D F H)
        (and (= C A) (= G (* 2 B)) (= E (not (<= B H))))
      )
      (main@_15 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_15 C D E F G H I)
        (and (= A (not (<= D 1))) (= B true) (= A true) (= B (not (<= H D))))
      )
      (main@._crit_edge C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_15 C D E F H I J)
        (and (= B (not (<= I D))) (= G I) (= A true) (not B) (= A (not (<= D 1))))
      )
      (main@.lr.ph C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_18 D E F G A H I J)
        (and (= B (* 2 A)) (= C true) (= C (not (<= B E))))
      )
      (main@._crit_edge D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_18 D E F G A I J K)
        (and (= C (* 2 A)) (= H C) (not B) (= B (not (<= C E))))
      )
      (main@.lr.ph D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph B C D E F G H I)
        (and (= A true) (= A (not (<= C F))))
      )
      (main@_21 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph C D E F B H I J)
        (and (= G B) (not A) (= A (not (<= D B))))
      )
      (main@_26 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_21 G H I J D L M N)
        (and (= A L) (= E (ite C 1 0)) (= F (+ D E)) (= K F) (= C (not (= B 0))))
      )
      (main@_26 G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_26 D E F G H I J K)
        (and (= A I) (= C true) (= C (= B 0)))
      )
      (main@_18 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_26 E F G H A I J K)
        (and (= B I) (not D) (= D (= C 0)))
      )
      (main@._crit_edge E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge C D E B F A G)
        (= B true)
      )
      (main@_30 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge A B C D E F G)
        (not D)
      )
      (main@_32 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_30 A C F G H)
        (and (= E C) (= B (+ (- 1) A)) (= D B))
      )
      (main@.outer D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@_32 A F G B C D E)
        (and (= H true) (= H (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_32 B C D E F G H)
        (and (not A) (= A (not (<= C D))))
      )
      (main@_34 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_34 C A E F G H I)
        (and (= B (+ (- 1) A)) (= D B))
      )
      (main@_15 C D E F G H I)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@empty.loop F G H B C)
        (and (= E C) (not A) (= D B))
      )
      (main@.outer D E F G H)
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
