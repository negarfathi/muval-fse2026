(set-logic HORN)

(declare-fun |main@.preheader1| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph6| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= H 0)))
     (= B D)
     (= C D)
     (= I 0)
     (= J 0)
     (= A true)
     (= E true)
     (= A (= F 2)))
      )
      (main@.lr.ph9 F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= H 0)))
     (= B D)
     (= C D)
     (= I 0)
     (= A true)
     (not E)
     (= A (= F 2)))
      )
      (main@.preheader1 F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader1 C D E B)
        (and (= F 0) (= G B) (= A true) (= A (not (<= D 0))))
      )
      (main@.lr.ph6 C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader1 C D E B)
        (and (= F B) (not A) (= A (not (<= D 0))))
      )
      (main@.preheader C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph9 F G H A B)
        (and (= E (+ 1 B))
     (= D (+ 1 A))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= H D))))
      )
      (main@.lr.ph9 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph9 F G H A B)
        (and (= C (+ 1 A)) (= E (+ 1 B)) (= I E) (not D) (= D (not (<= H C))))
      )
      (main@.preheader1 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Bool) ) 
    (=>
      (and
        (main@.preheader A B C F)
        (and (= G (not (<= 1 F)))
     (= D (+ B C))
     (= E true)
     (= G true)
     (= E (not (<= D 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader I A B E)
        (and (= C (not (<= H 0)))
     (= F 0)
     (= G E)
     (= H (+ A B))
     (not D)
     (= C true)
     (= D (not (<= 1 E))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph6 F G H A B)
        (and (= E (+ 1 B))
     (= D (+ 1 A))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= G D))))
      )
      (main@.lr.ph6 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph6 F G H A B)
        (and (= C (+ 1 A)) (= E (+ 1 B)) (= I E) (not D) (= D (not (<= G C))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph A F D G)
        (and (= H (not (<= G F)))
     (= C (+ 1 A))
     (= B (+ (- 1) F))
     (= E true)
     (= H true)
     (= E (not (<= D C))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph A C I J)
        (and (= D (not (<= J C)))
     (= E (+ 1 A))
     (= F (+ (- 1) C))
     (= G E)
     (= H F)
     (= B true)
     (not D)
     (= B (not (<= I E))))
      )
      (main@.lr.ph G H I J)
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
