(set-logic HORN)

(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |main@precall.loopexit| ( Bool ) Bool)
(declare-fun |main@postcall| ( Int Bool Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@precall| ( Bool ) Bool)

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
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B)
     (= F E)
     (= H 1)
     (= I 1)
     (= J 1)
     (= K 2)
     (= C true)
     (= D true)
     (= G true)
     (= C (not (<= E 0))))
      )
      (main@postcall F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= D true) (not E) (not F) (= D (not (<= C 0))))
      )
      (main@precall F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@precall.loopexit A)
        (and (= C B) (= B (not A)))
      )
      (main@precall C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@precall A)
        (= A true)
      )
      main@precall.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@postcall C A E M F N)
        (and (= D (not (<= C 1)))
     (= I (= J G))
     (= P I)
     (= G (+ K M))
     (= L (+ (- 1) C))
     (= J (+ F N))
     (= K (+ E M))
     (= O L)
     (= Q M)
     (= R K)
     (= S N)
     (= T J)
     (not B)
     (= D true)
     (= H true)
     (= B (not A)))
      )
      (main@postcall O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) ) 
    (=>
      (and
        (main@postcall D B F J G H)
        (and (= C (not B))
     (= N (= K L))
     (= A (+ (- 1) D))
     (= I (+ F J))
     (= K (+ G H))
     (= L (+ I J))
     (= E true)
     (not C)
     (not M)
     (= E (not (<= D 1))))
      )
      (main@precall.loopexit N)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@precall.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
