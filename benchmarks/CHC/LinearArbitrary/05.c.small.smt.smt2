(set-logic HORN)

(declare-fun |id@id2.exit.thread| ( Int Int ) Bool)
(declare-fun |id@_tail1| ( Int ) Bool)
(declare-fun |id| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |id@_6| ( Int ) Bool)
(declare-fun |id@id2.exit.thread4| ( Int Int ) Bool)
(declare-fun |id@id2.exit| ( Int Int ) Bool)
(declare-fun |id@id2.exit.thread4.split| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |id@_tail| ( Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (id v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (id v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (id v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (id@_tail A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (id@_tail C)
        (and (= B 0) (= A true) (= A (= C 0)))
      )
      (id@id2.exit.thread4 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (id@_tail B)
        (and (not A) (= A (= B 0)))
      )
      (id@_tail1 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (id@_tail1 C)
        (and (= B 1) (= A true) (= A (= C 1)))
      )
      (id@id2.exit.thread B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (id@_tail1 B)
        (and (not A) (= A (= B 1)))
      )
      (id@_6 B)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (v_4 Bool) (v_5 Bool) (v_6 Bool) ) 
    (=>
      (and
        (id@_6 D)
        (id v_4 v_5 v_6 A C)
        (and (= v_4 true)
     (= v_5 false)
     (= v_6 false)
     (= A (+ (- 2) D))
     (= B true)
     (= B (not (<= 2 C))))
      )
      (id@id2.exit C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (v_5 Bool) (v_6 Bool) (v_7 Bool) ) 
    (=>
      (and
        (id@_6 E)
        (id v_5 v_6 v_7 A B)
        (and (= v_5 true)
     (= v_6 false)
     (= v_7 false)
     (= A (+ (- 2) E))
     (= D 2)
     (not C)
     (= C (not (<= 2 B))))
      )
      (id@id2.exit.thread4 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (id@id2.exit B E)
        (and (= A (+ 2 B)) (= D 2) (= C true) (= C (= B 1)))
      )
      (id@id2.exit.thread4 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (id@id2.exit A E)
        (and (= C (+ 2 A)) (= D C) (not B) (= B (= A 1)))
      )
      (id@id2.exit.thread D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (id@id2.exit.thread A C)
        (= B A)
      )
      (id@id2.exit.thread4 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (id@id2.exit.thread4 A B)
        true
      )
      (id@id2.exit.thread4.split A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (id@id2.exit.thread4.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (id v_2 v_3 v_4 A B)
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
        (id v_5 v_6 v_7 C D)
        (and (= v_5 true) (= v_6 false) (= v_7 false) (= A B) (not E) (= E (= D 3)))
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
