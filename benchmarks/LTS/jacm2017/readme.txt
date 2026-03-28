Benchmark used in Figure 6 of JACM paper
The file names are relative to https://github.com/hkhlaaf/T2/tree/master/test
=======================================
* Cancel I/O: past.t2
  register_CTLStar_SAT_test "past.t2" "A G(InsertTailList == 0 || Y (S (InsertTailList == 0),(IoMarkIrpPending == 1)))"
  register_CTLStar_SAT_test "past.t2" "A G(InsertTailList == 0 || ( P(KeAcquireSpinLock == 1) && A F(KeReleaseSpinLock == 1)))"

* OS frag 1: 1394complete-succeed-2.t2
    register_CTLStar_UNSAT_test "1394complete-succeed-2.t2" "A G((E G(phi_io_compl <= 0)) || (E F(G (phi_nSUC_ret > 0))))"
    register_CTLStar_SAT_test "1394complete-succeed-2.t2" "E F((A F(phi_io_compl > 0)) && (A G(F (phi_nSUC_ret <= 0))))"

* OS flag 2: 1394-succeed-2.t2
  register_CTLStar_SAT_test "1394-succeed-2.t2" "E F(G (((keA <= 0) && (A G (keR == 0)))))" 
  register_CTLStar_SAT_test "1394-succeed-2.t2" "E F(G (((keA <= 0) || (E F (keR == 1)))))" 

* OS flag 3: ppblock.t2
  register_CTLStar_SAT_test "ppblock.t2" "E F(PPBlockInits > 0  && ( ( (E F(G (IoCreateDevice != 1))) || (A G( F(status == 1))) ) && (E G(PPBunlockInits <= 0)) ) )" 

* PgSQL arch 1: ??
* PgSQL arch 2: ??

* Bench 1: testsuite/ctlstar_5.t2
   register_CTLStar_SAT_test "testsuite/ctlstar_5.t2" "E F(G ((x == 1) && (E G(y == 0))))"

* Bench 2: ??
* Bench 3: ??
* Bench 4: testsuite/example9.t2
   register_CTLStar_UNSAT_test "testsuite/example9.t2" "A G( (E F(G (y = 1))) && (E F(x >= t)))"//

* Bench 5: testsuite/ctlstar_4.t2
   register_CTLStar_SAT_test "testsuite/ctlstar_4.t2" "A G(F(b == 0)) && (W(x == 0),(b == 0))"
* Bench 6: testsuite/example10.t2
   register_CTLStar_UNSAT_test "testsuite/example10.t2" "A G( (E F (G (x = 0))) && (E F(x = 20)))"
* Bench 7: ?
* Bench 8: ctlstar_test.t2
   register_CTLStar_SAT_test "ctlstar_test.t2" "A G ((A F(G (x == 0))) || (A F(G (x == 1))))"


=====
 The above correspondence is based on guesses from the following code
 from https://github.com/hkhlaaf/T2/blob/master/src/programTests.fs 
=====
register_CTLStar_SAT_test "past.t2" "A G(InsertTailList == 0 || Y (S (InsertTailList == 0),(IoMarkIrpPending == 1)))"
    register_CTLStar_SAT_test "past.t2" "((A (W (InsertTailList == 0), (IoMarkIrpPending == 1))) && (A G( (InsertTailList == 0) || (A X( W (InsertTailList == 0), (IoMarkIrpPending == 1))))))"
    register_CTLStar_SAT_test "past.t2" "A G(InsertTailList == 0 || ( P(KeAcquireSpinLock == 1) && A F(KeReleaseSpinLock == 1)))"

    //Timeouts for CTL* are commented out. If known why a comment is left above.
    register_CTLStar_UNSAT_test "1394complete-succeed-2.t2" "A G((E G(phi_io_compl <= 0)) || (E F(G (phi_nSUC_ret > 0))))"
    register_CTLStar_SAT_test "1394complete-succeed-2.t2" "E F((A F(phi_io_compl > 0)) && (A G(F (phi_nSUC_ret <= 0))))"
    register_CTLStar_SAT_test "1394-succeed-2.t2" "E F(G (((keA <= 0) && (A G (keR == 0)))))" //
    register_CTLStar_SAT_test "1394-succeed-2.t2" "E F(G (((keA <= 0) || (E F (keR == 1)))))"  //

    register_CTLStar_SAT_test "ppblock.t2" "E F(PPBlockInits > 0  && ( ( (E F(G (IoCreateDevice != 1))) || (A G( F(status == 1))) ) && (E G(PPBunlockInits <= 0)) ) )" 
    //Program is about 110 - 400 lines of code.   

    //CTL* Toy examples - About 10-15 lines of code

    register_CTLStar_SAT_test "testsuite/ctlstar_5.t2" "E F(G ((x == 1) && (E G(y == 0))))"
    register_CTLStar_SAT_test "testsuite/ctlstar_3.t2" "E G(F (x == 1))"
    
    register_CTLStar_SAT_test "testsuite/ctlstar.t2" "E F(G (x == 1))"
    register_CTLStar_UNSAT_test "testsuite/example9.t2" "A G( (E F(G (y = 1))) && (E F(x >= t)))"//

    //Z3 Out of memory exception for program below 
    //register_CTLStar_SAT_test "testsuite/ctlstar_4.t2" "A G(F(b == 0)) && (W(x == 0),(b == 0))"
    register_CTLStar_UNSAT_test "testsuite/example10.t2" "A G( (E F (G (x = 0))) && (E F(x = 20)))"
    register_CTLStar_UNSAT_test "ctlstar_test.t2" "(E F(G (x == 0))) && (E F(G (x == 1)))"
    register_CTLStar_SAT_test "ctlstar_test.t2" "A G ((A F(G (x == 0))) || (A F(G (x == 1))))"

    //Small bug to be fixed for stand alone AF. A corner case essentially. 
   // register_CTL_SAT_test "1394complete-succeed.t2" "([AF](phi_io_compl <= 0)) || ([AF](phi_nSUC_ret <= 0))" None 
   
