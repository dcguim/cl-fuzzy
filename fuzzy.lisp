;;; variable that represent the universe of discourse
(defparameter *universe* nil)

(defclass fuzzy-set ()
  ((universe :accessor universe
	     :initarg :uni)
   (set :accessor set-value
	:initform '()
	:initarg :set)
   (name :accessor set-name
	 :initarg :name)))

(defmacro make-set (acess set-value set-name)
    `(defparameter ,acess (make-instance 'fuzzy-set 
					 :name ,set-name
					 :set ,set-value)))

(defun fuzzy-intersect (a b)
	   (cond ((or (null a) (null b)) nil)
		 (t (setq new `())
		    (dolist (ea a (reverse new))
		      (dolist (eb b (reverse new))
			(if (equal (car ea) (car eb))
			    (if (< (cadr ea) (cadr eb))
				(setq new (cons ea new))
				(setq new (cons eb new)))
			    nil))))))

(defun fuzzy-union (a b)
  (cond ((null a)b) ((null b)a)
	(t (setq new (reverse a))
	   (dolist (eb b (reverse new))
	     (setq done 1)
	     (dolist (ea a (reverse new)) 
	       (cond ((equal (car ea) (car eb))
		      (setq done 0)
		      (cond ((> (cadr eb) (cadr ea))
			     (setq new (remove ea new))
			     (setq new (cons eb new)))
			    (t nil)))
		      (t nil)))
	     (if (= done 1) (setq new (cons eb new)))nil))))
			    
(defun fuzzy-comp (a)
  (if (null a)
      (if (equal *universe* nil)
	  (error "First is necessary to define the universe of discourse with the def-universe function") *universe*)
      (let ((new '()) (rev nil))
	(dolist (e a (reverse new))
	  (setq rev (- 1 (cadr e)))
	  (setq new (cons (list (car e) rev) new))))))

(defun fuzzy-height (a)
  (cond ((null a) 0)
	(t (setq h 0)
	   (dolist (e a val)
	     (setq val (cadr e))
	     (if (> val h)
		 (setq h val)))
	   (return-from fuzzy-height h))))

(defun normalized (a)
  (cond ((null a) t)
	(t (setq norm-h nil)
	   (setq neg-num nil)
	   (if (equal (fuzzy-height a) 1) 
	       (setq norm-h t))
	   (dolist (e a)
	     (if (< (cadr e) 0)
		 (setq neg-num t))
	     (if (and (equal neg-num nil) (equal norm-h t))
		 t nil)))))

(defun a-cut (c a &optional (strong nil))
  (cond ((null a) a)
	(t (setq new a)
	   (dolist (e a new)
	     (if (equal strong t)
		 (if (> (cadr e) c) t (setq new (remove e new)))
		 (if (< (cadr e) c) (setq new (remove e new))))))))

(defun build-universe(start end)
	   (if (equal start (+ end 1)) nil
	       (if (> start end) nil
		   (cons `(,start 1) (build-universe (+ start 1) end)))))

(defun def-universe (start end)
	   (setq *universe* (build-universe start end)))


	       
	       
	      
	 

	   
	     
	
	     
	   

		   
		   
		   
	   
	   
		 
	
  
  
