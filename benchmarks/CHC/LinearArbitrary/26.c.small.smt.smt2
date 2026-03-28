(set-logic HORN)

(declare-fun |main@_8| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (= F 0))
     (= C E)
     (= D E)
     (= H 0)
     (= I 0)
     (= B true)
     (= G true)
     (= B (= A 0)))
      )
      (main@verifier.error H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= A (= G 0)) (= B F) (= C F) (not E) (= A true) (= E (= D 0)))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph H I A)
        (and (= C 0) (= D 0) (= E 0) (= F 0) (= G (ite B 1 0)) (= B (not (= A 0))))
      )
      (main@_8 C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_8 A B C E F J L)
        (and (= D (+ 1 A))
     (= G (+ E F))
     (= H (+ 1 B))
     (= I J)
     (= N (+ G H))
     (= P N)
     (= O (+ C D))
     (= Q O)
     (= M true)
     (= M (= K L)))
      )
      (main@verifier.error P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_8 A B C D Q R S)
        (and (= E (+ D Q))
     (= F R)
     (= I (+ C J))
     (= J (+ 1 A))
     (= L (+ E K))
     (= K (+ 1 B))
     (= M J)
     (= N K)
     (= O I)
     (= P L)
     (not H)
     (= H (= G S)))
      )
      (main@_8 M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (<= B A))))
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
