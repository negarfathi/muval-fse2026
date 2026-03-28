(set-logic HORN)

(declare-fun |sum@add.exit| ( Int Int ) Bool)
(declare-fun |sum@tailrecurse.i| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |sum@_loop.bound| ( Int ) Bool)
(declare-fun |sum@add.exit.split| ( Int Int ) Bool)
(declare-fun |sum@_5| ( Int Int ) Bool)
(declare-fun |sum| ( Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (sum v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (sum v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (sum v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (sum@_loop.bound A)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (sum@_loop.bound E)
        (and (= C (not (<= 1 E))) (= D 0) (= B true) (= C true) (= B (= A 2)))
      )
      (sum@add.exit D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (sum@_loop.bound D)
        (and (= B (not (<= 1 D))) (= A true) (not B) (= A (= C 2)))
      )
      (sum@_5 C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (sum@_5 A F)
        (sum v_6 v_7 v_8 B C)
        (and (= v_6 true)
     (= v_7 false)
     (= v_8 false)
     (= B (+ (- 1) F))
     (= E F)
     (= D true)
     (= D (not (<= 1 C))))
      )
      (sum@add.exit E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (sum@_5 F G)
        (sum v_7 v_8 v_9 A C)
        (and (= v_7 true)
     (= v_8 false)
     (= v_9 false)
     (= A (+ (- 1) G))
     (= E G)
     (= D C)
     (not B)
     (= B (not (<= 1 C))))
      )
      (sum@tailrecurse.i D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (sum@tailrecurse.i C B D H)
        (and (= A (+ (- 1) C)) (= F (+ 1 B)) (= G F) (= E true) (= E (not (<= D C))))
      )
      (sum@add.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (sum@tailrecurse.i B A H I)
        (and (= G E)
     (= D (+ (- 1) B))
     (= F D)
     (= E (+ 1 A))
     (not C)
     (= C (not (<= H B))))
      )
      (sum@tailrecurse.i F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (sum@add.exit A B)
        true
      )
      (sum@add.exit.split A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (sum@add.exit.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (sum v_2 v_3 v_4 A B)
    )
  )
)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (v_5 Bool) (v_6 Bool) (v_7 Bool) ) 
    (=>
      (and
        (main@entry B)
        (sum v_5 v_6 v_7 C D)
        (and (= v_5 true)
     (= v_6 false)
     (= v_7 false)
     (= A B)
     (not E)
     (= E (not (<= D (- 1)))))
      )
      main@entry.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@entry.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
