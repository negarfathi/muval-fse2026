(set-logic HORN)

(declare-fun str_invariant
             (Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Int
              Int
              Bool
              Bool
              Int
              Int
              Int
              Int)
             Bool)
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Bool)
         (F Bool)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool))
  (=> (and (str_invariant K1
                             J1
                             I1
                             H1
                             G1
                             F1
                             E1
                             D1
                             C1
                             B1
                             A1
                             Z
                             Y
                             X
                             W
                             V
                             U
                             T
                             S
                             R
                             Q
                             P
                             O
                             N
                             M
                             L
                             K
                             J
                             I
                             H
                             G
                             F
                             E
                             D
                             C
                             B
                             A)
              (not (= X true)))
         false)
    ))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Bool)
         (F Bool)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool))
  (let ((a!1 (>= (ite (not (= J1 true)) 0 1) 0))
           (a!2 (ite (= M true) 7 (ite (= L true) 8 (ite (= K true) 9 10))))
           (a!7 (>= (ite (not (= Y true)) 0 1) 0))
           (a!8 (- 1 (ite (not (= J1 true)) 0 1)))
           (a!9 (>= (ite (not (= K1 true)) 0 1) 0))
           (a!10 (- 1 (ite (not (= Y true)) 0 1)))
           (a!11 (- C (ite (= F true) (ite (= E true) 1 0) 0)))
           (a!12 (- 1 (ite (not (= K1 true)) 0 1)))
           (a!13 (- D (ite (= F true) (ite (= E true) 4 0) 0)))
           (a!14 (ite (and (= J true) (not (= U true)))
                      0
                      (+ (* 60 I) (* 10 H) G))))
     (let ((a!3 (ite (= P true) 4 (ite (= O true) 5 (ite (= N true) 6 a!2)))))
     (let ((a!4 (ite (= S true) 1 (ite (= R true) 2 (ite (= Q true) 3 a!3)))))
     (let ((a!5 (>= (- 9 (ite (= T true) 0 a!4)) 0)))
     (let ((a!6 (ite (= J1 true) 0 (ite a!5 (ite (= T true) 0 a!4) 0))))
     (let ((a!15 (and (or (= Z true) (not (= K true)))
                      (or (= A1 true) (not (= L true)))
                      (or (not (= Z true)) (= K true))
                      (or (= B1 true) (not (= M true)))
                      (or (not (= A1 true)) (= L true))
                      (or (= C1 true) (not (= N true)))
                      (or (not (= B1 true)) (= M true))
                      (or (= D1 true) (not (= O true)))
                      (or (not (= C1 true)) (= N true))
                      (or (= E1 true) (not (= P true)))
                      (or (not (= D1 true)) (= O true))
                      (or (= F1 true) (not (= Q true)))
                      (or (not (= E1 true)) (= P true))
                      (or (= G1 true) (not (= R true)))
                      (or (not (= F1 true)) (= Q true))
                      (or (= H1 true) (not (= S true)))
                      (or (not (= G1 true)) (= R true))
                      (or (= I1 true) (not (= T true)))
                      (or (not (= H1 true)) (= S true))
                      (or (not (= I1 true)) (= T true))
                      a!1
                      (= (- G a!6) 0)
                      a!7
                      (>= a!8 0)
                      (= H 0)
                      a!9
                      (>= a!10 0)
                      (= a!11 0)
                      (= F true)
                      (= U true)
                      (= I 0)
                      (>= a!12 0)
                      (= a!13 0)
                      (= (- A C) 0)
                      (= B 0)
                      (= (- V a!14) 0)
                      (= J true)
                      (= E true)
                      (= X true)
                      (= W true))))
       (=> a!15
           (str_invariant K1
                          J1
                          I1
                          H1
                          G1
                          F1
                          E1
                          D1
                          C1
                          B1
                          A1
                          Z
                          Y
                          X
                          W
                          V
                          U
                          T
                          S
                          R
                          Q
                          P
                          O
                          N
                          M
                          L
                          K
                          J
                          I
                          H
                          G
                          F
                          E
                          D
                          C
                          B
                          A))))))))
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Int)
         (K Int)
         (L Int)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Int)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Bool)
         (W1 Bool)
         (X1 Int)
         (Y1 Int)
         (Z1 Bool)
         (A2 Int)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Bool)
         (M2 Bool)
         (N2 Bool)
         (O2 Int)
         (P2 Bool)
         (Q2 Bool)
         (R2 Bool)
         (S2 Bool)
         (T2 Bool)
         (U2 Bool)
         (V2 Bool)
         (W2 Bool)
         (X2 Bool)
         (Y2 Int)
         (Z2 Bool)
         (A3 Int)
         (B3 Int)
         (C3 Bool)
         (D3 Int)
         (E3 Bool)
         (F3 Int)
         (G3 Bool)
         (H3 Int)
         (I3 Int)
         (J3 Int)
         (K3 Bool)
         (L3 Int)
         (M3 Int)
         (N3 Bool)
         (O3 Int)
         (P3 Int)
         (Q3 Bool)
         (R3 Bool)
         (S3 Int)
         (T3 Bool)
         (U3 Int)
         (V3 Int)
         (W3 Int)
         (X3 Bool)
         (Y3 Bool)
         (Z3 Int)
         (A4 Int)
         (B4 Int)
         (C4 Int)
         (D4 Int)
         (E4 Int)
         (F4 Int)
         (G4 Int)
         (H4 Int)
         (I4 Int)
         (J4 Bool)
         (K4 Int))
  (let ((a!1 (or (not (= N2 true))
                    (and (= N2 true) (not (= Y true)) (= M true))
                    (not (= B2 true))))
           (a!2 (and (= N2 true)
                     (or (not (= N2 true)) (= Y true) (not (= M true)))))
           (a!3 (ite (not (= (+ (- 4) F) 0)) 4 F))
           (a!4 (and (>= (+ (- 1) I3) 0) (>= (- 3 I3) 0)))
           (a!5 (ite (not (= (+ (- 3) K4) 0)) 3 K4))
           (a!8 (ite (= E2 true) 7 (ite (= D2 true) 8 (ite (= C2 true) 9 10))))
           (a!13 (ite (and (= D2 true) (= O false))
                      8
                      (ite (and (= C2 true) (= N false)) 9 10)))
           (a!18 (ite (and (= C2 true) (not (= N true))) 9 10))
           (a!32 (ite (not (= (+ (- 4) F) 0)) 1 E))
           (a!33 (ite (not (= (+ (- 3) K4) 0)) 3 H4))
           (a!36 (= (+ (- (* (- 10) A4) Z3) (* (- 60) (div S1 60)) O2) 0))
           (a!40 (or (and (not (= I true)) (= G true)) (not (= V1 true))))
           (a!43 (ite (and (= B2 true) (not (= N2 true)))
                      0
                      (ite (= N2 true) (+ (* 60 A2) (* 10 Y1) X1) Z)))
           (a!44 (ite (= J4 true) (ite (= (+ (- 2) I4) 0) 1 I4) I4))
           (a!45 (and (= (+ (- 2) I4) 0)
                      (or (not (= S3 0)) (= D3 0))
                      (not (= Y3 true))
                      (not (= X3 true))))
           (a!46 (ite (not (= (+ (- 2) D4) 0)) 2 D4))
           (a!47 (ite (not (= (+ (- 2) D4) 0)) 2 G4))
           (a!48 (ite (not (= (+ (- 4) U3) 0)) 1 F4))
           (a!49 (ite (not (= (+ (- 2) O3) 0)) 2 E4))
           (a!50 (ite (not (= (+ (- 4) L3) 0)) 1 C4))
           (a!51 (ite (= Y3 true) (ite (= (+ (- 2) V3) 0) 1 V3) V3))
           (a!52 (ite (not (= (+ (- 3) F3) 0)) 3 B4))
           (a!54 (ite (not (= (+ (- 2) B3) 0)) 2 E))
           (a!55 (div (+ S1 (* (- 60) (div S1 60))) 10))
           (a!57 (= Y3
                    (and (= (+ (- 2) V3) 0)
                         (>= (+ (- 1) W3) 0)
                         (not (= X3 true)))))
           (a!58 (ite (not (= (+ (- 4) U3) 0)) 4 U3))
           (a!59 (ite (and (>= (+ (- 1) P3) 0) (>= (- 3 P3) 0)) 0 P3))
           (a!60 (= T3
                    (and (= (+ (- 3) P3) 0)
                         (not (= S3 0))
                         (not (= Q3 true))
                         (= (+ (- 3) P3) 0)
                         (not (= Q3 true)))))
           (a!61 (= S3 (ite (not (= R3 true)) 0 1)))
           (a!62 (= R3 (and (= K2 true) (not (= P1 true)))))
           (a!63 (ite (not (= (+ (- 2) O3) 0)) 2 O3))
           (a!64 (ite (= N3 true) (ite (= (+ (- 3) M3) 0) 1 M3) M3))
           (a!65 (= N3
                    (and (= (+ (- 3) M3) 0)
                         (not (= Y2 0))
                         (not (= D3 0))
                         (not (= K3 true)))))
           (a!66 (ite (not (= (+ (- 4) L3) 0)) 4 L3))
           (a!67 (= K3
                    (and (= (+ (- 2) I3) 0) (>= (- J3) 0) (= (+ (- 2) I3) 0))))
           (a!68 (ite (not (= (+ (- 3) F3) 0)) 3 F3))
           (a!69 (= G3
                    (and (= C3 true)
                         (>= (+ (- 1) F3) 0)
                         (>= (- 3 F3) 0)
                         (not (= E3 true)))))
           (a!70 (ite (not (= (+ (- 2) B3) 0)) 2 B3))
           (a!71 (and (>= (+ (- 1) B3) 0) (>= (- 3 B3) 0)))
           (a!73 (= D3 (ite (not (= R2 true)) 0 1)))
           (a!74 (or (< (+ (- 1) A3) 0) (< (- 3 A3) 0)))
           (a!75 (ite (= Z2 true) (ite (= (+ (- 4) F) 0) 0 F) F))
           (a!76 (= (ite (>= (- O2) 0) 0 1) 0))
           (a!78 (= Y2 (ite (not (= X2 true)) 0 1)))
           (a!79 (= X2 (and (= V2 true) (not (= Q1 true))))))
     (let ((a!6 (ite (and (not (= Z2 true)) a!4) (ite (= J4 true) a!5 K4) I3))
           (a!9 (ite (= H2 true) 4 (ite (= G2 true) 5 (ite (= F2 true) 6 a!8))))
           (a!14 (ite (and (= F2 true) (= Q false))
                      6
                      (ite (and (= E2 true) (= P false)) 7 a!13)))
           (a!19 (ite (and (= D2 true) (not (= O true))) 8 a!18))
           (a!34 (ite (and (not (= Z2 true)) a!4) (ite (= J4 true) a!33 H4) C4))
           (a!37 (or (= Q2 true) (and (= 1 C) (not (= K2 true)) (not a!36))))
           (a!41 (ite (and (not (= Z2 true)) a!4)
                      (ite (= Y3 true) (+ (- 1) W3) W3)
                      J3))
           (a!53 (= C4 (ite (= Z2 true) (ite (= G3 true) a!52 B4) E)))
           (a!56 (= Z3 (+ S1 (* (- 10) a!55) (* (- 60) (div S1 60)))))
           (a!72 (= E3 (and (= C3 true) a!71 (not (= D3 0)))))
           (a!77 (= Z2
                    (and (= W2 true)
                         (= (+ (- 4) F) 0)
                         (not (= Y2 0))
                         (not a!76)))))
     (let ((a!7 (- U1 (ite (= W1 true) (ite (= V1 true) a!3 a!6) F)))
           (a!10 (ite (= L2 true) 1 (ite (= J2 true) 2 (ite (= I2 true) 3 a!9))))
           (a!15 (ite (and (= H2 true) (= T false))
                      4
                      (ite (and (= G2 true) (= R false)) 5 a!14)))
           (a!20 (ite (and (= E2 true) (not (= P true))) 7 a!19))
           (a!35 (- T1 (ite (= W1 true) (ite (= V1 true) a!32 a!34) E)))
           (a!42 (- S1 (ite (= W1 true) (ite (= V1 true) D a!41) D))))
     (let ((a!11 (>= (- 9 (ite (= M2 true) 0 a!10)) 0))
           (a!16 (ite (and (= J2 true) (= V false))
                      2
                      (ite (and (= I2 true) (= U false)) 3 a!15)))
           (a!21 (ite (and (= F2 true) (not (= Q true))) 6 a!20)))
     (let ((a!12 (ite (= K2 true) 0 (ite a!11 (ite (= M2 true) 0 a!10) 0)))
           (a!17 (ite (and (= M2 true) (= X false))
                      0
                      (ite (and (= L2 true) (= W false)) 1 a!16)))
           (a!22 (ite (and (= G2 true) (not (= R true))) 5 a!21)))
     (let ((a!23 (ite (and (= H2 true) (not (= T true))) 4 a!22))
           (a!30 (ite (= K2 true) 0 (ite (>= (- 9 a!17) 0) J K)))
           (a!38 (ite (= K2 true) 0 (ite (>= (- 9 a!17) 0) K L))))
     (let ((a!24 (ite (and (= I2 true) (not (= U true))) 3 a!23))
           (a!31 (- Y1 (ite (= N2 true) (ite (= B2 true) 0 a!30) K)))
           (a!39 (- A2 (ite (= N2 true) (ite (= B2 true) 0 a!38) L))))
     (let ((a!25 (ite (and (= J2 true) (not (= V true))) 2 a!24)))
     (let ((a!26 (ite (and (= L2 true) (not (= W true))) 1 a!25)))
     (let ((a!27 (ite (and (= M2 true) (not (= X true))) 0 a!26)))
     (let ((a!28 (ite (= K2 true) 0 (ite (>= (- 9 a!17) 0) a!27 J))))
     (let ((a!29 (- X1 (ite (= N2 true) (ite (= B2 true) a!12 a!28) J))))
     (let ((a!80 (and (str_invariant Q1
                                     P1
                                     N1
                                     M1
                                     L1
                                     K1
                                     J1
                                     I1
                                     H1
                                     G1
                                     F1
                                     E1
                                     C1
                                     B1
                                     A1
                                     Z
                                     Y
                                     X
                                     W
                                     V
                                     U
                                     T
                                     R
                                     Q
                                     P
                                     O
                                     N
                                     M
                                     L
                                     K
                                     J
                                     I
                                     G
                                     F
                                     E
                                     D
                                     C)
                      (or (= 1 C) (not (= N2 true)))
                      a!1
                      (or (not (= 1 C)) (= N2 true))
                      (or (= S2 true) (not (= C2 true)))
                      (or a!2 (= B2 true))
                      (or (= T2 true) (not (= D2 true)))
                      (or (not (= S2 true)) (= C2 true))
                      (or (= U2 true) (not (= E2 true)))
                      (or (not (= T2 true)) (= D2 true))
                      (or (= F2 true) (not (= A true)))
                      (or (not (= U2 true)) (= E2 true))
                      (or (= G2 true) (not (= B true)))
                      (or (not (= F2 true)) (= A true))
                      (or (= H2 true) (not (= H true)))
                      (or (not (= G2 true)) (= B true))
                      (or (= I2 true) (not (= S true)))
                      (or (not (= H2 true)) (= H true))
                      (or (= J2 true) (not (= D1 true)))
                      (or (not (= I2 true)) (= S true))
                      (or (= L2 true) (not (= O1 true)))
                      (or (not (= J2 true)) (= D1 true))
                      (or (= M2 true) (not (= Z1 true)))
                      (or (not (= L2 true)) (= O1 true))
                      (or (not (= M2 true)) (= Z1 true))
                      (>= S3 0)
                      (= a!7 0)
                      (= a!29 0)
                      (>= D3 0)
                      (>= (- 1 S3) 0)
                      (= a!31 0)
                      (>= Y2 0)
                      (>= (- 1 D3) 0)
                      (= a!35 0)
                      a!37
                      (= W1 true)
                      (= a!39 0)
                      a!40
                      (>= (- 1 Y2) 0)
                      (= (- R1 T1) 0)
                      (or (not (= Q2 true)) (not (= 1 C)) (= K2 true) a!36)
                      (= a!42 0)
                      (= (- O2 a!43) 0)
                      (or (= I true) (not (= G true)) (= V1 true))
                      (= K4 a!44)
                      (= J4 a!45)
                      (= I4 (ite (= Y3 true) a!46 D4))
                      (= H4 (ite (= Y3 true) a!47 G4))
                      (= G4 (ite (= T3 true) a!48 F4))
                      (= F4 (ite (= N3 true) a!49 E4))
                      (= E4 (ite (= K3 true) a!50 C4))
                      (= D4 a!51)
                      a!53
                      (= B4 (ite (= E3 true) a!54 E))
                      (= A4 a!55)
                      a!56
                      a!57
                      (= X3 (or (= T3 true) (= Q3 true)))
                      (= W3 (ite (= T3 true) 0 J3))
                      (= V3 (ite (= T3 true) a!58 U3))
                      (= U3 (ite (= T3 true) a!59 P3))
                      a!60
                      a!61
                      a!62
                      (= Q3 (or (= N3 true) (= K3 true)))
                      (= P3 (ite (= N3 true) a!63 O3))
                      (= O3 a!64)
                      a!65
                      (= M3 (ite (= K3 true) a!66 L3))
                      (= L3 (ite (= K3 true) (ite a!4 0 I3) I3))
                      a!67
                      (= J3 (ite (= W2 true) O2 D))
                      (= I3 (ite (= Z2 true) H3 A3))
                      (= H3 (ite (= G3 true) a!68 F3))
                      a!69
                      (= F3 (ite (= E3 true) a!70 B3))
                      a!72
                      a!73
                      (= C3 (and a!74 a!71))
                      (= B3 (ite a!74 1 A3))
                      (= A3 a!75)
                      a!77
                      a!78
                      a!79
                      (= W2 (= (+ (- 4) F) 0))
                      (not (= P2 true)))))
       (=> a!80
           (str_invariant V2
                          K2
                          Z1
                          O1
                          D1
                          S
                          H
                          B
                          A
                          U2
                          T2
                          S2
                          R2
                          Q2
                          P2
                          O2
                          N2
                          M2
                          L2
                          J2
                          I2
                          H2
                          G2
                          F2
                          E2
                          D2
                          C2
                          B2
                          A2
                          Y1
                          X1
                          W1
                          V1
                          U1
                          T1
                          S1
                          R1)))))))))))))))
    ))


(check-sat)
(exit)
