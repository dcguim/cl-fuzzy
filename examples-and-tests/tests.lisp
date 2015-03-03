;; tests basic operators
(deftest test-basic-operators ()
    (let ((a '((0 1/10)(1 2/10)(2 4/10)(3 5/10)(4 8/10)))
	  (u '((0 1)(1 1)(2 1)(3 1)(4 1))))
      (check
;;;(A')' = A
	(equal (fuzzy-comp (fuzzy-comp a)) a)
	
;;;(A^A) = A
	(equal (fuzzy-intersect a a) a)
	   
;;;(AvA) = A
	(equal (fuzzy-union a a) a)

;;;(A^0) = 0
	(equal (fuzzy-intersect a ()) ())

;;;(Av0) = A
	(equal (fuzzy-union a '()) a) 

;;;(A^U) = A
	(equal (fuzzy-intersect a u) a)

;;;(AvU) = U
	(equal (fuzzy-union a u) u)
	   
;;;(A^A') != 0
	(not (equal (fuzzy-intersect a (fuzzy-comp a)) ()))

;;;(AvA') != U
	(not (equal (fuzzy-union a (fuzzy-comp a)) u)))))
