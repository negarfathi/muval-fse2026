(set-logic HORN)

(declare-fun |main@._crit_edge.loopexit| ( Int Int ) Bool)
(declare-fun |main@_7| ( Int Int Int ) Bool)
(declare-fun |main@_3| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= B C) (= A true) (= A (= D 0)))
      )
      (main@empty.loop C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_3 F G A B)
        (and (= D (+ 2 A))
     (= E (+ (- 1) B))
     (= H D)
     (= I E)
     (= C true)
     (= C (not (<= B D))))
      )
      (main@_3 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_3 E F A B)
        (and (= C (+ 2 A)) (= G (+ (- 1) B)) (not D) (= D (not (<= B C))))
      )
      (main@_7 E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@_7 C D A)
        (and (= B true) (= B (= A 4)))
      )
      (main@.preheader C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@_7 A B C)
        (and (not D) (= D (= C 4)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader C A)
        (and (= B C) (= F 4) (= G 4) (= E true) (= E (= D 0)))
      )
      (main@._crit_edge F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G)
        (and (= A F) (= D 4) (= E 1) (not C) (= C (= B 0)))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph A B D F)
        (and (= C D) (= H (+ 1 B)) (= I (+ 4 A)) (= G true) (= G (= E F)))
      )
      (main@._crit_edge.loopexit H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A B J K)
        (and (= C J) (= F (+ 4 A)) (= G (+ 1 B)) (= H F) (= I G) (not E) (= E (= D K)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge.loopexit A C)
        (and (= D C) (= E B) (= B (* 4 A)))
      )
      (main@._crit_edge D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@._crit_edge A B)
        (and (not C) (= C (= A B)))
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop B C)
        (and (= E 6) (not A) (= D 1))
      )
      (main@_3 B C D E)
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
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
