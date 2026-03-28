(set-logic HORN)

(declare-fun |main@LeafBlock.i| ( Int ) Bool)
(declare-fun |main@close.exit| ( Int Int Bool Int ) Bool)
(declare-fun |main@LeafBlock.i.i27| ( Int Int ) Bool)
(declare-fun |main@f| ( Int Int Bool Int ) Bool)
(declare-fun |main@LeafBlock1.i.i25| ( Int ) Bool)
(declare-fun |main@precall14| ( Bool Int ) Bool)
(declare-fun |main@precall12| ( Bool Int ) Bool)
(declare-fun |main@_17| ( Int Int ) Bool)
(declare-fun |main@_13| ( Int Int Bool Int ) Bool)
(declare-fun |main@read.exit| ( Int Int ) Bool)
(declare-fun |main@read| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_9| ( Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@postcall7| ( Int Int Bool ) Bool)
(declare-fun |main@close.exit22| ( Int Int Bool Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= H (not (<= D 0)))
     (= A C)
     (= B C)
     (= I (ite H 1 0))
     (not E)
     (= G true)
     (= G (not (<= F 0))))
      )
      (main@precall12 H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= H (not (<= D 0)))
     (= A C)
     (= B C)
     (= I (ite H 1 0))
     (not E)
     (not G)
     (= G (not (<= F 0))))
      )
      (main@precall14 H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@LeafBlock.i A)
        (and (not B) (= B (= A 1)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) ) 
    (=>
      (and
        (main@read E A)
        (and (= D (not (<= 3 E))) (not B) (not C) (= D true) (= B (= A 0)))
      )
      (main@LeafBlock.i E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@f A B C D)
        (= C true)
      )
      (main@_9 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@f A B C D)
        (not C)
      )
      (main@close.exit A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@_9 C D E F)
        (and (or (not (= D 0)) (= A 2)) (= B true) (= B (= A 3)))
      )
      (main@close.exit C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) ) 
    (=>
      (and
        (main@close.exit B C D E)
        (and (= A true) (= A (= B 0)))
      )
      (main@close.exit22 B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) ) 
    (=>
      (and
        (main@close.exit B C D E)
        (and (not A) (= A (= B 0)))
      )
      (main@_13 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@_13 C D E F)
        (and (or (not (= D 0)) (= A 2)) (= B true) (= B (= A 3)))
      )
      (main@close.exit22 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@close.exit22 C D E A)
        (= B true)
      )
      (main@postcall7 C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@close.exit22 A D B E)
        (and (= G E) (not C) (= F D))
      )
      (main@read F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@postcall7 B C A)
        (= A true)
      )
      (main@_17 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@postcall7 D B A)
        (and (not A) (= C B))
      )
      (main@read.exit C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_17 C A)
        (and (= B true) (= B (= A 3)))
      )
      (main@LeafBlock1.i.i25 C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@_17 B C)
        (and (not A) (= A (= C 3)))
      )
      (main@LeafBlock.i.i27 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (main@LeafBlock1.i.i25 B)
        (= A 3)
      )
      (main@read.exit A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@LeafBlock.i.i27 D A)
        (and (= C 1) (= B true) (= B (= A 1)))
      )
      (main@read.exit C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@read.exit B C)
        (and (= E C) (not A) (= D B))
      )
      (main@read D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@precall12 E F)
        (and (= C 1) (= D B) (not A) (= B (ite E 3 1)))
      )
      (main@f C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) ) 
    (=>
      (and
        (main@precall14 D E)
        (and (= C E) (not A) (= B 0))
      )
      (main@f B C D E)
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
