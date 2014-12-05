;; concentrators
(defun very (a)
  (if (null a) nil 
      (let ((fst (car a)))
	 (cons `(,(car fst) ,(expt (cadr fst) 2))
	       (very(cdr a))))))

(defun extremely (a)
  (if (null a) nil 
      (let ((fst (car a)))
	 (cons `(,(car fst) ,(expt (cadr fst) 3))
	       (extremely(cdr a))))))

;; diluters
(defun little (a)
  (if (null a) nil 
      (let ((fst (car a)))
	 (cons `(,(car fst) ,(sqrt (cadr fst)))
	       (little(cdr a))))))

(defun slightly (a)
  (if (null a) nil 
      (let ((fst (car a)))
	 (cons `(,(car fst) ,(expt (cadr fst) (/ 1 3)))
	       (slightly (cdr a))))))

;; the no modifier is exactly like the fuzzy-comp 
;;operator but implemented differently
(defun build-not-list (a)
  (if (null a) nil
      (let ((fst (car a)))
	(cons `(,(car fst) ,(- 1 (cadr fst))) 
	      (build-not-list (cdr a))))))
(defun no (a)
  (if (null a)
      (if (equal *universe* nil)
	  (error "First is necessary to define the universe of discourse with the def-universe function") *universe*)
      (build-not-list a)))


