(set-logic HORN)

(declare-fun |main@.critedge.i.loopexit| ( Int Int Int Int ) Bool)
(declare-fun |main@.critedge.i.split| ( ) Bool)
(declare-fun |main@.critedge.i| ( Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry J)
        (and (= B (= M 0))
     (= C (= N 0))
     (= F (not (<= H 2)))
     (= D J)
     (= E J)
     (= G (+ (- 2) H))
     (= I 1)
     (= K H)
     (= L G)
     (= A true)
     (= B true)
     (= C true)
     (= F true)
     (= A (= O 1)))
      )
      (main@.lr.ph I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= J (not (<= K 2)))
     (= B (= A 1))
     (= D (= C 0))
     (= G I)
     (= H I)
     (= L (+ (- 2) K))
     (= M 1)
     (= O L)
     (= P K)
     (= F true)
     (not J)
     (not N)
     (= B true)
     (= D true)
     (= F (= E 0)))
      )
      (main@.critedge.i M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph D O C G R S T)
        (and (= E (not (= D R)))
     (= I (or F E))
     (= J (and H I))
     (= F (not (= K S)))
     (= H (not (<= G T)))
     (= A O)
     (= L (+ (- 1) G))
     (= M (ite B C G))
     (= N K)
     (= P M)
     (= Q L)
     (= J true)
     (= B (= K 0)))
      )
      (main@.lr.ph N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph Q B D I E F J)
        (and (= M (and K L))
     (= G (not (= Q E)))
     (= K (not (<= I J)))
     (= C (= N 0))
     (= H (not (= N F)))
     (= A B)
     (= O (ite C D I))
     (= P (+ (- 1) I))
     (not M)
     (= L (or H G)))
      )
      (main@.critedge.i.loopexit N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.critedge.i.loopexit A B C D)
        (and (= G E) (= F D) (= H C) (= I B) (= E (= A 0)))
      )
      (main@.critedge.i F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@.critedge.i A C D F)
        (and (= H (and C B))
     (= I (and G H))
     (= G (not (<= E F)))
     (= E (+ 2 D))
     (= I true)
     (= B (= A 0)))
      )
      main@.critedge.i.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@.critedge.i.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
