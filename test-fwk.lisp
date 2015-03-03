(defvar *test-name* nil)
 
(defun report-result (result form)
  (format t "~:[FAIL~;pass~] ... ~a: ~a~%" result *test-name* form)
  result)

(defmacro check (&body forms)
  `(combine-results
    ,@(loop for f in forms collect `(report-result ,f ',f))))

(defmacro with-gensyms ((&rest names) &body body)
  `(let ,(loop for n in names collect `(,n (gensym)))
     ,@body))

(defmacro combine-results (&body forms)
  (with-gensyms (result)
    `(let ((,result t))
      ,@(loop for f in forms collect `(unless ,f (setf ,result nil)))
      ,result)))

(defmacro deftest (name parameters &body body)
	   `(defun ,name ,parameters
	      (let ((*test-name* (append *test-name* (list ',name))))
	      ,@body)))

(deftest test-+ ()
  (check
    (= (+ 1 2) 3)
    (= (+ 1 2 3) 5)
    (= (+ -1 -3) -4)))

(deftest test-* ()
  (check
    (= (* 1 2) 2)
    (= (* 1 2 3) 6)
    (= (* -1 -3) 3)))

(deftest test-arithmetic ()
  (combine-results
    (test-+)
    (test-*)))
