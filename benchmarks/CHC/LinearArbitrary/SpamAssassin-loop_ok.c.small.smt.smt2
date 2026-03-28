(set-logic HORN)

(declare-fun |main@_11| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry.split.us.outer| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.us| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_17| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_15| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry.split.us| ( Int Int Int Int Int Bool ) Bool)

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
        (main@entry J)
        (and (= E (not (<= D 4)))
     (= B J)
     (= C J)
     (= G (+ (- 4) D))
     (= H 0)
     (= A true)
     (= E true)
     (= A (= I (- 1))))
      )
      (main@entry.split.us.outer F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@entry.split.us.outer A B C D E)
        (= F (not (<= A C)))
      )
      (main@entry.split.us A B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry.split.us C D B G H A)
        (and (= F B) (= A true) (= E 0))
      )
      (main@.lr.ph.us C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph.us B C D E F H)
        (and (= G (+ 1 E)) (= A true) (= A (not (<= B G))))
      )
      (main@_11 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph.us B C D E F H)
        (and (= G (+ 1 E)) (not A) (= A (not (<= B G))))
      )
      (main@_15 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_11 E F G H I A J)
        (and (= B J) (= D true) (= D (= C 0)))
      )
      (main@_17 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_11 D E F G H I J)
        (and (= A J) (not C) (= C (= B 0)))
      )
      (main@_15 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_15 G H D A I C J)
        (and (= E D) (= F C) (= B true) (= B (not (<= A I))))
      )
      (main@_19 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@_15 A B C F G D E)
        (and (not H) (= H (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_17 G H A B I J)
        (and (= C (+ 2 B)) (= D (+ 2 A)) (= F C) (= E D))
      )
      (main@_19 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_19 A F G H K L)
        (and (= D (and C B))
     (= C (not (<= H E)))
     (= E (+ 1 A))
     (= I E)
     (= J F)
     (= D true)
     (= B (not (<= G F))))
      )
      (main@.lr.ph.us G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_19 A F G H J K)
        (and (= E (and D C))
     (= D (not (<= H B)))
     (= B (+ 1 A))
     (= I F)
     (not E)
     (= C (not (<= G F))))
      )
      (main@entry.split.us.outer G H I J K)
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
