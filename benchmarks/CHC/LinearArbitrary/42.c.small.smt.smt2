(set-logic HORN)

(declare-fun |main@._crit_edge7.thread| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph6| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int ) Bool)
(declare-fun |main@_37| ( Int Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@._crit_edge.thread| ( Int Int ) Bool)
(declare-fun |main@._crit_edge7| ( Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge.thread.peel.newph| ( Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= B (= J 0))
     (= D (= C 0))
     (= G (= F 0))
     (= E I)
     (= A true)
     (= B true)
     (= D true)
     (= G true)
     (= A (= H 0)))
      )
      (main@._crit_edge7.thread H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= B (= I 0))
     (= C (= L 0))
     (= F (= E 0))
     (= D H)
     (= J 0)
     (= K 100)
     (= A true)
     (= B true)
     (= C true)
     (not F)
     (= A (= G 0)))
      )
      (main@.lr.ph6 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph6 I J K L B G)
        (and (= C (not (<= B 10)))
     (= A (+ 1 L))
     (= D (+ 1 B))
     (= E J)
     (= M (ite C 0 D))
     (= H true)
     (= H (= F G)))
      )
      (main@._crit_edge7 I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph6 J K L A B O)
        (and (= G (= F O))
     (= E K)
     (= D (+ 1 B))
     (= I (ite C 0 D))
     (= H (+ 1 A))
     (= M H)
     (= N I)
     (not G)
     (= C (not (<= B 10))))
      )
      (main@.lr.ph6 J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@._crit_edge7 F G H B A)
        (and (= D (<= A B)) (= E (or D C)) (= E true) (= C (not (<= 10 B))))
      )
      (main@._crit_edge7.thread F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@._crit_edge7 A B C E D)
        (and (= G (<= D E)) (= H (or G F)) (not H) (= F (not (<= 10 E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@._crit_edge7.thread G H A)
        (and (= B H) (= C H) (= D H) (= F true) (= F (= E 0)))
      )
      (main@._crit_edge.thread G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@._crit_edge7.thread F G J)
        (and (= A G) (= B G) (= C G) (= H 0) (= I 100) (not E) (= E (= D 0)))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph I J K B G)
        (and (= C (not (<= B 10)))
     (= A (+ 1 K))
     (= D (+ 1 B))
     (= E J)
     (= L (ite C 0 D))
     (= H true)
     (= H (= F G)))
      )
      (main@._crit_edge I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph J K A B N)
        (and (= C (not (<= B 10)))
     (= D (+ 1 B))
     (= E K)
     (= H (+ 1 A))
     (= I (ite C 0 D))
     (= L H)
     (= M I)
     (not G)
     (= G (= F N)))
      )
      (main@.lr.ph J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge F G B A)
        (and (= C (not (<= 10 B))) (= D (<= A B)) (= E true) (= E (or D C)))
      )
      (main@._crit_edge.thread F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@._crit_edge A B D C)
        (and (= F (<= C D)) (= G (or F E)) (not G) (= E (not (<= 10 D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge.thread I D)
        (and (= C D) (= A D) (= B D) (= G true) (= G (= E F)))
      )
      (main@._crit_edge.thread.peel.newph H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@._crit_edge.thread A E)
        (and (= C E) (= B E) (= D E) (= I 0) (not H) (= H (= F G)))
      )
      (main@.loopexit I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@._crit_edge.thread.peel.newph A B)
        (and (= C 1) (= D (= A B)))
      )
      (main@_37 C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@_37 A D)
        (and (= C B) (= D true) (= B (+ 1 A)))
      )
      (main@_37 C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@_37 C B)
        (and (= D C) (not B) (= A (+ 1 C)))
      )
      (main@.loopexit D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@.loopexit A)
        (let ((a!1 (= C (or (not (<= B 89)) (not (>= B 0))))))
  (and (= B (+ (- 11) A)) (not C) a!1))
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
