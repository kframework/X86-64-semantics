; This example illustrates macros and
; bit-vectors.
; The problem is to verify a program that checks
; if a bit-vector represents a power of two or is zero.
; (as at most one bit set)
(define-fun is-power-of-two ((x (_ BitVec 32))) Bool
  (= #x00000000 (bvand x (bvsub x #x00000001))))

(define-fun check-power-of-two ((x (_ BitVec 32)) (sh (_ BitVec 32))) Bool
  (= x (bvshl #x00000001 sh)))

(define-fun check-power-of-two-1 ((x (_ BitVec 32)) (sh (_ BitVec 32))) Bool
  (let ((sh1 (bvshl sh #x00000001)))
    (or (check-power-of-two x sh1) (check-power-of-two x (bvadd #x00000001 sh1)))))

(define-fun check-power-of-two-2 ((x (_ BitVec 32)) (sh (_ BitVec 32))) Bool
  (let ((sh1 (bvshl sh #x00000001)))
    (or (check-power-of-two-1 x sh1) (check-power-of-two-1 x (bvadd #x00000001 sh1)))))

(define-fun check-power-of-two-3 ((x (_ BitVec 32)) (sh (_ BitVec 32))) Bool
  (let ((sh1 (bvshl sh #x00000001)))
    (or (check-power-of-two-2 x sh1) (check-power-of-two-2 x (bvadd #x00000001 sh1)))))

(define-fun check-power-of-two-4 ((x (_ BitVec 32)) (sh (_ BitVec 32))) Bool
  (let ((sh1 (bvshl sh #x00000001)))
    (or (check-power-of-two-3 x sh1) (check-power-of-two-3 x (bvadd #x00000001 sh1)))))

(define-fun check-power-of-two-5 ((x (_ BitVec 32)) (sh (_ BitVec 32))) Bool
  (let ((sh1 (bvshl sh #x00000001)))
    (or (check-power-of-two-4 x sh1) (check-power-of-two-4 x (bvadd #x00000001 sh1)))))

(declare-fun x () (_ BitVec 32))
(declare-fun y () (_ BitVec 32))
(declare-fun z () (_ BitVec 32))

(push)
(assert (not (implies (is-power-of-two x) (check-power-of-two-5 x #x00000000))))
(check-sat)
(get-model)

(push)
(define-fun is-zero-on-zero () Bool (implies (is-power-of-two x) (not (= #x00000000 x))))
(assert (not is-zero-on-zero))
(check-sat)
(get-model)
(pop)

(define-fun check-power-of-two-6 ((x (_ BitVec 32)) (sh (_ BitVec 32))) Bool
  (let ((sh1 (bvshl sh #x00000001)))
    (or (check-power-of-two-5 x sh1) (check-power-of-two-5 x (bvadd #x00000001 sh1)))))

(assert (not (implies (is-power-of-two x) (check-power-of-two-6 x #x00000000))))
(check-sat)
(pop)

