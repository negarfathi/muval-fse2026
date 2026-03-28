(set-logic HORN)

(declare-fun |main@LeafBlock.i| ( Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@NodeBlock.i| ( Int ) Bool)
(declare-fun |main@NewDefault.i| ( ) Bool)
(declare-fun |main@LeafBlock1.i| ( Int ) Bool)
(declare-fun |main@foo.exit.split| ( ) Bool)
(declare-fun |main@LeafBlock3.i| ( Int ) Bool)
(declare-fun |main@foo.exit| ( Bool ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        main@entry
        (and (= A true) (= A (not (<= 5 B))))
      )
      (main@LeafBlock.i B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        main@entry
        (and (not A) (= A (not (<= 5 B))))
      )
      (main@NodeBlock.i B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (main@NodeBlock.i B)
        (and (= A true) (= A (not (<= 15 B))))
      )
      (main@LeafBlock1.i B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (main@NodeBlock.i B)
        (and (not A) (= A (not (<= 15 B))))
      )
      (main@LeafBlock3.i B)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@LeafBlock3.i A)
        (and (= C true) (= B true) (= B (= A 15)))
      )
      (main@foo.exit C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@LeafBlock3.i A)
        (and (not B) (= B (= A 15)))
      )
      main@NewDefault.i
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@LeafBlock1.i A)
        (and (not C) (= B true) (= B (= A 5)))
      )
      (main@foo.exit C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@LeafBlock1.i A)
        (and (not B) (= B (= A 5)))
      )
      main@NewDefault.i
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@LeafBlock.i A)
        (and (not C) (= B true) (= B (= A 0)))
      )
      (main@foo.exit C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@LeafBlock.i A)
        (and (not B) (= B (= A 0)))
      )
      main@NewDefault.i
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        main@NewDefault.i
        (not A)
      )
      (main@foo.exit A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@foo.exit B)
        (and (not A) (= B true))
      )
      main@foo.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@foo.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
