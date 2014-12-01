;;; example of how to use the operator
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
			    
(defun fuzzy-comp(a)
  (cond ((null a) a)
	(t (setq new '())
	   (dolist (e a (reverse new))
	     (setq rev (- 1 (cadr e)))
	     (setq new (cons (list (car e) rev) new))))))
		   	     
	   

		   
		   
		   
	   
	   
		 
	
  
  
