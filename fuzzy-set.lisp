(defclass fuzzy-set ()
  ((universe :accessor universe
	     :initarg :uni)
   (set :accessor set-value
	:initform '()
	:initarg :set)
   (name :accessor set-name
	 :initarg :name)))

(defun build-universe (set)
  (if (null set) nil
      (cons (caar set) (build-universe (cdr set)))))

 (defmacro instantiate (acess set-value set-name)
	   `(let ((u (build-universe ,set-value)))
	     (defparameter ,acess (make-instance 'fuzzy-set 
						  :name ,set-name
						  :set ,set-value
						  :uni u))))


