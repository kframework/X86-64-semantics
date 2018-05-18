; This example illustrates the declaration and
; use of recursive datatypes in Z3.

; List is a builtin datatype defined as in the SMT tutorial at http://www.smtlib.org
(declare-fun l1 () (List Int))
(declare-fun l2 () (List Int))
(declare-fun l3 () (List Int))
(declare-fun x () Int)
(declare-fun y () Int)
(assert (not (= l1 nil)))
(assert (not (= l2 nil)))
(push)
(assert (= (head l1) (head l2)))
(assert (= (tail l1) (tail l2)))
(push)
(assert (not (= l1 l2)))
(check-sat)
(pop)
(check-sat)
(eval l1)
(eval l2)
(pop)
(check-sat)
(eval l1)
(eval l2)

(reset)

;; declare a mutually recursive parametric datatype
(declare-datatypes (T) ((Tree leaf (node (value T) (children TreeList)))
                        (TreeList nil (cons (car Tree) (cdr TreeList)))))

(declare-fun t1 () (Tree Int))
(declare-fun t2 () (Tree Bool))
;; we must use as to distinguish the leaf (Tree Int) from leaf (Tree Bool)
(assert (not (= t1 (as leaf (Tree Int)))))
(assert (> (value t1) 20))
(assert (not (is-leaf t2)))
(assert (not (value t2)))
(check-sat)
(get-model)


