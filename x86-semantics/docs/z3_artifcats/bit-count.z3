; This is a faulty specification or 
; implementation of an efficient bit-counting program.
; Can you correct it?
; nb1 is the specification.
; nb2 is the implementation.

(define-fun nb1 ((x (_ BitVec 32))) (_ BitVec 32)
  (bvadd 
   (ite (= ((_ extract 31 31) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 30 30) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 29 29) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 28 28) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 27 27) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 26 26) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 25 25) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 24 24) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 23 23) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 22 22) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 21 21) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 20 20) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 19 19) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 18 18) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 17 17) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 16 16) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 15 15) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 14 14) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 13 13) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 12 12) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 11 11) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 10 10) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 9 9) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 8 8) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 7 7) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 6 6) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 5 5) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 4 4) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 3 3) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 2 2) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 1 1) x) #b0) #x00000001 #x00000000)
   (ite (= ((_ extract 0 0) x) #b0) #x00000001 #x00000000)))

(declare-fun nX () (_ BitVec 32))

(define-fun nb2 ((x (_ BitVec 32))) (_ BitVec 32)
  (let ((nc2 x))
  (let ((nc2 (bvadd (bvand nc2 #x00005555) (bvand ((_ rotate_right 1) nc2) #x00005555))))
  (let ((nc2 (bvadd (bvand nc2 #x00003333) (bvand ((_ rotate_right 1) nc2) #x00003333))))
  (let ((nc2 (bvadd (bvand nc2 #x00000077) (bvand ((_ rotate_right 2) nc2) #x00000077))))
  (let ((nc2 (bvadd (bvand nc2 #x0000000F) (bvand ((_ rotate_right 4) nc2) #x0000000F))))
    nc2))))))  

(assert (not (= (nb1 nX) (nb2 nX))))
(check-sat)
(get-model)


