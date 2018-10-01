(set-option :auto-config false)
(set-option :smt.mbqi false)

; int extra
(define-fun int_max ((x Int) (y Int)) Int (ite (< x y) y x))
(define-fun int_min ((x Int) (y Int)) Int (ite (< x y) x y))
(define-fun int_abs ((x Int)) Int (ite (< x 0) (- 0 x) x))

; bool to int
(define-fun smt_bool2int ((b Bool)) Int (ite b 1 0))

(declare-fun mi32 (Int Int) (_ BitVec 32))
(declare-fun mi33 (Int Int) (_ BitVec 33))
(declare-fun mi64 (Int Int) (_ BitVec 64))
(declare-fun mi65 (Int Int) (_ BitVec 65))

; set axioms
(declare-sort IntSet)

(declare-fun smt_set_cup (IntSet IntSet) IntSet)
(declare-fun smt_set_ele (Int) IntSet)
(declare-fun smt_set_emp () IntSet)
(declare-fun smt_set_mem (Int IntSet) Bool)

(declare-fun smt_set_lt ((IntSet) (IntSet)) Bool)
(declare-fun smt_set_le ((IntSet) (IntSet)) Bool)

; sequence axioms
(declare-sort IntSeq)

(declare-fun smt_seq_concat (IntSeq IntSeq) IntSeq)
(declare-fun smt_seq_elem (Int) IntSeq)
(declare-fun smt_seq_nil () IntSeq)
(declare-fun smt_seq_len (IntSeq) Int)

(declare-fun smt_seq_sum (IntSeq) Int)
(declare-fun smt_seq2set (IntSeq) IntSet)
(declare-fun smt_seq_sorted (IntSeq) Bool)

(declare-fun smt_seq_filter (Int IntSeq) IntSeq)
(declare-fun |_885| () Int)
(declare-fun |_886| () Int)
(declare-fun |_887| () Int)
(assert (and (and (= (>= |_886| 0) true)
 (= (< (- |_885| 1) 255) true)
 (= (>= |_885| 0) true)
 (= (< |_887| 255) true)
 (= (< |_885| 255) true)
 (= (= 0 |_885|) false)
 (= (>= (+ |_886| (div (* |_885| (+ |_885| 1)) 2)) 0) true)
 (= (< (+ |_886| (div (* |_885| (+ |_885| 1)) 2)) 255) true)
 (= (>= |_887| 0) true)
 (= (< (+ |_885| |_886|) 255) true)
 (= (< (+ (+ |_885| |_886|) (div (* (- |_885| 1) (+ (- |_885| 1) 1)) 2)) 255) true)
 (= (>= (- |_885| 1) 0) true)
 (= (>= (+ |_885| |_886|) 0) true)
 (= (< |_886| 255) true)
 (= (>= (+ (+ |_885| |_886|) (div (* (- |_885| 1) (+ (- |_885| 1) 1)) 2)) 0) true)
) (not (and (= (+ (+ |_885| |_886|) (div (* (- |_885| 1) (+ (- |_885| 1) 1)) 2)) (+ |_886| (div (* |_885| (+ |_885| 1)) 2)))
 (= (mi32 32 (+ (+ |_885| |_886|) (div (* (- |_885| 1) (+ (- |_885| 1) 1)) 2))) (mi32 32 (+ |_886| (div (* |_885| (+ |_885| 1)) 2))))
))))
