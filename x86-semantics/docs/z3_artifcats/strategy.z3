; This example illustrates the use of simple strategies for
; solving/simplifying formulas.

(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun a () Bool)
(declare-fun b () Bool)

(push)
(assert (and (= (+ x y) 1) (or (> x 10) (< y 5))))
; The apply command can be used to preprocess a formula using a given strategy.
; The following strategy just applies the simplifier followed by a simple solver.
; For more information regarding strategies: (help-tactic)
(apply (and-then simplify solve-eqs))
(pop)

(push)
(assert (and 
         (<= 0 x) 
         (<= x 10)
         (<= 0 y) 
         (<= y 5)
         (>= (+ (* 3 x) (* 5 y)) 12)))
; simplify and then convert into a 0-1 problem
(apply (and-then simplify lia2pb))
; simplify, convert into 0-1 problem, and then convert into sat
; Remark: pb2bv expects that the right hand side of all inequalities is just a numeral.
; We accomplish that by prodiving the parameter :arith-lhs to the simplifier.
(apply (and-then simplify lia2pb (using-params simplify :arith-lhs true) pb2bv))
; We can use the following strategy to solve the problem
(set-option :produce-models true)
(check-sat-using (and-then simplify lia2pb (using-params simplify :arith-lhs true) pb2bv bit-blast sat))

(help-tactic)
(exit)
