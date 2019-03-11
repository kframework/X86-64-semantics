(declare-const a Int)
(declare-const b Int)
(declare-const c (_ BitVec 32))
(declare-const d (_ BitVec 32))

(push)
(assert (= b (bv2int c)))
(check-sat)
(get-model)
(pop)

(push)
(assert (= c ((_ int2bv 32) (bv2int d)) ))
(check-sat)
(get-model)
(pop)

