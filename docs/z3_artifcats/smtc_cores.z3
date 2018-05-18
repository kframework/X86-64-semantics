; This example illustates extraction
; of unsatisfiable cores (a subset of assertions
; that are mutually unsatisfiable)
(set-option :produce-unsat-cores true)
(declare-fun p () Bool)
(declare-fun q () Bool)
(declare-fun r () Bool)
(declare-fun s () Bool)
; Z3 will only track assertions that are named.
(assert (! (or p q) :named a1))
(assert (! (implies r s) :named a2))
(assert (! (implies s (iff q r)) :named a3))
(assert (! (or r p) :named a4))
(assert (! (or r s) :named a5))
(assert (! (not (and r q)) :named a6))
(assert (! (not (and s p)) :named a7))
(check-sat)
(get-unsat-core)

