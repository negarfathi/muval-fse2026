(set-logic HORN)

(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (not (<= L K)))
     (= H (not (<= T L)))
     (= I (and G F))
     (= J (and I H))
     (= M (<= K R))
     (= N (<= R L))
     (= O (and N M))
     (= P (not (<= T 0)))
     (= A E)
     (= B E)
     (= C E)
     (= D E)
     (= Q 0)
     (= S 0)
     (= J true)
     (= O true)
     (= P true)
     (= F (not (<= K (- 1)))))
      )
      (main@.lr.ph Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) (Q Int) (R Bool) (S Bool) ) 
    (=>
      (and
        (main@entry E)
        (and (= P (and O N))
     (= R (not (<= Q 0)))
     (= F (not (<= K (- 1))))
     (= G (not (<= M K)))
     (= H (not (<= Q M)))
     (= I (and G F))
     (= N (<= K L))
     (= O (<= L M))
     (= A E)
     (= B E)
     (= C E)
     (= D E)
     (= J true)
     (= P true)
     (not R)
     (not S)
     (= J (and I H)))
      )
      (main@verifier.error S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph A H C J)
        (and (= B (= A H))
     (= G F)
     (= I E)
     (= E (ite B 1 C))
     (= F (+ 1 A))
     (= D true)
     (= D (not (<= J F))))
      )
      (main@.lr.ph G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@.lr.ph B A D F)
        (and (= C (= B A)) (= E (+ 1 B)) (= H (ite C 1 D)) (not G) (= G (not (<= F E))))
      )
      (main@verifier.error.loopexit H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (= A 1)))
      )
      (main@verifier.error C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (not A)
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
