(set-logic HORN)

(declare-fun |main@entry.split.4| ( Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry.split.outer.6| ( Int Bool Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@entry.split.1| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.5| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.6| ( Int Bool Int ) Bool)
(declare-fun |main@verifier.error.loopexit| ( ) Bool)
(declare-fun |main@entry.split.2| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.1| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.3| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.8| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.3| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.9| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.7| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.2| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.9| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.8| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.4| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.7| ( Int Bool Int ) Bool)
(declare-fun |main@entry.split.outer.5| ( Int Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@entry J C E)
        (and (= I (= F 0))
     (= K (= G H))
     (= B C)
     (= D E)
     (= L 0)
     (= A true)
     (not I)
     (= A (= H 0)))
      )
      (main@entry.split J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.1 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.1 B C A)
        (= D A)
      )
      (main@entry.split.1 B C D)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.1 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.1 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.1 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.2 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.2 B C A)
        (= D A)
      )
      (main@entry.split.2 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.2 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.2 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.2 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.3 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.3 B C A)
        (= D A)
      )
      (main@entry.split.3 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.3 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.3 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.3 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.4 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.4 B C A)
        (= D A)
      )
      (main@entry.split.4 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.4 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.4 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.4 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.5 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.5 B C A)
        (= D A)
      )
      (main@entry.split.5 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.5 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.5 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.5 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.6 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.6 B C A)
        (= D A)
      )
      (main@entry.split.6 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.6 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.6 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.6 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.7 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.7 B C A)
        (= D A)
      )
      (main@entry.split.7 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.7 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.7 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.7 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.8 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.8 B C A)
        (= D A)
      )
      (main@entry.split.8 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.8 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.8 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry.split.8 F G D)
        (and (= E (= D 4)) (= A F) (= H (+ 1 D)) (not C) (not E) (not G) (= C (= B 0)))
      )
      (main@entry.split.outer.9 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry.split.outer.9 B C A)
        (= D A)
      )
      (main@entry.split.9 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry.split.9 G H D)
        (and (= C (= B 0))
     (= A G)
     (= F (+ 1 D))
     (= I F)
     (not E)
     (not C)
     (= H true)
     (= E (= D 4)))
      )
      (main@entry.split.9 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@entry.split.9 B H F)
        (and (= G (= F 4)) (= A B) (= E (+ 1 F)) (not D) (not G) (not H) (= D (= C 0)))
      )
      main@verifier.error.loopexit
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.loopexit
        true
      )
      main@verifier.error
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
