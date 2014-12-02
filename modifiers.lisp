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
